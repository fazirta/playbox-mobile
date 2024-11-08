# playbox

PlayBox is a Flutter e-commerce app for gaming gear and accessories. It offers a user-friendly interface for browsing and purchasing gaming products, with a focus on delivering an engaging shopping experience.

## Tugas 7 PBP Gasal 2024/2025

### Jelaskan apa yang dimaksud dengan *stateless widget* dan *stateful widget*, dan jelaskan perbedaan dari keduanya.

Stateless Widget adalah widget yang tidak memiliki status yang dapat berubah, sehingga tampilannya tetap sama sepanjang siklus hidupnya. Contoh dari widget ini termasuk teks atau ikon yang tidak memerlukan pembaruan. Di sisi lain, Stateful Widget adalah widget yang memiliki status yang dapat berubah, memungkinkan tampilan untuk diperbarui ketika statusnya berubah. Contoh penggunaan Stateful Widget meliputi tombol yang mengubah warna atau form input yang berinteraksi dengan pengguna.

Perbedaan utama antara Stateless Widget dan Stateful Widget terletak pada pengelolaan status. Stateless Widget tidak memiliki status yang berubah, sehingga tampilannya konsisten dan lebih cocok untuk elemen statis. Sebaliknya, Stateful Widget memiliki status yang dapat diubah, yang memungkinkan tampilan untuk menyesuaikan diri dengan interaksi pengguna atau perubahan data. Selain itu, Stateful Widget mengelola siklus hidupnya melalui berbagai metode, seperti initState() dan setState(), menjadikannya pilihan yang ideal untuk elemen-elemen interaktif.

### Sebutkan *widget* apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

Dalam proyek ini, terdapat beberapa widget yang digunakan, masing-masing memiliki fungsinya sendiri. Berikut adalah daftar widget yang digunakan beserta penjelasannya:

1. **MaterialApp**: Digunakan untuk mengatur tema, judul, dan widget home dari aplikasi.

2. **Scaffold**: Tempat untuk mengatur elemen-elemen UI dasar.

3. **AppBar**: Digunakan untuk menampilkan judul aplikasi dan mengatur warna latar belakang sesuai tema yang telah ditentukan.

4. **Padding**: Digunakan untuk memberikan jarak di sesayar konten di dalam body.

5. **Column**: Digunakan untuk mengatur layout dari elemen-elemen di dalam body.

6. **Center**: Digunakan untuk menempatkan GridView di tengah layar.

7. **GridView**: Digunakan untuk menampilkan daftar item dalam bentuk kolom dan baris.

8. **Card**: Digunakan dalam ItemCard untuk menampilkan setiap item dengan tampilan yang menarik.

9. **InkWell**: Digunakan untuk menanggapi interaksi pengguna pada ItemCard.

10. **Container**: Digunakan untuk memberikan padding dan mengatur tampilan.

11. **Text**: Digunakan untuk menampilkan teks di berbagai tempat, termasuk judul di AppBar, isi dalam InfoCard, dan label dalam ItemCard.

12. **Icon**: Digunakan dalam ItemCard untuk menunjukkan ikon terkait dengan setiap item.

13. **SnackBar**: Digunakan untuk memberikan umpan balik kepada pengguna saat menekan item di grid.

### Apa fungsi dari `setState()?` Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

Fungsi `setState()` dalam Flutter digunakan untuk memberi tahu framework bahwa ada perubahan pada status (state) widget yang perlu diperbarui, yang akan mengakibatkan pemanggilan ulang metode `build()` dari widget tersebut. Dengan memanggil `setState()`, variabel status yang dideklarasikan dalam kelas `State` dari Stateful Widget akan terpengaruh, sehingga setiap perubahan pada nilai variabel ini akan tercermin dalam tampilan antarmuka pengguna. Selain itu, semua widget yang bergantung pada variabel status tersebut, termasuk widget anak, juga akan dirender ulang, memastikan bahwa UI selalu mencerminkan data terbaru. Misalnya, saat Anda memperbarui sebuah variabel yang menghitung jumlah klik pada tombol dan memanggil `setState()`, tampilan jumlah klik akan diperbarui secara otomatis.

