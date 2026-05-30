<?php
// ============================================================
// login.php — Halaman Login Admin (minimal)
// ============================================================
require_once __DIR__ . '/core/session.php';
require_once __DIR__ . '/config/database.php';
require_once __DIR__ . '/core/auth.php';
require_once __DIR__ . '/core/helper.php';

if (isLoggedIn()) {
    redirect(dashboardUrlByRole($_SESSION['role']));
}

$error    = '';
$lockSisa = 0;

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    csrfVerify();

    $username = trim($_POST['username'] ?? '');
    $password = $_POST['password'] ?? '';
    $secure   = trim($_POST['secure'] ?? '');
    $ipKey    = 'login_' . ($_SERVER['REMOTE_ADDR'] ?? 'unknown');

    if (!cekRateLimit($ipKey, 5, 300)) {
        $lockSisa = sisaWaktuKunci($ipKey);
        $menit    = ceil($lockSisa / 60);
        $error    = "Terlalu banyak percobaan login. Coba lagi dalam <strong>{$menit} menit</strong>.";
    } elseif ($username === '' || $password === '') {
        $error = 'Username dan password wajib diisi.';
    } else {
      // Validasi kode keamanan (captcha) jika tersedia
      $captchaOk = true;
      if (isset($_SESSION)) {
        if (!isset($_SESSION['captcha_code']) || strcasecmp($secure, $_SESSION['captcha_code']) !== 0) {
          $captchaOk = false;
          $error = 'Kode keamanan salah.';
        }
      }

      if ($captchaOk) {
        $result = login($username, $password);
        if ($result['status']) {
            resetRateLimit($ipKey);
            logActivity($conn, 'Login', 'Berhasil login sebagai ' . $result['role']);
            redirect(dashboardUrlByRole($result['role']));
        } else {
            $error = $result['message'];
        }
      }
    }
}

