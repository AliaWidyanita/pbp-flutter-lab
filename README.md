# **Tugas 7: Elemen Dasar Flutter**

**Nama   : Alia Widyanita Puspaningrum**

**NPM    : 2106751625**

**Kelas  : B**

#

# **counter_7**

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

1. Masuk ke folder yang diinginkan, lalu menjalankan perintah `flutter create counter_7` di terminal.
2. Mengubah _title_ menjadi `title: 'Program Counter'`pada class `MyHomePage` di inisiasi home.
3. Dikarenakan method `incrementCounter` untuk menambahkan angka sebanyak satu satuan sudah ada, maka tidak perlu menambahkan atau mengubah method tersebut lagi.
4. Membuat method bernama `decrementCounter` untuk mengurangi angka sebanyak satu satuan. Apabila tombol - ditekan, maka fungsi `setState` akan dipanggil seperti method `incrementCounter`.
5. Apabila hasil modulo counter dengan 2 tidak sama dengan nol atau angka tersebut ganjil, maka akan menampilkan teks "GANJIL" bewarna biru pada program.
6. Apabila hasil modulo counter dengan 2 sama dengan nol atau angka tersebut genap, maka akan menampilkan teks "GENAP" bewarna merah.
7. Dikarena hasil modulo 0 dengan 2 adalah 0, teks yang akan ditampilkan adalah "GENAP".
8. Apabila nilai counter adalah 0, maka tombol yang ditampilkan hanya tombol + dan menghilangkan tombol - dengan menggunakan widget _visibility_. Namun, jika counter tidak sama dengan 0 maka kedua tombol + dan tombol - akan ditampilkan.

#

# **Tugas 8: Flutter Form**

# **Tambah Budget & Data Budget**

## Perbedaan `Navigator.push` dan `Navigator.pushReplacement`

`Navigator.push` menambahkan satu halaman ke _stack navigator_, sedangkan `Navigator.pushReplacement` mengubah halaman ke halaman yang dituju oleh _button_.

## Widget yang Dipakai dan Fungsinya

**Drawers** : Bekerja sebagai _navigator_

**Scaffold** : Menampung beberapa material di dalamnya

**Container** : Menampung beberapa widget di dalamnya

**Card** : Mengatur _layout_ dari widget

**Drop Down** : Merupakan widget untuk memilih tipe budget seperti sebuah _list_

## Jenis _event_ yang ada pada Flutter

**onPressed** : Bekerja saat button di tekan
**onChanged** : Bekerja saat field input diubah
**onSaved** : Bekerja saat form di simpan
**onLongPress** : Bekerja saat button di tekan lama

## Cara kerja `Navigator` dalam "mengganti" halaman

The navigator changed the page by change the order of the page stack by pushing the new page to the top. returning to the pervious page happens by popping the stack

## Implementasi Checklist

1. Membuah drawer menu untuk halaman counter, halaman form tambah budget, dan halaman tampilan data budget pada file main dan menambahkannya ke file-file lain.
2. Membuat file models untuk menyimpan data dalam sebuah list dan class budget untuk menunjukkan bagaimana daftar harus diformat.
3. Membuat field input dan field drop down pada halaman form tambah budget serta button untuk menyimpan input user tersebut dan menambahkannya ke dalam list.
4. Membuat halaman tampilan data budget yang menampilkan semua data dengan memetakan data dalam list budget ke dalam widget _card_.