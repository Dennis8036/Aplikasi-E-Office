<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard E-Office Sekolah</title>
    <!-- Add CSS frameworks for better styling (e.g., Bootstrap, FontAwesome) -->

    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f6f9;
            
        }
        .dashboard-card {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-bottom: 30px;
        }
        .dashboard-card h5 {
            font-size: 20px;
            margin-bottom: 10px;
        }
        .icon-box {
            font-size: 36px;
            color: #fff;
            background-color: #007bff;
            border-radius: 50%;
            padding: 20px;
            margin-bottom: 20px;
        }
        .card-stats {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }
        .stat-card {
            width: 22%;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-bottom: 20px;
        }
        .stat-card .stat-value {
            font-size: 36px;
            font-weight: bold;
        }
        .stat-card .stat-label {
            color: #6c757d;
        }
        .row {
            margin-left: 0;
            margin-right: 0;
        }
        .footer {
            text-align: center;
            margin-top: 30px;
            font-size: 14px;
            color: #777;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Dashboard Header -->
        <div class="row">
            <div class="col-md-12">
                <div class="dashboard-card">
                    <div class="d-flex align-items-center">

                        <div>
                            <h5>Selamat Datang, <?php echo $_SESSION['username']; ?></h5>
                            <p>Dashboard Pengelolaan E-Office Sekolah</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Dashboard Statistics -->
        <div class="card-stats">
            <div class="stat-card">
                <h5 class="stat-label">Surat Masuk</h5>
                <div class="stat-value">15</div>
                <p>Surat yang diterima oleh sekolah dalam bulan ini.</p>
            </div>
            <div class="stat-card">
                <h5 class="stat-label">Surat Keluar</h5>
                <div class="stat-value">8</div>
                <p>Jumlah surat yang telah dikeluarkan dalam bulan ini.</p>
            </div>
            <div class="stat-card">
                <h5 class="stat-label">Pengajuan Surat</h5>
                <div class="stat-value">5</div>
                <p>Pengajuan surat yang sedang diproses.</p>
            </div>
            <div class="stat-card">
                <h5 class="stat-label">Guru Aktif</h5>
                <div class="stat-value">25</div>
                <p>Jumlah guru yang terdaftar dan aktif di sistem.</p>
            </div>
        </div>

        <!-- Recent Activity and Statistics -->
        <div class="row">
            <!-- Recent Activity Section -->
            <div class="col-md-6">
                <div class="dashboard-card">
                    <h5>Aktivitas Terbaru</h5>
                    <ul>
                        <li><strong>Surat Masuk:</strong> Surat dari Dinas Pendidikan diterima pada 5 Nov 2024.</li>
                        <li><strong>Surat Keluar:</strong> Surat pengumuman ujian semester terkirim pada 3 Nov 2024.</li>
                        <li><strong>Surat Pengajuan:</strong> Pengajuan surat cuti diajukan oleh Guru Matematika.</li>
                    </ul>
                </div>
            </div>

            <!-- Statistic Chart Section (e.g., Bar Chart) -->
            <div class="col-md-6">
                <div class="dashboard-card">
                    <h5>Statistik Surat</h5>
                    <canvas id="myChart" width="400" height="200"></canvas>
                </div>
            </div>
        </div>

        <!-- Footer -->
        <div class="footer">
            <p>© 2024 E-Office Sekolah. All Rights Reserved.</p>
        </div>
    </div>

    <!-- Chart.js Script (Optional) -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        var ctx = document.getElementById('myChart').getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
                datasets: [{
                    label: 'Surat Masuk & Keluar',
                    data: [12, 19, 3, 5, 2, 3],
                    backgroundColor: 'rgba(75, 192, 192, 0.2)',
                    borderColor: 'rgba(75, 192, 192, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    </script>
</body>
</html>
