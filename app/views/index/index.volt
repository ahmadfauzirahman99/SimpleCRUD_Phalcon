<div class="page-header">
    <h1>CRUD Website</h1>
    <p class="lead">A Simple CRUD Phalcon MVC Website, using MySQL as Database</p>
</div>

<div class="page-header">
    <h3>List Mahasiswa</h3>
</div>

<div class=”flash-message-css”><?php $this->flashSession->output(); ?></div>

<!--<a href="{{url("add")}}" class="btn btn-success" role="button">Tambah</a>-->
<!--<a class="btn btn-success" href="{{url("add")}}" rel="modal:open">Tambah Data</a>-->
<!--<a class="btn btn-success" data-toggle="modal" data-target="#modalTambah">Tambah Data</a>-->

<!-- Modal Form Tambah Data Mahasiswa -->

<div class="modal fade" id="modalTambah" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Tambah Data Mahasiswa</h4>
      </div>
      <div class="modal-body">
      <form action="{{url("index/add")}}" class="form-horizontal" method="POST">
        <div class="form-group">
          <label class="control-label col-sm-2" for="nim" required>NIM:</label>
          <div class="col-sm-8">
            <input type="text" class="form-control" name="nim" placeholder="Masukkan NIM">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-2" for="name" required>Nama:</label>
          <div class="col-sm-8">
            <input type="text" class="form-control" name="name" placeholder="Masukkan Nama">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-2" for="department" required>Departemen:</label>
          <div class="col-sm-8">
            <input type="text" class="form-control" name="department" placeholder="Masukkan Departemen">
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" id="add" class="btn btn-success">Add</button>
            <a data-dismiss="modal" class="btn btn-danger" role="button">Batal</a>
          </div>
        </div>
      </form>
      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>

<!-- Modal Delete Data Mahasiswa -->

<div class="modal fade" id="modalHapus" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Menghapus Data</h4>
      </div>
      <div class="modal-body">
        Yakin untuk menghapus data?
        <p class="debug-url"></p>
      </div>
      <div class="modal-footer">
        <!--<button type="button" class="btn btn-danger" data-dismiss="modal">Delete</button>-->
        <a name="delete-data" class="btn btn-danger btn-ok" role="button">Hapus</a></td>
        <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
      </div>
    </div>
  </div>
</div>

<!-- Modal Edit Data Mahasiswa -->

<div class="modal fade" id="modalUbah" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Mengubah Data</h4>
      </div>
      <div class="modal-body">
        <form action="{{url("index/update")}}" class="form-horizontal" method="POST">
          <div class="form-group">
            <label class="control-label col-sm-2" for="nim">NIM:</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" name="nim" value="{{nim}}" readonly>
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="name">Nama:</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" name="name" placeholder="Masukkan Nama" value="{{name}}" required>
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="department">Depatemen:</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" name="department" placeholder="Masukkan Departemen" value="{{department}}" required>
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <a name="edit-data" class="btn btn-primary btn-change" role="button">Simpan</a></td>
              <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
            </div>
          </div>
        </form>
      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>

<!-- List Data Mahasiswa -->

<div class="table-responsive">
  <table class="table table-hover">
    <thead>
      <tr>
        <th>NIM</th>
        <th>Nama</th>
        <th>Departemen</th>
        <th>Option</th>
      </tr>
    </thead>
    <tbody>
      {% for d in data %}
      <tr>
        <td>{{d.nim}}</td>
        <td>{{d.name}}</td>
        <td>{{d.department}}</td>
        <td>
          <a href="index/edit/{{d.nim}}" class="btn btn-warning" role="button">Edit</a>
          <!--<a href="" id="edit" data-nim="{{d.nim}}" class="btn btn-warning" data-toggle="modal" data-target="#modalUbah">Ubah</a>-->
          <!--<a href="index/delete/{{d.nim}}" class="btn btn-danger" role="button">Hapus</a></td>-->
          <a href="" data-href="index/delete/{{d.nim}}" class="btn btn-danger" data-toggle="modal" data-target="#modalHapus">Hapus</a>
        </td>
      </tr>
        {% endfor %}
      </tbody>
    </table>
  </div>
