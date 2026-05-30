<?php
// ============================================================
// aktivasi.php — Halaman Aktivasi / Expired Lisensi
// ============================================================
if (session_status() === PHP_SESSION_NONE) {
    session_name('TKA_SID');
    session_start();
}
require_once __DIR__ . '/config/database.php';
require_once __DIR__ . '/core/helper.php';
require_once __DIR__ . '/core/lisensi.php';

$namaAplikasi = getSetting($conn, 'nama_aplikasi', 'TKA Kecamatan');
$isExpired    = isset($_GET['expired']);
$error        = '';
$success      = '';

// Cek status saat ini
$status = lisensiCek();

// Catatan: redirect ke login dihapus supaya pengguna bisa mengganti key lisensi
// kapan saja meskipun lisensi lama masih aktif.
$canReplace = $status['valid'] && !$status['expired'];

// Proses form aktivasi
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $key = strtoupper(trim($_POST['license_key'] ?? ''));
    $key = preg_replace('/[^A-Z0-9\-]/', '', $key);

    if (!$key) {
        $error = 'Kunci lisensi wajib diisi.';
    } else {
        $decoded = lisensiDecode($key);
        if (!$decoded) {
            $error = 'Kunci lisensi tidak valid atau sudah dimodifikasi.';
        } else {
            $today    = date('Y-m-d');
            $hariSisa = (int)ceil((strtotime($decoded['expired']) - strtotime($today)) / 86400);
            if ($hariSisa < 0) {
                $error = 'Kunci lisensi sudah kedaluwarsa sejak ' . date('d F Y', strtotime($decoded['expired'])) . '.';
            } else {
                // Simpan lisensi
                if (lisensiSimpan($key)) {
                    $success = 'Aktivasi berhasil! Masa aktif hingga <strong>'
                             . date('d F Y', strtotime($decoded['expired']))
                             . '</strong> (' . $hariSisa . ' hari).';
                } else {
                    $error = 'Gagal menyimpan lisensi. Pastikan folder aplikasi bisa ditulis.';
                }
            }
        }
    }
}
?>
<!DOCTYPE html>
<html lang="id">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Aktivasi Lisensi — <?= e($namaAplikasi) ?></title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
<style>
*{box-sizing:border-box;margin:0;padding:0}
body{
    background:linear-gradient(135deg,#0f172a 0%,#1e3a8a 60%,#1e40af 100%);
    min-height:100vh;font-family:'Segoe UI',Arial,sans-serif;
    display:flex;align-items:center;justify-content:center;padding:24px 16px;
}
.wrap{max-width:460px;width:100%}

/* Card */
.card-main{background:#fff;border-radius:20px;overflow:hidden;box-shadow:0 25px 60px rgba(0,0,0,.4)}

/* Top banner */
.banner{padding:32px 28px 24px;text-align:center;position:relative;overflow:hidden}
.banner.normal{background:linear-gradient(135deg,#1e3a8a,#1d4ed8)}
.banner.expired{background:linear-gradient(135deg,#7f1d1d,#dc2626)}
.banner::before{content:'';position:absolute;top:-40px;right:-40px;width:160px;height:160px;border-radius:50%;background:rgba(255,255,255,.06)}
.banner::after{content:'';position:absolute;bottom:-30px;left:-30px;width:120px;height:120px;border-radius:50%;background:rgba(255,255,255,.04)}
.banner-icon{font-size:48px;margin-bottom:12px;display:block;position:relative;z-index:1}
.banner-title{font-size:22px;font-weight:900;color:#fff;margin-bottom:6px;position:relative;z-index:1}
.banner-sub{font-size:13px;color:rgba(255,255,255,.8);position:relative;z-index:1}

/* Body */
.card-body-inner{padding:28px}

/* Alert */
.alert-custom{border-radius:10px;padding:12px 16px;font-size:13px;margin-bottom:18px;display:flex;align-items:flex-start;gap:10px}
.alert-error{background:#fef2f2;border:1.5px solid #fca5a5;color:#dc2626}
.alert-success{background:#f0fdf4;border:1.5px solid #86efac;color:#166534}
.alert-warn{background:#fefce8;border:1.5px solid #fde68a;color:#854d0e}

/* Form */
.field-label{font-size:11px;font-weight:800;color:#475569;text-transform:uppercase;letter-spacing:1px;margin-bottom:8px;display:block}
.key-input{width:100%;background:#f8fafc;border:2px solid #e2e8f0;border-radius:10px;padding:14px 16px;font-size:20px;font-weight:800;font-family:'Courier New',monospace;letter-spacing:4px;text-transform:uppercase;text-align:center;color:#1e293b;outline:none;transition:border .15s,box-shadow .15s}
.key-input:focus{border-color:#1e3a8a;background:#eff6ff;box-shadow:0 0 0 4px rgba(30,58,138,.12)}
.key-input::placeholder{color:#cbd5e1;letter-spacing:2px;font-size:16px}

.btn-aktivasi{width:100%;background:#1e3a8a;border:none;border-radius:10px;padding:14px;font-size:15px;font-weight:800;color:#fff;cursor:pointer;margin-top:6px;transition:background .15s;display:flex;align-items:center;justify-content:center;gap:8px}
.btn-aktivasi:hover{background:#1e40af}

/* Info box */
.info-box{background:#f8fafc;border:1px solid #e2e8f0;border-radius:10px;padding:14px 16px;margin-top:18px}
.info-box-title{font-size:11px;font-weight:800;color:#64748b;text-transform:uppercase;letter-spacing:1px;margin-bottom:8px}
.info-row{display:flex;justify-content:space-between;align-items:center;font-size:12px;padding:4px 0}
.info-row:not(:last-child){border-bottom:1px solid #f1f5f9}
.info-key{color:#94a3b8;font-weight:600}
.info-val{color:#1e293b;font-weight:700;font-family:'Courier New',monospace}
.info-val.ok{color:#166534}
.info-val.warn{color:#854d0e}
.info-val.err{color:#dc2626}

/* Expired detail */
.expired-box{background:#fef2f2;border:1.5px solid #fca5a5;border-radius:12px;padding:18px;text-align:center;margin-bottom:20px}
.expired-days{font-size:48px;font-weight:900;color:#dc2626;line-height:1}
.expired-label{font-size:13px;color:#991b1b;margin-top:4px}

.divider-txt{text-align:center;color:#94a3b8;font-size:12px;margin:16px 0;display:flex;align-items:center;gap:8px}
.divider-txt::before,.divider-txt::after{content:'';flex:1;height:1px;background:#e2e8f0}

.contact-box{background:#eff6ff;border:1px solid #bfdbfe;border-radius:10px;padding:14px;text-align:center;font-size:13px;color:#1e3a8a}
.contact-box strong{display:block;margin-bottom:4px;font-size:14px}
.contact-box a{color:#1e3a8a;font-weight:700}

.footer-txt{text-align:center;margin-top:20px;font-size:11px;color:rgba(255,255,255,.5)}
</style>
</head>
<body>
<div class="wrap">
  <div class="card-main">

    <!-- Banner -->
    <div class="banner <?= $isExpired ? 'expired' : 'normal' ?>">
      <?php if ($isExpired): ?>
        <span class="banner-icon">⏰</span>
        <div class="banner-title">Lisensi Kedaluwarsa</div>
        <div class="banner-sub">Masa aktif aplikasi telah berakhir</div>
      <?php elseif ($canReplace): ?>
        <span class="banner-icon">🔄</span>
        <div class="banner-title">Ganti Kunci Lisensi</div>
        <div class="banner-sub">Masukkan key baru untuk menggantikan lisensi aktif</div>
      <?php else: ?>
        <span class="banner-icon">🔑</span>
        <div class="banner-title">Aktivasi Lisensi</div>
        <div class="banner-sub"><?= e($namaAplikasi) ?></div>
      <?php endif; ?>
    </div>

    <div class="card-body-inner">

      <?php if ($canReplace && !$success): ?>
      <div class="alert-custom alert-warn">
        <i class="bi bi-info-circle-fill" style="font-size:16px;flex-shrink:0;margin-top:1px"></i>
        <span>Lisensi saat ini masih aktif hingga <strong><?= date('d F Y', strtotime($status['expired_date'])) ?></strong>. Masukkan key baru untuk menggantinya. &nbsp;<a href="<?= appUrl('login.php') ?>" style="color:#854d0e;font-weight:700">← Kembali ke Login</a></span>
      </div>
      <?php endif; ?>

      <?php if ($error): ?>
      <div class="alert-custom alert-error">
        <i class="bi bi-exclamation-triangle-fill" style="font-size:16px;flex-shrink:0;margin-top:1px"></i>
        <span><?= $error ?></span>
      </div>
      <?php endif; ?>

      <?php if ($success): ?>
      <div class="alert-custom alert-success">
        <i class="bi bi-check-circle-fill" style="font-size:16px;flex-shrink:0;margin-top:1px"></i>
        <span><?= $success ?> <a href="<?= appUrl('login.php') ?>" style="color:#166534;font-weight:700">→ Login sekarang</a></span>
      </div>
      <?php endif; ?>

      <?php if ($isExpired && $status['valid']): ?>
      <!-- Info expired -->
      <div class="expired-box">
        <div class="expired-days"><?= date('d M Y', strtotime($status['expired_date'])) ?></div>
        <div class="expired-label">Tanggal akhir masa aktif</div>
      </div>
      <?php endif; ?>

      <?php if (!$success): ?>
      <!-- Form input key -->
      <form method="POST" autocomplete="off">
        <label class="field-label">
          <i class="bi bi-key me-1"></i>Masukkan Kunci Lisensi
        </label>
        <input type="text" name="license_key" class="key-input"
               placeholder="XXXX-XXXX-XXXX-XXXX-XXXX"
               maxlength="24" required
               oninput="formatKey(this)"
               value="<?= e(strtoupper(trim($_POST['license_key'] ?? ''))) ?>">
        <div style="font-size:11px;color:#94a3b8;text-align:center;margin-top:6px;margin-bottom:14px">
          Format: XXXX-XXXX-XXXX-XXXX-XXXX &nbsp;·&nbsp; Hubungi pengembang untuk mendapatkan kunci lisensi
        </div>
        <button type="submit" class="btn-aktivasi">
          <i class="bi bi-shield-check"></i> <?= $canReplace ? 'Ganti Lisensi' : 'Aktifkan Lisensi' ?>
        </button>
      </form>

      <div class="divider-txt">butuh kunci lisensi?</div>

      <div class="contact-box">
        <strong>Hubungi Dukungan Resmi</strong>
        <span>PT. PERMAI JAYA KARYA SOLUSINDO</span>
        &nbsp;·&nbsp; PERJASINDO
      </div>
      <?php endif; ?>

      <?php if ($status['valid'] && !$success): ?>
      <!-- Info lisensi saat ini -->
      <div class="info-box" style="margin-top:18px">
        <div class="info-box-title"><i class="bi bi-info-circle me-1"></i>Lisensi Terpasang</div>
        <div class="info-row">
          <span class="info-key">Instansi</span>
          <span class="info-val"><?= e($status['nama']) ?></span>
        </div>
        <div class="info-row">
          <span class="info-key">Berakhir</span>
          <span class="info-val <?= $status['expired'] ? 'err' : ($status['hari_sisa'] <= 14 ? 'warn' : 'ok') ?>">
            <?= date('d/m/Y', strtotime($status['expired_date'])) ?>
          </span>
        </div>
        <div class="info-row">
          <span class="info-key">Sisa Hari</span>
          <span class="info-val <?= $status['expired'] ? 'err' : ($status['hari_sisa'] <= 14 ? 'warn' : 'ok') ?>">
            <?= $status['expired'] ? 'Expired' : $status['hari_sisa'] . ' hari' ?>
          </span>
        </div>
      </div>
      <?php endif; ?>

    </div><!-- /card-body-inner -->
  </div><!-- /card-main -->

  
</div>

<script>
function formatKey(input) {
    let val = input.value.replace(/[^A-Za-z0-9]/g, '').toUpperCase();
    let parts = val.match(/.{1,4}/g) || [];
    input.value = parts.join('-').substr(0, 24);
}
</script>
</body>
</html>
