# ecomm

<details>
<summary> <h1> Tugas 2 </h1> </summary>

# Pertanyaan 1
 
## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

_Stateless widget_ adalah tipe widget yang statik, _stateless widget_ tidak akan bisa di ganti atributnya jika sudah di _build_. _Stateful widget_ adalah tipe widget yang _mutable_ dan interaktif.

# Pertanyaan 2

## Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

Saya menggunakan `MaterialApp` sebagai container utama, `Scaffold` untuk _layout_, `Column` untuk menata dalam bentuk kolom, `SnackBar` untuk menunjukkan _pop up_ saat tombol di-klik, `AppBar` untuk menunjukkan teks di bagian atas _viewport_, `Text` untuk menunjukkan teks, `ElevatedButton` untuk menyediakan tombol, dan `Center` untuk menengahkan widget lainnya.

# Pertanyaan 3

## Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

`setState()` digunakan untuk mengubah state pada suatu `StatefulWidget`. Variabel yang ada dalam `StatefulWidget` tersebut dapat dimanipulasi oleh `setState()`.

# Pertanyaan 4

## Jelaskan perbedaan antara const dengan final.

`const` dan `final` dua-duanya merupakan _prefix_ yang membuat suatu elemen menjadi _immutable_. Bedanya adalah `const` ditetapkan saat _compile time_ sedangkan `final` ditetapkan saat _runtime_. 

# Pertanyaan 5

## Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.