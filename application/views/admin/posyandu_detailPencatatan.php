<div class="app-main__outer">
    <div class="app-main__inner">
        <div class="app-page-title">
            <div class="page-title-wrapper">
                <div class="page-title-heading">
                    <div class="page-title-icon">
                        <i class="pe-7s-info icon-gradient bg-mean-fruit"></i>
                    </div>
                    <div>Detail Pencatatan</div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm">
                <a href="<?=base_url('admin/posyandu/pencatatanMedis')?>" class="btn btn-danger mb-2"><i class="fas fa-arrow-left"></i> Kembali</a>
                <div class="main-card mb-3 card">
                    <div class="card-body">
                        <center>
                            <table width="50%" class="table" height="50% ">
                                <thead>
                                    <!-- <tr>
                                        <td>ID Pencatatan</td>
                                        <td>:</td>
                                        <td><?php echo $pencatatan->id_pencatatan ?></td>
                                    </tr> -->
                                    <tr>
                                        <td>No Pasien</td>
                                        <td>:</td>
                                        <td><?php echo $pencatatan->no_pasien ?></td>
                                    </tr>
                                    <!-- <tr>
                                        <td>ID Petugas</td>
                                        <td>:</td>
                                        <td><?php echo $pencatatan->id_petugas ?></td>
                                    </tr> -->
                                    <!-- <tr>
                                        <td>ID Wilayah</td>
                                        <td>:</td>
                                        <td><?php echo $pencatatan->idWilayah ?></td>
                                    </tr> -->
                                    <tr>
                                        <td>Nama Bidan</td>
                                        <td>:</td>
                                        <td><?php echo $pencatatan->nama_bidan ?></td>
                                    </tr>
                                    <tr>
                                        <td>Umur</td>
                                        <td>:</td>
                                        <td><?php echo $pencatatan->umur ?></td>
                                    </tr>
                                    <tr>
                                        <td>Kategori Usia</td>
                                        <td>:</td>
                                        <td><?php echo $pencatatan->kategori ?></td>
                                    </tr>
                                    <tr>
                                        <td>Tinggi Badan</td>
                                        <td>:</td>
                                        <td><?php echo $pencatatan->tinggi ?></td>
                                    </tr>
                                    <tr>
                                        <td>Berat Badan</td>
                                        <td>:</td>
                                        <td><?php echo $pencatatan->bb ?></td>
                                    </tr>
                                    <tr>
                                        <td>Temperatur</td>
                                        <td>:</td>
                                        <td><?php echo $pencatatan->temperatur ?></td>
                                    </tr>
                                    <tr>
                                        <td>Lingkar Kepala</td>
                                        <td>:</td>
                                        <td><?php echo $pencatatan->lingkar ?></td>
                                    </tr>
                                    <tr>
                                        <td>Jenis Imunisasi</td>
                                        <td>:</td>
                                        <td><?php echo $pencatatan->jenis_imunisasi ?></td>
                                    </tr>
                                   <tr>
                                        <td>Diagnosa</td>
                                        <td>:</td>
                                        <td><?php echo $pencatatan->diagnosa ?></td>
                                    </tr>
                                    <tr>
                                        <td>Penyuluhan</td>
                                        <td>:</td>
                                        <td><?php echo $pencatatan->penyuluhan ?></td>
                                    </tr>
                                    <tr>
                                        <td>Vitamin</td>
                                        <td>:</td>
                                        <td><?php echo $pencatatan->vitamin ?></td>
                                    </tr>
                                    <tr>
                                        <td>Obat Cacing</td>
                                        <td>:</td>
                                        <td><?php echo $pencatatan->obat ?></td>
                                    </tr>
                                    <tr>
                                        <td>Nomor Telepon</td>
                                        <td>:</td>
                                        <td><?php echo $pencatatan->notelp ?></td>
                                    </tr>
                                    <tr>
                                        <td>Tanggal Pencatatan</td>
                                        <td>:</td>
                                        <td><?php echo $pencatatan->tgl_pencatatan ?></td>
                                    </tr>
                                    
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                        </center>
                    </div>
                </div>
            </div>
            <script>
                $(document).ready(function() {
                $('#myTable').DataTable();});
            </script>
        </div>
    </div>
</div>