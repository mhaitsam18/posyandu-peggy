<div class="app-main__outer">
    <div class="app-main__inner">
        <div class="app-page-title">
            <div class="page-title-wrapper">
                <div class="page-title-heading">
                    <div class="page-title-icon">
                        <i class="pe-7s-info icon-gradient bg-mean-fruit"></i>
                    </div>
                    <div>Data Pemeriksaan Pasien</div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm">
                <!-- <a href="<?=base_url('posyandu/pasienRujukan')?>" class="btn btn-danger mb-2"><i class="fas fa-arrow-left"></i> Kembali</a>
                <div class="main-card mb-3 card">
                    <div class="card-body">
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
                            <tbody> -->
                            <div class="card-body">
            <div class="table-responsive">
                <table class="table table-hover table-striped table-bordered" id="dataTable" width="100%"
                    cellspacing="0">
                    <thead class="thead-dark">
                        <tr>
                            <th>Tanggal</th>
                            <th>ID Pencatatan</th>
                            <th>Nama Anak</th>
                            <th>Nama Bidan</th>
                            <th>Aksi</th>
                            <!-- <th style="text-align : center">Action</th> -->
                        </tr>
                    </thead>
                    <tbody>
                                <?php foreach ($pencatatan as $data) {?>
                                <tr>
                                <td width="250"><?php echo $data->tgl_pencatatan ?></td>
                                <td width="300"><?php echo $data->id_pencatatan ?></td>
                                <td width="350"><?php echo $data->nama_anak ?></td>
                                <td width="400"><?php echo $data->nama_bidan ?></td>
                                <td width="560"><a href="<?php echo site_url('posyandu/Pencatatan/detail/' . $data->id_pencatatan) ?>" class="btn btn-small text-info"><i class="fas fa-eye"></i> Detail </a>
                                    <a href="<?php echo site_url('posyandu/pasienrujukan/add_form/' . $data->id_pencatatan) ?>" class="btn btn-small text-primary">
                                        <i class="fas fa-info">Rujuk</i>
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