<?php

require_once "koneksi.php";
require_once "PendaftaranReguler.php";
require_once "PendaftaranPrestasi.php";
require_once "PendaftaranKedinasan.php";

$db = new Database();
$conn = $db->connect();

/* =========================
   OBJECT INISIALISASI
========================= */

// Reguler
$regulerObj = new PendaftaranReguler(0,"","","",0,"","");

// Prestasi
$prestasiObj = new PendaftaranPrestasi(0,"","","",0,"","");

// Kedinasan
$kedinasanObj = new PendaftaranKedinasan(0,"","","",0,"","");

// Ambil data dari database
$dataReguler = $regulerObj->getDaftarReguler($conn);
$dataPrestasi = $prestasiObj->getDaftarPrestasi($conn);
$dataKedinasan = $kedinasanObj->getDaftarKedinasan($conn);

?>

<!DOCTYPE html>
<html>
<head>
    <title>Data Pendaftaran Mahasiswa</title>
    <style>
        body { font-family: Arial; margin: 20px; }
        h2 { background: #333; color: white; padding: 10px; }
        table { border-collapse: collapse; width: 100%; margin-bottom: 30px; }
        table, th, td { border: 1px solid #999; }
        th, td { padding: 8px; text-align: center; }
    </style>
</head>
<body>

<h1>DATA PENDAFTARAN MAHASISWA BARU</h1>

<!-- ================= REGULER ================= -->
<h2>Jalur Reguler</h2>
<table>
<tr>
    <th>Nama</th>
    <th>Asal Sekolah</th>
    <th>Prodi</th>
    <th>Kampus</th>
    <th>Total Biaya</th>
</tr>

<?php foreach ($dataReguler as $d) { 
    $obj = new PendaftaranReguler(
        $d['id_pendaftaran'],
        $d['nama_calon'],
        $d['asal_sekolah'],
        $d['nilai_ujian'],
        $d['biaya_pendaftaran_dasar'],
        $d['pilihan_prodi'],
        $d['lokasi_kampus']
    );
?>
<tr>
    <td><?= $d['nama_calon']; ?></td>
    <td><?= $d['asal_sekolah']; ?></td>
    <td><?= $d['pilihan_prodi']; ?></td>
    <td><?= $d['lokasi_kampus']; ?></td>
    <td><?= $obj->hitungTotalBiaya(); ?></td>
</tr>
<?php } ?>
</table>

<!-- ================= PRESTASI ================= -->
<h2>Jalur Prestasi</h2>
<table>
<tr>
    <th>Nama</th>
    <th>Asal Sekolah</th>
    <th>Jenis Prestasi</th>
    <th>Tingkat</th>
    <th>Total Biaya</th>
</tr>

<?php foreach ($dataPrestasi as $d) { 
    $obj = new PendaftaranPrestasi(
        $d['id_pendaftaran'],
        $d['nama_calon'],
        $d['asal_sekolah'],
        $d['nilai_ujian'],
        $d['biaya_pendaftaran_dasar'],
        $d['jenis_prestasi'],
        $d['tingkat_prestasi']
    );
?>
<tr>
    <td><?= $d['nama_calon']; ?></td>
    <td><?= $d['asal_sekolah']; ?></td>
    <td><?= $d['jenis_prestasi']; ?></td>
    <td><?= $d['tingkat_prestasi']; ?></td>
    <td><?= $obj->hitungTotalBiaya(); ?></td>
</tr>
<?php } ?>
</table>

<!-- ================= KEDINASAN ================= -->
<h2>Jalur Kedinasan</h2>
<table>
<tr>
    <th>Nama</th>
    <th>Asal Sekolah</th>
    <th>SK Ikatan</th>
    <th>Instansi</th>
    <th>Total Biaya</th>
</tr>

<?php foreach ($dataKedinasan as $d) { 
    $obj = new PendaftaranKedinasan(
        $d['id_pendaftaran'],
        $d['nama_calon'],
        $d['asal_sekolah'],
        $d['nilai_ujian'],
        $d['biaya_pendaftaran_dasar'],
        $d['sk_ikatan_dinas'],
        $d['instansi_sponsor']
    );
?>
<tr>
    <td><?= $d['nama_calon']; ?></td>
    <td><?= $d['asal_sekolah']; ?></td>
    <td><?= $d['sk_ikatan_dinas']; ?></td>
    <td><?= $d['instansi_sponsor']; ?></td>
    <td><?= $obj->hitungTotalBiaya(); ?></td>
</tr>
<?php } ?>
</table>

</body>
</html>