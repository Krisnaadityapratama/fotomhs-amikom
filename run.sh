#!/bin/bash
# KRISNA ADITYA PRATAMA UPDATE
# Meminta input pengguna untuk tahun ajaran, prodi, dan NIM
echo "Masukkan Tahun Ajaran (misal: 2011):"
read tahun_ajaran
echo "Masukkan Prodi (misal: 11):"
read prodi
echo "Masukkan NIM (misal: 1111):"
read nim

# Mengambil dua digit terakhir dari tahun ajaran
tahun_ajaran_2digit="${tahun_ajaran:2:2}"

# Membuat URL berdasarkan input dengan format yang baru
url="https://fotomhs.amikom.ac.id/${tahun_ajaran}/${tahun_ajaran_2digit}_${prodi}_${nim}.jpg"

# Mengecek apakah file dengan URL tersebut ada
response=$(curl --write-out "%{http_code}" --silent --output /dev/null "$url")

# Jika file ditemukan (HTTP Status 200)
if [ "$response" -eq 200 ]; then
    echo "Status: Success. File ditemukan. Mendownload..."
    wget -O /storage/emulated/0/Download/${nim}.jpg "$url"
    echo "File berhasil diunduh dengan nama: ${nim}.jpg"
else
    echo "Status: Error. NIM atau data yang Anda masukkan tidak tersedia."
fi
