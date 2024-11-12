<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <!-- Include your CSS files here -->
    <link rel="stylesheet" href="path/to/your/styles.css">
    <style>
        .card {
            margin: 20px; /* Adjust margin as needed */
            padding: 20px; /* Add padding to the card */
            border-radius: 8px; /* Optional: for rounded corners */
            box-shadow: 0 2px 4px rgba(0,0,0,0.1); /* Optional: for shadow effect */
        }
        .table-responsive {
            overflow-x: auto; /* Allow horizontal scroll if needed */
        }
        .table {
            min-width: 1300px; /* Ensure table is wide enough */
        }
    </style>
</head>
<body>
    <!-- Sidebar start -->
    <!-- Your sidebar code here -->
    <!-- Sidebar end -->

    <!-- Content body start -->

        <!-- row -->

       
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title"></h4>

                           
                                <table class="table">
                                <!-- General Form Elements -->

                    <form action="<?= base_url('Home/aksi_t_suratmasuk') ?>" method="POST">
                        <div class="form-group row">
                            <label for="nomor_surat" class="col-sm-2 col-form-label">Nomor Surat</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="nomor_surat" name="nomor_surat" placeholder="Nomor Surat" required>
                            </div>
                        </div>

<div class="form-group row">
    <label for="inputText" class="col-sm-2 col-form-label">Tanggal Post</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" name='tgl' value="<?= date('Y-m-d') ?>" readonly>
    </div>
</div>

                        <div class="form-group row">
                            <label for="pengirim" class="col-sm-2 col-form-label">Pengirim</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="pengirim" name="pengirim" placeholder="Pengirim Surat" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="topik" class="col-sm-2 col-form-label">Topik</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="topik" name="topik" placeholder="Topik Surat" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="diterima_oleh" class="col-sm-2 col-form-label">Diterima Oleh</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="diterima_oleh" name="diterima_oleh" placeholder="Diterima Oleh" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="status_baca" class="col-sm-2 col-form-label">Status Baca</label>
                            <div class="col-sm-10">
                                <select class="form-control" id="status_baca" name="status_baca" required>
                                    <option value="">Pilih</option>
                                    <option value="Belum Dibaca">Belum Dibaca</option>
                                    <option value="Sudah Dibaca">Sudah Dibaca</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="status_proses" class="col-sm-2 col-form-label">Status Proses</label>
                            <div class="col-sm-10">
                                <select class="form-control" id="status_proses" name="status_proses" required>
                                    <option value="">Pilih</option>
                                    <option value="Pending">Pending</option>
                                    <option value="Diproses">Diproses</option>
                                    <option value="Selesai">Selesai</option>
                                </select>
                            </div>
                        </div>

                        <button type="submit" class="btn btn-primary">Submit</button>
                                   </form>
                            </table>
                        </div>
                    </div>
