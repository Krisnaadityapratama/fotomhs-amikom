# fotomhs-amikom

## Download Photo Script

Script ini digunakan untuk mendownload foto mahasiswa berdasarkan **tahun ajaran**, **prodi**, dan **NIM** dari URL yang ditentukan.

## Fitur
- Mengunduh foto mahasiswa dengan format URL: 
https://fotomhs.amikom.ac.id/${tahun_ajaran}/${tahun_ajaran_2digit}_${prodi}_${nim}.jpg

markdown
Copy code
Di mana:
- `${tahun_ajaran}` adalah tahun ajaran lengkap (misalnya `2020`).
- `${tahun_ajaran_2digit}` adalah dua digit terakhir dari tahun ajaran (misalnya `2020` menjadi `20`).
- `${prodi}` adalah kode prodi (misalnya `11`).
- `${nim}` adalah NIM mahasiswa (misalnya `3649`).
- File yang diunduh disimpan dengan nama **NIM** (misalnya `3649.jpg`).
- Menggunakan **`make`** untuk menjalankan script dengan mudah.

## Prasyarat
Sebelum menjalankan script ini, pastikan Anda memenuhi beberapa prasyarat berikut:
- **Termux** harus terinstal di perangkat Android Anda.
- Library **make**, **wget**, dan **curl** untuk mengunduh file dan memeriksa URL.

### Menggunakan Script
1. Clone Repository
Untuk mendapatkan script ini, clone repository ke dalam Termux Anda dengan perintah berikut:

- git clone https://github.com/Krisnaadityapratama/fotomhs-amikom.git
- cd fotomhs-amikom

2. Update dan install Kebutuhan 
- pkg update && pkg upgrade
- pkg install git make curl wget

3. Set Hak Akses untuk Script
Setelah meng-clone repository, berikan hak akses eksekusi pada script run.sh dengan perintah:
chmod +x run.sh

4. Beri akses agar file download bisa langsung masuk ke folder Download 
- **termux-setup-storage**
Ikuti petunjuk yang muncul di layar untuk memberikan izin akses.

5. Menjalankan Script dengan make
Setelah semua siap, Anda dapat menjalankan script dengan mudah menggunakan make. Di dalam direktori fotomhs-amikom, jalankan perintah berikut:

**make run**

Jika error maka bisa menjalankan

**./run.sh**

Penjelasan:

Anda akan diminta untuk memasukkan:

Tahun Ajaran (misalnya: 2011)

Prodi (misalnya: 11)

NIM (misalnya: 1111)

**Jika URL valid dan foto ditemukan, maka foto akan otomatis diunduh ke folder Download di perangkat Android Anda.**

6. Lokasi Penyimpanan
Foto yang diunduh akan disimpan di folder Download di penyimpanan internal perangkat Anda, dan bisa langsung diakses melalui aplikasi File Manager atau Galeri.

Troubleshooting
Masalah Hak Akses Penyimpanan:
Jika Anda mengalami masalah dengan hak akses penyimpanan, pastikan Anda telah menjalankan perintah termux-setup-storage dan memberikan izin akses penyimpanan pada Termux.

URL Tidak Ditemukan:
Jika URL yang dihasilkan tidak valid (misalnya, foto tidak ditemukan), pastikan data yang Anda masukkan sudah benar: tahun ajaran, prodi, dan NIM.