import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../services/firestore_service.dart';

class CrudCloudPage extends StatefulWidget {
  const CrudCloudPage({super.key});

  @override
  State<CrudCloudPage> createState() => _CrudCloudPageState();
}

class _CrudCloudPageState extends State<CrudCloudPage> {
  final FirestoreService firestoreService = FirestoreService();
  final TextEditingController controller = TextEditingController();

  String? selectedId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CRUD Cloud Firestore')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: 'Nama',
                border: OutlineInputBorder(),
              ),
            ),
          ),

          /// TOMBOL TAMBAH & UPDATE
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  firestoreService.addUser(controller.text);
                  controller.clear();
                },
                child: const Text('Tambah'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: selectedId == null
                    ? null
                    : () {
                        firestoreService.updateUser(
                            selectedId!, controller.text);
                        controller.clear();
                        selectedId = null;
                        setState(() {});
                      },
                child: const Text('Update'),
              ),
            ],
          ),

          /// LIST DATA
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: firestoreService.getUsers(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                      child: CircularProgressIndicator());
                }

                final docs = snapshot.data!.docs;

                return ListView.builder(
                  itemCount: docs.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(docs[index]['name']),
                      onTap: () {
                        controller.text = docs[index]['name'];
                        selectedId = docs[index].id;
                        setState(() {});
                      },
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () =>
                            firestoreService.deleteUser(docs[index].id),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
