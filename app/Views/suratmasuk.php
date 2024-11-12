<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Surat Masuk</title>
    <link rel="stylesheet" href="path/to/your/styles.css">
    <style>
        .card {
            margin: 20px;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        .table-responsive {
            overflow-x: auto;
        }
        .table {
            min-width: 1300px;
        }
    </style>
</head>
<body>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                   
                    <div class="table-responsive">
                        <a href="<?= base_url('Home/t_suratmasuk') ?>">
                            <button class="btn btn-success">Tambah Surat Masuk</button>
                        </a>
                        <table class="table table-bordered">
                            <thead class="thead-light">
                                <tr>
                                    <th>No</th>
                                    <th>Nomor Surat</th>
                                    <th>Tanggal Surat</th>
                                    <th>Pengirim</th>
                                    <th>Topik</th>
                                    <th>Diterima Oleh</th>
                                    <th>Status Baca</th>
                                    <th>Status Proses</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php 
                                $no = 1;
                                foreach($suratmasuk as $surat){
                                ?>
                                <tr>
                                    <td><?= $no++ ?></td>
                                    <td><?= $surat->nomor_surat ?></td>
                                    <td><?= $surat->tanggal_surat ?></td>
                                    <td><?= $surat->pengirim ?></td>
                                    <td><?= $surat->topik ?></td>
                                    <td><?= $surat->diterima_oleh ?></td>
                                    <td><?= $surat->status_baca ?></td>
                                    <td><?= $surat->status_proses ?></td>
                                    <td>
                                        <button class="btn btn-primary ti-pencil" 
                                                data-toggle="modal" 
                                                data-target="#editSuratModal" 
                                                data-id="<?= $surat->id_surat_masuk ?>"
                                                data-nomor="<?= $surat->nomor_surat ?>"
                                                data-tanggal="<?= $surat->tanggal_surat ?>"
                                                data-pengirim="<?= $surat->pengirim ?>"
                                                data-topik="<?= $surat->topik ?>"
                                                data-diterima="<?= $surat->diterima_oleh ?>"
                                                data-baca="<?= $surat->status_baca ?>"
                                                data-proses="<?= $surat->status_proses ?>"
                                                data-toggle="tooltip"
                                                data-placement="top"
                                                title="Edit">
                                        </button>
                                        <a href="<?= base_url('Home/hapus_surat_masuk/'.$surat->id_surat_masuk) ?>">
                                            <button class="btn btn-danger ti-trash" 
                                                    data-toggle="tooltip" 
                                                    data-placement="top" 
                                                    title="Hapus">
                                            </button>
                                        </a>
                                    </td>
                                </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Edit Surat Modal -->
    <div class="modal fade" id="editSuratModal" tabindex="-1" aria-labelledby="editSuratModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editSuratModalLabel">Edit Surat Masuk</h5>
                    <button type="button" class="btn btn-close" data-dismiss="modal" aria-label="Close">
                        <i class="fas fa-times"></i>
                    </button>
                </div>
                <div class="modal-body">
                    <form id="editSuratForm" action="<?= base_url('Home/aksi_edit_surat_masuk') ?>" method="POST">
                        <input type="hidden" id="id_surat_masuk" name="id_surat_masuk">
                        <div class="mb-3">
                            <label for="edit_nomor_surat" class="form-label">Nomor Surat</label>
                            <input type="text" class="form-control" id="edit_nomor_surat" name="nomor_surat" required>
                        </div>
                        <div class="mb-3">
                            <label for="edit_tanggal_surat" class="form-label">Tanggal Surat</label>
                            <input type="date" class="form-control" id="edit_tanggal_surat" name="tanggal_surat" required>
                        </div>
                        <div class="mb-3">
                            <label for="edit_pengirim" class="form-label">Pengirim</label>
                            <input type="text" class="form-control" id="edit_pengirim" name="pengirim" required>
                        </div>
                        <div class="mb-3">
                            <label for="edit_topik" class="form-label">Topik</label>
                            <input type="text" class="form-control" id="edit_topik" name="topik" required>
                        </div>
                        <div class="mb-3">
                            <label for="edit_diterima_oleh" class="form-label">Diterima Oleh</label>
                            <input type="text" class="form-control" id="edit_diterima_oleh" name="diterima_oleh" required>
                        </div>
                        <div class="mb-3">
                            <label for="edit_status_baca" class="form-label">Status Baca</label>
                            <select class="form-control" id="edit_status_baca" name="status_baca" required>
                                <option value="Sudah Dibaca">Sudah Dibaca</option>
                                <option value="Belum Dibaca">Belum Dibaca</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="edit_status_proses" class="form-label">Status Proses</label>
                            <select class="form-control" id="edit_status_proses" name="status_proses" required>
                                <option value="Pending">Pending</option>
                                <option value="Diproses">Diproses</option>
                                <option value="Selesai">Selesai</option>
                            </select>
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-success">Update</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="path/to/your/bootstrap.bundle.min.js"></script>
    <script>
        $(document).ready(function() {
            $('[data-toggle="tooltip"]').tooltip();
            $('#editSuratModal').on('show.bs.modal', function (event) {
                var button = $(event.relatedTarget);
                var id_surat_masuk = button.data('id');
                var nomor = button.data('nomor');
                var tanggal = button.data('tanggal');
                var pengirim = button.data('pengirim');
                var topik = button.data('topik');
                var diterima = button.data('diterima');
                var baca = button.data('baca');
                var proses = button.data('proses');

                var modal = $(this);
                modal.find('#id_surat_masuk').val(id_surat_masuk);
                modal.find('#edit_nomor_surat').val(nomor);
                modal.find('#edit_tanggal_surat').val(tanggal);
                modal.find('#edit_pengirim').val(pengirim);
                modal.find('#edit_topik').val(topik);
                modal.find('#edit_diterima_oleh').val(diterima);
                modal.find('#edit_status_baca').val(baca);
                modal.find('#edit_status_proses').val(proses);
            });
        });
    </script>
</body>
</html>
