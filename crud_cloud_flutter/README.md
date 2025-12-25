project:
  name: CRUD Cloud Flutter
  description: >
    Aplikasi mobile berbasis Flutter yang menerapkan konsep
    CRUD (Create, Read, Update, Delete) menggunakan Cloud Firestore
    sebagai database cloud (online). Aplikasi ini dibuat untuk memenuhi
    tugas mata kuliah Pemrograman Mobile.

features:
  - Create data ke Firestore
  - Read data secara real-time
  - Update data
  - Delete data
  - Sinkronisasi data otomatis dengan cloud
  - Data tersimpan secara online

technology:
  framework: Flutter
  language: Dart
  backend:
    - Firebase Core
    - Cloud Firestore

folder_structure:
  lib:
    - main.dart
    - firebase_options.dart
    - pages:
        - crud_cloud_page.dart
    - services:
        - firestore_service.dart

firebase_configuration:
  integration: FlutterFire CLI
  database: Cloud Firestore
  mode: Test Mode
  platform: Android

how_to_run:
  steps:
    - Pastikan Flutter sudah terinstall
    - Masuk ke folder project
    - Jalankan perintah berikut:
        - flutter pub get
        - flutter run

how_to_use:
  steps:
    - Masukkan nama pada input field
    - Tekan tombol Tambah untuk menyimpan data
    - Tap data untuk mengedit
    - Tekan tombol Update untuk memperbarui data
    - Tekan ikon Hapus untuk menghapus data
    - Data akan otomatis tersinkronisasi ke Firebase

screenshots:
  required:
    - Tampilan aplikasi CRUD Cloud
    - Data pada Firebase Firestore Console

conclusion: >
  Aplikasi ini berhasil mengimplementasikan CRUD berbasis cloud
  menggunakan Firebase Firestore dengan Flutter, mendukung
  real-time data dan struktur kode yang rapi.

identity:
  name: Daniel Desmanto Nugraha
  course: Pemrograman Mobile
  platform: Flutter
