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
