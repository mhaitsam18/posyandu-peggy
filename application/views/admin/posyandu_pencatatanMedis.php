<div class="app-main__outer">
    <div class="app-main__inner">
        <div class="app-page-title">
            <div class="page-title-wrapper">
                <div class="page-title-heading">
                    <div class="page-title-icon">
                        <i class="pe-7s-info icon-gradient bg-mean-fruit"></i>
                    </div>
                    <div>Pencatatan Medis</div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm">
                <div class="main-card mb-3 card">
                    <div class="card-body">
                        <?=$this->session->flashdata('pesan');?>
                        <!-- <div class="alert alert-success fade show" role="alert">Data berhasil ditambah! </div> -->
                        <a class="mb-2 mr-2 btn btn-success" style="color: white;" href="<?=base_url('admin/posyandu/tambahPencatatan1')?>">Tambah</a>
                        <a href="<?=base_url('admin/posyandu/kelolaKategori')?>"class="mb-2 mr-2 btn btn-primary">Kelola Kategori</a>
                        <table class="display" id="example">
                            <thead>
                                <tr>
                                    <th>Tanggal</th>
                                    <th>Id Pencatatan</th>
                                    <th>Nama Anak</th>
                                    <th>Nama Bidan</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($pencatatan as $data) {?>
                                <tr>
                                    <td><?php echo $data->tgl_pencatatan ?></td>
                                    <td><?php echo $data->id_pencatatan ?></td>
                                    <td><?php echo $data->nama_anak ?></td>
                                    <td><?php echo $data->nama_bidan ?></td>
                                    <td>
                                    <a href="" class="btn btn- text-info" class="btn btn-primary" data-toggle="modal" data-target="#modaldetail<?php echo $data->id_pencatatan ?>"><i class="fas fa-info-circle"></i> Detail</a>
                                         <!-- <a href="<?=base_url("admin/posyandu/detailPencatatan/") . $data->id_pencatatan?>"
                                                 class="btn btn-small text-primary">
                                                <i class="fas fa-info"></i> Detail</a> -->
                                        <a href="<?php echo site_url('admin/posyandu/editPencatatan/' . $data->id_pencatatan) ?>"class="btn btn- text-info"><i class="fas fa-edit"></i> Edit</a>
                                         <!-- <a onclick="deleteConfirm('<?php echo site_url('posyandu/Pencatatan/delete/' . $data->id_pencatatan) ?>')"
            href="#!" class="btn btn-small text-danger"><i class="fas fa-trash"></i> Hapus</a> -->
                                    </td>
                                </tr>
                                <?php }?>
                            </tbody>
                        </table>
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
</div>
<?php
    foreach ($pencatatan as $datas) {
?>
<div class="modal fade" id="modaldetail<?php echo $datas->id_pencatatan ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Detail Pencatatan</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <table class="mb-0 table">
                    <thead>
                        <tr>
                            <td>Tanggal Pencatatan</td>
                            <td>:</td>
                            <td><?php echo $datas->tgl_pencatatan ?></td>
                        </tr>
                        <tr>
                            <td>Id Pencatatan</td>
                            <td>:</td>
                            <td><?php echo $datas->id_pencatatan ?></td>
                        </tr>
                        <tr>
                            <td>Nama Bidan</td>
                            <td>:</td>
                            <td><?php echo $datas->nama_bidan ?></td>
                        </tr>
                        <tr>
                            <td>Umur</td>
                            <td>:</td>
                            <td><?php echo $datas->umur ?></td>
                        </tr>
                        <tr>
                            <td>Kategori</td>
                            <td>:</td>
                            <td><?php echo $datas->usia ?></td>
                        </tr>
                        <tr>
                            <td>Tinggi Badan</td>
                            <td>:</td>
                            <td><?php echo $datas->tinggi ?></td>
                        </tr>
                        <tr>
                            <td>Berat Badan</td>
                            <td>:</td>
                            <td><?php echo $datas->bb ?></td>
                        </tr>
                        <tr>
                            <td>Temperatur</td>
                            <td>:</td>
                            <td><?php echo $datas->temperatur ?></td>
                        </tr>
                        <tr>
                            <td>Lingkar</td>
                            <td>:</td>
                            <td><?php echo $datas->lingkar ?></td>
                        </tr>
                        <tr>
                            <td>Jenis Imunisasi</td>
                            <td>:</td>
                            <td><?php echo $datas->imunisasi ?></td>
                        </tr>
                        <tr>
                            <td>Diagnosa</td>
                            <td>:</td>
                            <td><?php echo $datas->diagnosa ?></td>
                        </tr>
                        <tr>
                            <td>Penyuluhan</td>
                            <td>:</td>
                            <td><?php echo $datas->penyuluhan ?></td>
                        </tr>
                        <tr>
                            <td>Vitamin</td>
                            <td>:</td>
                            <td><?php echo $datas->vitamin ?></td>
                        </tr>
                        <tr>
                            <td>Obat</td>
                            <td>:</td>
                            <td><?php echo $datas->obat ?></td>
                        </tr>
                        <tr>
                            <td>No Telpon</td>
                            <td>:</td>
                            <td><?php echo $datas->notelp ?></td>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Kembali</button>
            </div>
        </div>
    </div>
</div>
<?php }?>
