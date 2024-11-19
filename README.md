# ecomm

<details>
<summary> <h1> Tugas 7 </h1> </summary>

# Pertanyaan 1

### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

_Stateless widget_ adalah tipe widget yang statik, _stateless widget_ tidak akan bisa di ganti atributnya jika sudah di _build_. _Stateful widget_ adalah tipe widget yang _mutable_ dan interaktif.

# Pertanyaan 2

### Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

Saya menggunakan `MaterialApp` sebagai container utama, `Scaffold` untuk _layout_, `Column` untuk menata dalam bentuk kolom, `SnackBar` untuk menunjukkan _pop up_ saat tombol di-klik, `AppBar` untuk menunjukkan teks di bagian atas _viewport_, `Text` untuk menunjukkan teks, `ElevatedButton` untuk menyediakan tombol, dan `Center` untuk menengahkan widget lainnya.

# Pertanyaan 3

### Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

`setState()` digunakan untuk mengubah state pada suatu `StatefulWidget`. Variabel yang ada dalam `StatefulWidget` tersebut dapat dimanipulasi oleh `setState()`.

# Pertanyaan 4

### Jelaskan perbedaan antara const dengan final.

`const` dan `final` dua-duanya merupakan _prefix_ yang membuat suatu elemen menjadi _immutable_. Bedanya adalah `const` ditetapkan saat _compile time_ sedangkan `final` ditetapkan saat _runtime_.

# Pertanyaan 5

### Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

### Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya.

Dengan menggunakan `flutter create` dan `flutter run`.

### Membuat tiga tombol sederhana dengan ikon dan teks

Menggunakan `ElevatedButton.icon` untuk membuat tombol dan teks sekaligus.

### Mengimplementasikan warna-warna yang berbeda untuk setiap tombol

Pada widget `ElevatedButton`, mengubah atribut `backgroundColor` untuk setiap tombol berbeda.

### Memunculkan Snackbar dengan tulisan

Dengan menggunakan kombinasi widget `ScaffoldMessenger` dan `SnackBar` dimana `ScaffoldMessenger` memanggil `ShowSnackBar` untuk memunculkan teks.

</details>

<details>
<summary> <h1> Tugas 8 </h1> </summary>

# Pertanyaan 1

### Apa kegunaan `const` di Flutter? Jelaskan apa keuntungan ketika menggunakan `const` pada kode Flutter. Kapan sebaiknya kita menggunakan `const`, dan kapan sebaiknya tidak digunakan?

`const` membuat suatu variabel menjadi tidak bisa diubah valuenya. `const` sebaiknya digunakan pada objek yang valuenya tidak akan berubah selama aplikasi berjalan, sebaliknya const jangan digunakan yang valuenya akan berubah saat aplikasi berjalan.

# Pertanyaan 2

### Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

`column` adalah widget yang mengatur tataan widget lain secara vertikal, sedangkan `row` mengatur tataan widget lain secara horizontal.

### Column

```dart
 body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text()
          ]
        )
```

### Row

```dart
body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text()
            ]
          )

```

`mainAxisAlignment` mengatur tataan pada sumbu utama elemen (`row` secara horizontal, `column` secara vertikal), sedangkan `crossAxisAlignment` mengatur sumbu yang tegak lurus dengan sumbu utama.

# Pertanyaan 3

### Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

Saya menggunakan `TextFormField` untuk mengambil input atribut item pada `nameController`, `amountController`, dan `descriptionController`. Untuk elemen input lain yang saya tidak gunakan ada `Checkbox`, `Radio`, `Switch`, `Slider`, `DropdownButton`, `DatePicker`, dan `TimePicker`.

# Pertanyaan 4

### Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Untuk mengatur tema dalam aplikasi Flutter agar konsisten, Saya menggunakan properti `theme` pada MaterialApp.

### Cuplikan kode

```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blue,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: MainPage(),
    );
  }
}
```

Disini, widget `MaterialApp` mengatur elemen `theme` yang mengatur tema untuk `primarySwatch` dan `button`

# Pertanyaan 5

### Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

Untuk menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter, saya menggunakan widget `Navigator` dan `MaterialPageRoute`. `Navigator` adalah widget yang mengelola tumpukan halaman supaya kita bisa maju dan mundur lewat berbagai halaman.

</details>

<details>
<summary> <h1> Tugas 9 </h1> </summary>

# Pertanyaan 1

### Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?



# Pertanyaan 2

### Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini



# Pertanyaan 3

### Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.



# Pertanyaan 4

### Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.



# Pertanyaan 5

### Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.



# Pertanyaan 6 

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
