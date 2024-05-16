<?php include('layouts/header.php') ?>
<?php include('layouts/topbar.php') ?>
<?php include('layouts/sidemenu.php') ?>

<div class="content-wrapper">
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <!-- left column -->
                <div class="col-md-12">
                    <!-- general form elements -->
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">Tambah Cabang</h3>
                        </div>
                        <!-- /.card-header -->
                        <!-- form start -->
                        <form action="prosestambahcabang.php" method="POST" enctype="multipart/form-data">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Nama Cabang</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Cabang" name="nama">
                                </div>
                                <div class="form-group">
                                    <label for="alamat">Alamat</label>
                                    <textarea class="form-control" id="alamat" placeholder="Enter " name="alamat"></textarea>
                                </div>

                                <div class="form-group">
                                    <label for="deskripsi">Deskripsi</label>
                                    <textarea class="form-control" id="deskripsi" placeholder="Enter Deskripsi" name="deskripsi"></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="no_hp">No Hp</label>
                                    <textarea class="form-control" id="no_hp" placeholder="Enter no" name="no_hp"></textarea>
                                </div>

                                <div class="form-group">
                                    <label for="pelayanan">Pelayanan</label>
                                    <textarea class="form-control" id="pelayanan" placeholder="Enter pelayanan" name="pelayanan"></textarea>
                                </div>


                                <div class="form-group">
                                    <label for="gambar">Gambar Cabang</label>
                                    <div class="input-group">
                                        <div class="custom-file">
                                            <input type="file" class="custom-file-input" id="gambar" name="gambar" accept="image/*">
                                            <label class="custom-file-label" for="gambar" id="fileInputLabelGambar">Pilih file</label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- /.card-body -->

                            <div class="card-footer">
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </form>
                    </div>
                    <!-- /.card -->
                </div>
                <!--/.col (left) -->
            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>

<script>
    document.getElementById('gambar').addEventListener('change', function(e) {
        var fileName = e.target.files[0].name;
        document.getElementById('fileInputLabelGambar').innerHTML = fileName;
    });
</script>

<!-- /.content-wrapper -->
<?php include('layouts/footer.php') ?>
