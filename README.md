## Demo Aplikasi
[Klik di sini untuk melihat video demo aplikasi yang cloud](https://drive.google.com/file/d/18v9B50HeIuhEyMQb4PFwo2cfFFxzw5qG/view?usp=drive_link)

# CRUD Local & Cloud Flutter

## Deskripsi
Aplikasi mobile berbasis **Flutter** yang menerapkan konsep **CRUD (Create, Read, Update, Delete)** dengan dua jenis penyimpanan data, yaitu **Local Storage** dan **Cloud Storage (Firebase Firestore)**.

Aplikasi ini dibuat untuk memenuhi tugas **Pemrograman Mobile**.

---

## Fitur Aplikasi

### 🔹 CRUD Local
- Create data secara lokal
- Read data lokal
- Update data lokal
- Delete data lokal
- Data tersimpan di **internal storage perangkat**
- Dapat digunakan **tanpa koneksi internet**

### 🔹 CRUD Cloud (Firebase Firestore)
- Create data ke Firestore
- Read data secara real-time
- Update data
- Delete data
- Sinkronisasi data otomatis dengan cloud
- Data tersimpan secara online dan dapat dilihat di Firebase Console

---

## Teknologi yang Digunakan
- Flutter
- Dart
- Firebase Core
- Cloud Firestore
- Local Storage (SharedPreferences / SQLite)

---

## Struktur Folder Aplikasi
lib/
│
├── main.dart
├── firebase_options.dart
│
├── pages/
│ ├── crud_local_page.dart
│ └── crud_cloud_page.dart
│
└── services/
├── local_service.dart
└── firestore_service.dart

yaml
Salin kode

---

## Penyimpanan Data
- **Local Storage**  
  Data disimpan di internal storage aplikasi pada perangkat pengguna dan tidak dapat dilihat di Firebase atau browser.

- **Cloud Storage (Firestore)**  
  Data disimpan di server Firebase dan dapat diakses melalui Firebase Console secara real-time.

---

## Konfigurasi Firebase
- Integrasi Firebase menggunakan **FlutterFire CLI**
- Database menggunakan **Cloud Firestore**
- Mode Firestore: **Test Mode**
- Platform: Android

---

## Cara Menjalankan Aplikasi
1. Pastikan Flutter sudah terinstall
2. Masuk ke folder project
3. Jalankan perintah berikut:
```bash
flutter pub get
flutter run
```

## Kesimpulan

Aplikasi ini berhasil mengimplementasikan CRUD Local dan CRUD Cloud menggunakan Flutter. Data lokal disimpan di perangkat pengguna, sedangkan data cloud disimpan dan disinkronkan secara real-time menggunakan Firebase Firestore.
