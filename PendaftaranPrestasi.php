<?php

require_once "Pendaftaran.php";

class PendaftaranPrestasi extends Pendaftaran
{
    protected $jenisPrestasi;
    protected $tingkatPrestasi;

    public function __construct(
        $id_pendaftaran,
        $nama_calon,
        $asal_sekolah,
        $nilai_ujian,
        $biayaPendaftaranDasar,
        $jenisPrestasi,
        $tingkatPrestasi
    ) {
        parent::__construct(
            $id_pendaftaran,
            $nama_calon,
            $asal_sekolah,
            $nilai_ujian,
            $biayaPendaftaranDasar
        );

        $this->jenisPrestasi = $jenisPrestasi;
        $this->tingkatPrestasi = $tingkatPrestasi;
    }

    // OVERRIDING METHOD DARI CLASS Pendaftaran
    public function hitungTotalBiaya()
    {
        return $this->biayaPendaftaranDasar - 50000;
    }

    public function tampilkanInfoJalur()
    {
        return "Jalur Prestasi";
    }

    public function getDaftarPrestasi($db)
    {
        $sql = "SELECT * FROM tabel_pendaftaran
                WHERE jalur_pendaftaran = 'Prestasi'";

        $stmt = $db->prepare($sql);
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
?>