$logo = getSetting($conn, 'logo_file_path', 'assets/img/logo.png');
// Normalize logo URL: allow absolute URLs or convert stored path to assetUrl.
// Handle values like '/assets/img/logo.png', 'assets/img/logo.png', 'img/logo.png', or full URLs.
if (stripos($logo, 'http') === 0) {
  $logoUrl = $logo;
} else {
  $p = ltrim($logo, '/');
  // If value already contains leading 'assets/', strip it so assetUrl won't duplicate
  if (stripos($p, 'assets/') === 0) {
    $p = substr($p, strlen('assets/'));
  }
  // Check filesystem existence: __DIR__ is project root
  $fsPath = __DIR__ . '/assets/' . $p;
  if ($p !== '' && file_exists($fsPath)) {
    $logoUrl = assetUrl($p);
  } else {
    // fallback to bundled logo
    $logoUrl = assetUrl('img/logo.png');
  }
}
?>
<!DOCTYPE html>
<html lang="id">
  <head>
    <meta content="width=device-width, initial-scale=1, shrink-to-fit=no" name="viewport" />
    <title><?= htmlspecialchars(getSetting($conn, 'nama_aplikasi', 'TES KEMAMPUAN AKADEMIK')) ?></title>

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&display=swap" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">

    <link href="<?= assetUrl('css/style.css') ?>" rel="stylesheet" />
    <link href="<?= assetUrl('css/login-custom.css') ?>" rel="stylesheet" />
    <link href="<?= assetUrl('img/logo.png') ?>" rel="shortcut icon" />
  </head>
  <body>
    <div class="wrapper">
      <div class="home-header fixed-top">
        <div class="container">
          <nav class="navbar navbar-expand-lg navbar-light" id="navbar-header">
            <a class="navbar-brand" href="javascript:;">
              <img src="<?= e($logoUrl) ?>" alt="Logo" />
              <div class="home-header-text d-none d-sm-block">
                <h6><?= htmlspecialchars(getSetting($conn, 'nama_kementerian', 'PEMERINTAH KOTA BEKASI')) ?></h6>
                <h6><?= htmlspecialchars(getSetting($conn, 'nama_penyelenggara', 'DINAS PENDIDIKAN')) ?></h6>
                <h5><?= htmlspecialchars(getSetting($conn, 'nama_aplikasi', 'TES KEMAMPUAN AKADEMIK')) ?></h5>
              </div>
              <span class="logo-mini d-block d-md-none">TKA 2027</span>
            </a>
            <button class="navbar-toggler ml-auto" type="button" data-toggle="collapse" data-target="#menu" aria-controls="menu" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div id="menu" class="collapse navbar-collapse">
              <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link active" href="#home">Beranda</a></li>
                <li class="nav-item"><a class="nav-link" href="#tentang">Tentang</a></li>
                <li class="nav-item"><a class="nav-link" href="#statistik">Statistik</a></li>
              </ul>
            </div>
          </nav>
        </div>
      </div>

      <div id="home" class="home-banner">
        <div class="home-banner-bg home-banner-bg-color"></div>
        <div class="home-banner-bg home-banner-bg-img"></div>
        <div class="container">
          <div class="row align-items-center">
            
            <div class="col-md-8 col-sm-12 mb-4 mb-md-0">
              <div id="carousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                  <li data-target="#carousel" data-slide-to="0" class="active"></li>
                  <li data-target="#carousel" data-slide-to="1"></li>
                </ol>
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <div>
                      <h5>Apa Itu Tes Kemampuan Akademik?</h5>
                      <p>Tes Kemampuan Akademik (TKA) dilatarbelakangi oleh kebutuhan adanya pelaporan capaian akademik individu murid dari penilaian yang terstandar. Tidak tersedianya laporan capaian akademik individu dari penilaian terstandar pada beberapa tahun terakhir menimbulkan beberapa permasalahan.</p>
                      <p>Pada situasi seleksi yang didasarkan pada data dari hasil penilaian masing-masing satuan pendidikan misalnya data rapor, menimbulkan masalah dalam hal objektivitas dan keadilan.</p>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <div>
                      <h5>Tujuan Tes Kemampuan Akademik</h5>
                      <ul>
                        <li>Memperoleh informasi capaian akademik Murid yang terstandar untuk keperluan seleksi akademik.</li>
                        <li>Menjamin pemenuhan akses Murid Pendidikan Nonformal dan Pendidikan Informal terhadap penyetaraan hasil belajar.</li>
                        <li>Mendorong peningkatan kapasitas pendidik dalam mengembangkan penilaian yang berkualitas.</li>
                        <li>Memberikan informasi kepada Murid tentang kekuatan dan kelemahan dalam bidang akademik.</li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <a href="https://pusmendik.kemendikdasmen.go.id/tka" class="nav-link register p-0 mt-3 d-inline-block" target="_blank">
                Selengkapnya <span class="fa fa-arrow-right ml-1"></span>
              </a>
            </div>

            <div class="col-md-4 col-sm-12">
              <div class="card card-login">
                <div class="card-body">
                  <?php if ($error !== ''): ?>
                    <div class="alert alert-danger" role="alert"><?= $error ?></div>
                  <?php endif; ?>

                  <form action="" method="post" name="fmLogin" id="fmLogin">
                    <?= csrfField() ?>
                    
                    <div class="form-group">
                      <input type="text" class="form-control" id="username" name="username" placeholder="Username" value="<?= e($_POST['username'] ?? '') ?>" autocomplete="off" required />
                      <span class="fa fa-user"></span>
                    </div>
                    
                    <div class="form-group">
                      <input type="password" class="form-control" id="password" name="password" placeholder="Password" required />
                      <span class="fa fa-key"></span>
                    </div>
                    
                    <div class="form-group text-center">
                      <div class="captcha-box mb-2" style="background: #f1f5f9; border-radius: 8px; padding: 4px; border: 1px solid #cbd5e1;">
                        <img src="<?= appUrl('captcha.php') ?>?t=<?= time() ?>" id="siimage" style="width: 100%; height: 45px; object-fit: contain; display: block; cursor:pointer;" alt="captcha" title="Klik untuk refresh" />
                      </div>
                    </div>
                    
                    <div class="form-group">
                      <input type="text" class="form-control" id="secure" name="secure" placeholder="Kode Keamanan" autocomplete="off" required />
                      <span class="fa fa-shield-alt"></span>
                    </div>
                    
                    <button type="submit" class="btn-login" id="btnLogin">Masuk</button>
                  </form>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>

      <footer class="contact">
        &copy; <?= date('Y') ?> Pusat Asesmen Pendidikan - Kementerian Pendidikan Dasar dan Menengah
      </footer>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
      // Skenario UX Tambahan ketika tombol ditekan
      document.getElementById('fmLogin')?.addEventListener('submit', function() {
        var btn = document.getElementById('btnLogin');
        if(btn) {
          btn.innerHTML = '<i class="fas fa-spinner fa-spin mr-2"></i> Memproses...';
          btn.style.opacity = '0.8';
          btn.style.pointerEvents = 'none';
        }
      });
      // Refresh captcha on click
      (function(){
        var img = document.getElementById('siimage');
        if(!img) return;
        var url = '<?= appUrl('captcha.php') ?>';
        img.addEventListener('click', function(){
          this.src = url + '?t=' + Date.now();
        });
      })();
    </script>
  </body>
</html>