### Jelaskan perbedaan antara `const` dengan `final`.

Perbedaan antara `const` dan `final` di Dart terletak pada cara penentuan dan sifat mutabilitas nilainya. `const` digunakan untuk mendeklarasikan nilai yang benar-benar konstan dan tidak dapat diubah. Variabel yang dideklarasikan dengan `const` harus diinisialisasi dengan nilai yang diketahui pada saat kompilasi, sehingga nilainya bersifat immutable. Ini berarti Anda tidak dapat mengubah nilai `const` setelah ditetapkan, menjadikannya ideal untuk nilai yang selalu sama, seperti angka atau string yang tidak berubah.

Di sisi lain, `final` memungkinkan Anda untuk mendeklarasikan variabel yang nilainya hanya dapat diatur sekali, tetapi nilainya dapat ditentukan pada waktu runtime. Variabel `final` dapat diinisialisasi dengan nilai yang dihasilkan dari ekspresi atau fungsi yang dieksekusi saat program berjalan. Setelah nilai ditetapkan, variabel `final` tidak dapat diubah, tetapi Anda dapat menggunakan hasil dari proses yang lebih dinamis. Dengan demikian, `const` lebih cocok untuk nilai statis, sementara `final` lebih fleksibel untuk nilai yang hanya perlu diatur sekali tetapi dapat dihasilkan secara dinamis.

### Implementasi Checklist Tugas Secara Step-by-Step

#### 1. Membuat Proyek Flutter Baru

Untuk memulai proyek, saya membuat aplikasi Flutter baru dengan nama `playbox` melalui terminal:

```bash
flutter create playbox
```

#### 2. Membuat Tiga Tombol Sederhana dengan Ikon dan Teks
Berikut adalah contoh kode untuk membuat daftar tombol dengan ikon dan teks yang sesuai:

```dart
final List<ItemHomepage> items = [
  ItemHomepage("Lihat Daftar Produk", Icons.inventory_2_outlined, Theme.of(context).colorScheme.primary),
  ItemHomepage("Tambah Produk", Icons.add, Theme.of(context).colorScheme.secondary),
  ItemHomepage("Logout", Icons.logout, Theme.of(context).colorScheme.tertiary),
];
```

#### 3. Mengatur Warna untuk Setiap Tombol
Setiap tombol diberi warna berbeda sesuai dengan tema yang ditentukan:

```dart
class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color;

  ItemHomepage(this.name, this.icon, this.color);
}
```

Pada widget **ItemCard**, saya menggunakan warna yang ditentukan sebelumnya:

```dart
color: item.color,
```

#### 4. Menampilkan **SnackBar** untuk Umpan Balik Pengguna
Untuk memberi tahu pengguna saat mereka menekan tombol, saya dapat menggunakan **SnackBar**:

```dart
() {
  ScaffoldMessenger.of(context)
  ..hideCurrentSnackBar()
  ..showSnackBar(SnackBar(
    content: Text("Kamu telah menekan tombol ${item.name}!"),
  ));
}
```

## Tugas 8 PBP Gasal 2024/2025

### Apa kegunaan `const` di Flutter? Jelaskan apa keuntungan ketika menggunakan `const` pada kode Flutter. Kapan sebaiknya kita menggunakan `const`, dan kapan sebaiknya tidak digunakan?

`const` digunakan di Flutter untuk mendeklarasikan objek atau widget yang bersifat konstan, yaitu tidak berubah selama aplikasi berjalan. Keuntungan menggunakan `const` adalah meningkatkan performa aplikasi karena widget tersebut hanya dibuat sekali dan tidak akan di-rebuild, sehingga menghemat memori. `const` sebaiknya digunakan pada widget yang tidak bergantung pada perubahan data atau status, seperti widget statis (misalnya `Text` atau `Icon`). Sebaliknya, widget yang memiliki data dinamis atau bergantung pada interaksi pengguna, seperti `TextField`, tidak perlu diberi `const`.

### Jelaskan dan bandingkan penggunaan *Column* dan *Row* pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

