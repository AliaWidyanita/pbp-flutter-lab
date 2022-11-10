# **Tugas 5: Elemen Dasar Flutter**

**Nama   : Alia Widyanita Puspaningrum**

**NPM    : 2106751625**

**Kelas  : B**

#

## Stateless Widget dan Stateful Widget

**_Stateless widget_** adalah widget yang bersifat statis atau tidak dapat diubah setelah widget tersebut dibuat. Widget yang bersifat statis atau _immutable_ ini tidak akan mengubah _state_ dari aplikasi walaupun terdapat perubahan dalam variabel, ikons, tombol, maupun pengambilan data. Widget tersebut akan selalu sama mulai dari dibuat hingga aplikasi dijalankan.

**_Stateful widget_** adalah widget yang bersifat dinamis atau dapat diubah setelah widget tersebut dibuat. _State_ dari aplikasi ini dapat berubah dan dapat diubah beberapa kali. Hal ini berarti _state_ dari aplikasi dapat berubah berkali-kali dengan adanya perubahan pada variabel, input, atau data yang berbeda.

## Widget yang Dipakai dan Fungsinya

**MaterialApp** : Inisiasi title, theme, dan mengatur home dari aplikasi
**Scaffold** : Mengatur layout dari widget yang ada di dalamnya
**AppBar** : Menapilkan bar aplikasi yang berisi title
**Visibility** : Menampilkan atau menyembunyikan sebuah widget
**Container** : Menampung beberapa widget di dalamnya
**Text** : Menampilkan sebuah teks dengan properti di dalamnya
**Center** : Mengatur layout widget agar posisinya di tengah
**Column** : Mengatur layout widget secara vertikal
**Row** : Mengatur layout widget secara horizontal
**FloatingActionButton** : Membuat tombol yang dapat dimodifikasi event di dalamnya
**Icon** : Menampilkan icon yang diinginkan

## Fungsi setState()

Pada program ini, fungsi `setState()` mempengaruhi variabel counter. Jika tombol **+** ditekan, fungsi `setState()` akan dipanggil untuk memberitahu bahwa terjadi perubahan pada _state_ sehingga method `_incrementCounter` akan dijalankan lagi. Jika tombol **-** ditekan, fungsi `setState()` juga akan dipanggil untuk memberitahu bahwa terjadi perubahan pada _state_ sehingga method `_decrementCounter` akan dijalankan lagi.

Oleh karena itu, `setState()` hanya dipanggil saat state dari widget berubah, yaitu pada stateful widget. Fungsi `setState()` adalah cara Flutter untuk membangun kembali widget saat ini dengan perubahannya. Selama pembangunan kembali, nilai variabel terbaru akan digunakan untuk membuat antarmuka pengguna.

## Perbedaan const dengan final

**Const** digunakan untuk deklarasi variabel _immutable_ yang nilainya bersifat konstan dan harus sudah diketahui pada saat waktu kompilasi. Nilai dari variabel tersebut harus sudah di berikan secara langsung. 

**Final** berarti _single-assignment_. Sebuah variabel final perlu diinisiasi terlebih dahulu. Setelah inisiasi tersebut diberi nilai, nilai variabel tidak dapat diubah.

## Implementasi Checklist

