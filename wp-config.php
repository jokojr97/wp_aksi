<?php
/**
 * Konfigurasi dasar WordPress.
 *
 * Berkas ini berisi konfigurasi-konfigurasi berikut: Pengaturan MySQL, Awalan Tabel,
 * Kunci Rahasia, Bahasa WordPress, dan ABSPATH. Anda dapat menemukan informasi lebih
 * lanjut dengan mengunjungi Halaman Codex {@link http://codex.wordpress.org/Editing_wp-config.php
 * Menyunting wp-config.php}. Anda dapat memperoleh pengaturan MySQL dari web host Anda.
 *
 * Berkas ini digunakan oleh skrip penciptaan wp-config.php selama proses instalasi.
 * Anda tidak perlu menggunakan situs web, Anda dapat langsung menyalin berkas ini ke
 * "wp-config.php" dan mengisi nilai-nilainya.
 *
 * @package WordPress
 */

// ** Pengaturan MySQL - Anda dapat memperoleh informasi ini dari web host Anda ** //
/** Nama basis data untuk WordPress */
define( 'DB_NAME', 'aksi_2020' );

/** Nama pengguna basis data MySQL */
define( 'DB_USER', 'root' );

/** Kata sandi basis data MySQL */
define( 'DB_PASSWORD', 'joko' );

/** Nama host MySQL */
define( 'DB_HOST', 'localhost' );

/** Set Karakter Basis Data yang digunakan untuk menciptakan tabel basis data. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Jenis Collate Basis Data. Jangan ubah ini jika ragu. */
define('DB_COLLATE', '');

/**#@+
 * Kunci Otentifikasi Unik dan Garam.
 *
 * Ubah baris berikut menjadi frase unik!
 * Anda dapat menciptakan frase-frase ini menggunakan {@link https://api.wordpress.org/secret-key/1.1/salt/ Layanan kunci-rahasia WordPress.org}
 * Anda dapat mengubah baris-baris berikut kapanpun untuk mencabut validasi seluruh cookies. Hal ini akan memaksa seluruh pengguna untuk masuk log ulang.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '^]o?8>!;GE$n]sx)WUO@`>LR/Mx|<|5%T5@-&OKFjpa7`[EO,J9_M)kD@K=!4/fK' );
define( 'SECURE_AUTH_KEY',  ' AXk.f__og^~&KiV$P?5~>},A6Y[2n/;,heIF3&!pTp%>g0j1BFsl3z]2AB:`xW@' );
define( 'LOGGED_IN_KEY',    'M)Zg6EDg{NfL{yd@i2s44@dq=s.U@Yp;yF2}7z:^TwKs[AU}!(pc)OCGc-):r<,i' );
define( 'NONCE_KEY',        '!S$M7h gd*5q:!C;E9=M4&m+%FU!CjbZwjvy{=7a=*NL0e8c&xO2/Z{JI:SEqTKU' );
define( 'AUTH_SALT',        'b+kP3;QH4.XI:PV4A!h?bdj~n~f7qk1(U-`XlUvC+w{+3,4PKo~=[8gr-C4t[X3R' );
define( 'SECURE_AUTH_SALT', 'LJM,1ZWu,xajHQ9V4V_%s<OZsh#hRc/1yLf`uutFIZ:%C.c9H``POf(>}Z6(+b $' );
define( 'LOGGED_IN_SALT',   'tsUwX3`6Ww`eN@1j}f2M-!?{zZI*@l|(X{gDx7;3FFO=.0Br AQZP?+1:H(n!*N<' );
define( 'NONCE_SALT',       'Z%m_v,Za.vk2h JR$IS3axoyl9fndWH6))V-t0mLCXKb3a0p.[(q;q9lL0^.MuRL' );

/**#@-*/

/**
 * Awalan Tabel Basis Data WordPress.
 *
 * Anda dapat memiliki beberapa instalasi di dalam satu basis data jika Anda memberikan awalan unik
 * kepada masing-masing tabel. Harap hanya masukkan angka, huruf, dan garis bawah!
 */
$table_prefix = 'aksi_';

/**
 * Untuk pengembang: Moda pengawakutuan WordPress.
 *
 * Ubah ini menjadi "true" untuk mengaktifkan tampilan peringatan selama pengembangan.
 * Sangat disarankan agar pengembang plugin dan tema menggunakan WP_DEBUG
 * di lingkungan pengembangan mereka.
 */
define('WP_DEBUG', false);

/* Cukup, berhenti menyunting! Selamat ngeblog. */

/** Lokasi absolut direktori WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Menentukan variabel-variabel WordPress berkas-berkas yang disertakan. */
require_once(ABSPATH . 'wp-settings.php');
