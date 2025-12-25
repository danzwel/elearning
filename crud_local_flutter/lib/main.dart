import 'package:flutter/material.dart';
import 'db.dart';
import 'model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NotePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class NotePage extends StatefulWidget {
  const NotePage({super.key});

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  final DBHelper dbHelper = DBHelper();
  final titleController = TextEditingController();
  final descController = TextEditingController();

  List<Note> notes = [];

  void loadNotes() async {
    final data = await dbHelper.getNotes();
    setState(() => notes = data);
  }

  @override
  void initState() {
    super.initState();
    loadNotes();
  }

  void saveNote() async {
    await dbHelper.insertNote(
      Note(title: titleController.text, description: descController.text),
    );
    titleController.clear();
    descController.clear();
    loadNotes();
  }

  void deleteNote(int id) async {
    await dbHelper.deleteNote(id);
    loadNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CRUD Local Flutter')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Judul'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              controller: descController,
              decoration: const InputDecoration(labelText: 'Deskripsi'),
            ),
          ),
          ElevatedButton(
            onPressed: saveNote,
            child: const Text('Simpan'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(notes[index].title),
                  subtitle: Text(notes[index].description),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => deleteNote(notes[index].id!),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