`Column` dan `Row` adalah widget layout di Flutter yang digunakan untuk menyusun elemen. `Column` digunakan untuk menyusun elemen secara vertikal, sementara `Row` digunakan untuk menyusun elemen secara horizontal. Kedua widget ini memiliki properti `children` yang berisi daftar widget yang akan diatur sesuai arah yang diinginkan.

#### Contoh implementasi `Column`:
```dart
Column(
  children: [
    Text('Item 1'),
    Text('Item 2'),
    Text('Item 3'),
  ],
)
```

#### Contoh implementasi `Row`:
```dart
Row(
  children: [
    Icon(Icons.home),
    Icon(Icons.settings),
    Icon(Icons.search),
  ],
)
```

### Sebutkan apa saja elemen input yang kamu gunakan pada halaman *form* yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

Pada halaman form yang saya buat, saya menggunakan beberapa elemen input utama berupa `TextFormField` untuk menerima input teks, yaitu untuk nama produk, harga, deskripsi, stok, dan URL gambar. Setiap `TextFormField` telah dilengkapi dengan validasi input, seperti memastikan bahwa nilai tidak kosong, tipe data sesuai, dan panjang string yang tidak melebihi batas yang ditentukan. Selain itu, saya juga menggunakan `ElevatedButton` untuk tombol "Save" yang akan memvalidasi form dan menampilkan hasil input dalam sebuah dialog. 

Elemen input Flutter lain yang tidak saya gunakan pada tugas ini adalah `Checkbox`, `Radio`, `Switch`, dan `DatePicker`. Misalnya, `Checkbox` digunakan untuk memilih opsi boolean (ya/tidak), `Radio` untuk memilih satu opsi dari beberapa pilihan, `Switch` untuk memilih antara dua kondisi (seperti aktif/nonaktif), dan `DatePicker` untuk memilih tanggal. Setiap elemen input ini digunakan untuk kebutuhan spesifik yang tidak diperlukan dalam form ini, karena form saya lebih fokus pada input teks dan angka untuk produk.

### Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Untuk mengatur tema dalam aplikasi Flutter, saya menggunakan properti `theme` di dalam widget `MaterialApp`. Tema ini mengatur berbagai elemen visual aplikasi, seperti warna, font, dan tampilan umum, agar konsisten di seluruh aplikasi. Saya mengimplementasikan tema dengan mendefinisikan `colorScheme` yang mencakup warna utama (`primary`), sekunder (`secondary`), dan elemen lainnya seperti `surface`, `error`, dan `onPrimary` untuk mengatur kontras dengan elemen tersebut. 

Dengan cara ini, saya memastikan bahwa warna-warna di seluruh aplikasi, baik untuk teks, latar belakang, maupun elemen UI lainnya, seragam dan sesuai dengan desain yang diinginkan. Tema ini juga memanfaatkan `useMaterial3: true`, yang memberikan akses pada desain material terbaru dengan tampilan yang lebih modern. Berikut adalah implementasi tema yang saya buat:

```dart
theme: ThemeData(
  colorScheme: const ColorScheme(
    primary: Color(0xFF1B4242),
    secondary: Color(0xFF5C8374),
    tertiary: Color(0xFF7BB8A2),
    surface: Color(0xFFFCFAEE),
    error: Color(0xFFB8001F),
    onPrimary: Color(0xFF1B4242),
    onSecondary: Color(0xFF5C8374),
    onTertiary: Color(0xFF7BB8A2),
    onSurface: Color(0xFF1B4242),
    onError: Color(0xFFB8001F),
    brightness: Brightness.light,
  ),
  useMaterial3: true,
),
```

### Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

Navigasi dalam Flutter dilakukan menggunakan `Navigator`. Dengan metode seperti `Navigator.push()`, kita dapat berpindah dari satu halaman ke halaman lainnya. Jika ingin menggantikan halaman yang aktif tanpa menambahkannya ke dalam stack, kita bisa menggunakan `Navigator.pushReplacement()`. Di aplikasi saya, navigasi juga ditangani menggunakan `Drawer`, yang memungkinkan pengguna untuk memilih halaman yang ingin dituju (misalnya, halaman utama atau form tambah item) dengan mengarahkan pengguna ke halaman yang dipilih menggunakan `Navigator.pushReplacement()` atau `Navigator.push()`.
