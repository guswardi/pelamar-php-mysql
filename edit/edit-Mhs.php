<?php
$id     = $_GET['id'];
$query  = mysqli_query($koneksi,"SELECT * FROM tb_mhs WHERE id='$id'");
$view   = mysqli_fetch_array($query);
?>
<section class="content">
    <div class="container-fluid">
        <div class="card card-warning">
              <div class="card-header">
                <h3 class="card-title">Edit Data Siswa SSB</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <form method='post' action='update/update_Mhs.php' enctype="multipart/form-data">
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label>Nomer Siswa SSB</label>
                        <input type="text" class="form-control" placeholder="NPM" name='npm' value="<?php echo $view['npm'];?>">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <!-- text input -->
                      <div class="form-group">
                        <label>Nama</label>
                        <input type="text" class="form-control" placeholder="Nama Lengkap" name='nama' value="<?php echo $view['nama'];?>">
                        <input type="text" class="form-control"  name='id' value="<?php echo $view['id'];?>" hidden>
                      </div>
                    </div>                    
                  </div>
                  <div class="form-group">
                        <label>Tanggal Lahir</label>
                        <input type="text" class="form-control" placeholder="Tanggal Lahir" name='tanggal' value="<?php echo $view['tanggal'];?>">
                        <input type="text" class="form-control"  name='id' value="<?php echo $view['id'];?>" hidden>
                      </div>
                    </div>                    
                  </div>
                  <div class="form-group">
                        <label>Nama Orang Tua</label>
                        <input type="text" class="form-control" placeholder="Nama Orang Tua" name='orangtua' value="<?php echo $view['orangtua'];?>">
                        <input type="text" class="form-control"  name='id' value="<?php echo $view['id'];?>" hidden>
                      </div>
                    </div>                    
                  </div>
                  <div class="col-sm-6">
                      <div class="form-group">
                        <label>Alamat</label>
                        <input type="text" class="form-control" placeholder="Alamat" name='alamat' value="<?php echo $view['alamat'];?>">
                      </div>
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label>Jenis Kelamin</label>
                        <input type="text" class="form-control" placeholder='Jenis Kelamin' name='gen' value="<?php echo $view['gen'];?>">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label>Kelas</label>
                        <input type="text" class="form-control" placeholder="Kelas" name='kelas' value="<?php echo $view['kelas'];?>">
                      </div>
                      <div class="col-sm-6">
                      <div class="form-group">
                        <label>Usia</label>
                        <input type="text" class="form-control" placeholder="Usia" name='usia' value="<?php echo $view['usia'];?>">
                      </div>
                    </div>
                  </div>
                  
                  <!-- <div class="row">
                    <div class="col-sm-12">
                      <img src="foto/<?php echo $view['foto'];?>" width="200px" class="rounded float-right">
                    </div>
                  </div> -->
                  <div class="row">
                    <button type="submit"class="btn btn-sm btn-info">Simpan</button>
                  </div>
                </form>
              </div>
              <!-- /.card-body -->
            </div>
    </div>
</section>