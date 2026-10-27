# Pengingat Kebun (APK Android)

Aplikasi Android (Capacitor) dengan jadwal SOP Semangka Diva F1. Notifikasi dijadwalkan langsung di HP, jadi muncul tepat waktu walau aplikasi ditutup, tanpa server. Tombol "Kirim ke WhatsApp" membuka WhatsApp dengan pesan sudah terisi.

## Cara termudah: bangun APK lewat GitHub (tanpa Android Studio)
1. Buat akun dan repositori baru di github.com (boleh privat).
2. Unggah seluruh isi folder ini ke repositori, termasuk folder `.github`.
3. Buka tab **Actions** > **Build APK** > **Run workflow**. Tunggu ±5–10 menit.
4. Buka run yang selesai, unduh artifact **pengingat-kebun-apk**, ekstrak, lalu kirim `app-debug.apk` ke HP.
5. Di HP, buka file APK dan izinkan "Install aplikasi tidak dikenal" jika diminta.

## Alternatif: bangun di komputer
Butuh Node 18+, JDK 17, dan Android SDK (Android Studio). Lalu jalankan `bash build-android.sh`. Hasil: `android/app/build/outputs/apk/debug/app-debug.apk`.

## Pemakaian
1. Buka aplikasi, isi nama blok, tanggal tanam, jumlah tanaman, HST panen, nomor WhatsApp, dan jam pengingat.
2. Izinkan notifikasi. Di beberapa HP (Xiaomi, Oppo, Vivo, Samsung) matikan penghematan baterai untuk aplikasi ini supaya notifikasi tidak tertunda.
3. Setiap tugas tampil sebagai notifikasi pada hari dan jam yang ditentukan. Menandai Selesai atau Tunda menjadwalkan ulang notifikasi otomatis.

## Catatan
- Ini APK debug: cukup untuk dipakai sendiri, tidak untuk Play Store. Untuk Play Store perlu penandatanganan rilis.
- Pesan WhatsApp tetap dikirim dengan menekan tombol kirim; pengiriman otomatis tanpa dibuka memerlukan server (lihat paket wa-pengingat).
- Dosis adalah acuan umum; ikuti label produk, uji tanah, dan jeda panen.
