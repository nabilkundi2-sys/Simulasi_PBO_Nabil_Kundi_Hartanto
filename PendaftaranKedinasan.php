<?php

require_once "Pendaftaran.php";

class PendaftaranKedinasan extends Pendaftaran
{
    protected $skIkatanDinas;
    protected $instansiSponsor;

    public function __construct(
        $id_pendaftaran,
        $nama_calon,
        $asal_sekolah,
        $nilai_ujian,
        $biayaPendaftaranDasar,
        $skIkatanDinas,
        $instansiSponsor
    ) {
        parent::__construct(
            $id_pendaftaran,
            $nama_calon,
            $asal_sekolah,
            $nilai_ujian,
            $biayaPendaftaranDasar
        );

        $this->skIkatanDinas = $skIkatanDinas;
        $this->instansiSponsor = $instansiSponsor;
    }

    // OVERRIDING METHOD (POLYMORPHISM)
    public function hitungTotalBiaya()
    {
        return $this->biayaPendaftaranDasar * 1.25;
    }

    public function tampilkanInfoJalur()
    {
        return "Jalur Kedinasan";
    }

    public function getDaftarKedinasan($db)
    {
        $sql = "SELECT * FROM tabel_pendaftaran
                WHERE jalur_pendaftaran = 'Kedinasan'";

        $stmt = $db->prepare($sql);
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
?>