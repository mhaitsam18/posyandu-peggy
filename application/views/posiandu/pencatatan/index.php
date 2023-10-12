<!-- Begin Page Content -->
<div class="container-fluid">
    <?php $this->load->view('admin/_partials/breadcrumb');?>

    <?php if ($this->session->flashdata('success')) {?>
    <div class="alert alert-success" role="alert">
        <?php echo $this->session->flashdata('success'); ?>
    </div>
    <?php } else if ($this->session->flashdata('error')) {?>
    <div class="alert alert-danger" role="alert">
        <?php echo $this->session->flashdata('error'); ?>
    </div>
    <?php }?>

    <!-- <h1><?=$this->session->user_logged['wilayah']?></h1> -->

    <!-- DataTables -->

    <div class="card mb-3">
        <div class="card-header">
            <div class="row">
                <div class="col-md-8">
                    <a href="<?php echo site_url('posyandu/pencatatan/create_pencatatan') ?>"><i
                            class="fas fa-plus"></i> Tambah</a>
                </div>
                <div class="col-md-4 pull-right">
                    <h4><b>Data Pencatatan</b></h4>
                </div>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-hover table-striped table-bordered" id="dataTable" width="100%"
                        cellspacing="0">
                        <thead class="thead-dark">
                            <tr>
                                <th>Tanggal</th>
                                <th>Id Pencatatan</th>
                                <th>Nama Anak</th>
                                <th>Nama Bidan</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
foreach ($pencatatan as $data):
?>
                            <tr>
                                <td><?php echo $data->tgl_pencatatan ?></td>
                                <td><?php echo $data->id_pencatatan ?></td>
                                <td><?php echo $data->nama_anak ?></td>
                                <td><?php echo $data->nama_bidan ?></td>
                                <td width="100">
                                    <a href="<?php echo site_url('posyandu/Pencatatan/edit/' . $data->id_pencatatan) ?>"
                                        class="btn btn- text-info"><i class="fas fa-edit"></i> Edit</a>

                                    <a href="" class="btn btn- text-info" class="btn btn-primary" data-toggle="modal" data-target="#modaldetail<?php echo $data->id_pencatatan ?>"><i class="fas fa-info-circle"></i> Detail</a>
                                    <!-- <a onclick="deleteConfirm('<?php echo site_url('posyandu/Pencatatan/delete/' . $data->id_pencatatan) ?>')"
            href="#!" class="btn btn-small text-danger"><i class="fas fa-trash"></i> Hapus</a> -->
            <!-- <a href="<?php echo site_url('posyandu/Pencatatan/detail/'.$data->id_pencatatan) ?>"
						 class="btn btn-small text-warning"><i class="fas fa-eye"></i> Detail</a> -->
                                </td>
                            </tr>
                            <?php endforeach;?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>
    <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Are you sure?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Data yang dihapus tidak akan bisa dikembalikan.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a id="btR" class="btn btn-danger" href="#">Delete</a>
                </div>
            </div>
        </div>
    </div>
    <script>
    function deleteConfirm(url) {
        $('#btR').attr('href', url);
        $('#deleteModal').modal();
    }
    </script>
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
