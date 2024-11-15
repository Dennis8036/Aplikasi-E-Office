<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>RoyalUI Admin</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="../../vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="../../vendors/base/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="../../css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="../../images/" />
</head>

<body>
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth px-0">
        <div class="row w-100 mx-0">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                                <div class="d-flex flex-column align-items-center justify-content-center mb-3">
                                    <?php if (!empty($setting->logo_login)): ?>
                                        <img src="<?= base_url('images/img/' . $setting->logo_login) ?>" alt="Login Icon"
                                             class="img-fluid mb-3 logo-login" style="max-width: 150px;">
                                    <?php endif; ?>
                                </div>
              <h4>New here?</h4>
              <h6 class="font-weight-light">Signing up is easy. It only takes a few steps</h6>

              <table class="table">
                                <!-- General Form Elements -->
               <form action="<?= base_url('Home/aksi_register')?>" method="POST">

                <div class="form-group">
                  <input type="text" class="form-control"  name="username" placeholder="Username" required>
                </div>

<div class="form-group">
  <input type="password" class="form-control" name="password" placeholder="Password" minlength="8" required>
</div>


                <div class="form-group">
                  <input type="email" class="form-control"  name="email" placeholder="Email" required>
                </div>

                <div class="mb-4">
                  <div class="form-check">
                    <label class="form-check-label text-muted">
                      <input type="checkbox" class="form-check-input" required>
                      I agree to all Terms & Conditions
                    </label>
                  </div>
                </div>
                <div class="mt-3">
                  <button type="submit" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">Submit</button>
                </div>
                <div class="text-center mt-4 font-weight-light">
                  Already have an account? <a href="<?= base_url('Home/login')?>" class="text-primary">Login</a>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- plugins:js -->
  <script src="../../vendors/base/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="../../js/off-canvas.js"></script>
  <script src="../../js/hoverable-collapse.js"></script>
  <script src="../../js/template.js"></script>
  <script src="../../js/todolist.js"></script>
  <!-- endinject -->
</body>

</html>
