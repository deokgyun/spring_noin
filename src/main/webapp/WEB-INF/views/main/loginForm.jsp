<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<head>
    <meta charset="utf-8"/>
    <title>로그인</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description"/>
    <meta content="Themesbrand" name="author"/>
    <!-- App favicon -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/assets/images/favicon.ico">

    <!-- owl.carousel css -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath }/resources/assets/libs/owl.carousel/assets/owl.carousel.min.css">

    <link rel="stylesheet"
          href="${pageContext.request.contextPath }/resources/assets/libs/owl.carousel/assets/owl.theme.default.min.css">

    <!-- Bootstrap Css -->
    <link href="${pageContext.request.contextPath }/resources/assets/css/bootstrap.min.css" id="bootstrap-style"
          rel="stylesheet" type="text/css"/>
    <!-- Icons Css -->
    <link href="${pageContext.request.contextPath }/resources/assets/css/icons.min.css" rel="stylesheet"
          type="text/css"/>
    <!-- App Css-->
    <link href="${pageContext.request.contextPath }/resources/assets/css/app.min.css" id="app-style" rel="stylesheet"
          type="text/css"/>

</head>
<body>
<div class="account-pages my-5 pt-sm-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6 col-xl-5">
                <div class="card overflow-hidden">
                    <div class="card-body pt-0">
                        <div class="p-2">
                            <form class="form-horizontal" action="${pageContext.request.contextPath }/member/loginProcess" method="post">
                                <div class="mb-3">
                                    <h2 class="p-3" style="text-align: center">로그인</h2>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">ID</label>
                                    <input type="text" class="form-control" name="id" placeholder="Enter id">
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Password</label>
                                    <div class="input-group auth-pass-inputgroup">
                                        <input type="password" class="form-control" placeholder="Enter password"
                                               aria-label="Password" aria-describedby="password-addon">
                                        <button class="btn btn-light" type="button" id="password-addon"><i
                                                class="mdi mdi-eye-outline"></i></button>
                                    </div>
                                </div>

                                <div class="hstack gap-3">
                                    <div class="form-check me-auto">
                                        <input class="form-check-input" type="checkbox" id="remember" name="remember">
                                        <label class="form-check-label" for="remember">
                                            Remember me
                                        </label>
                                    </div>
                                    <div class="">
                                        <a href="auth-recoverpw.html" class="text-muted"><i
                                                class="mdi mdi-lock me-1"></i> 비밀번호 찾기</a>
                                    </div>
                                </div>

                                <div class="mt-3 d-grid">
                                    <button class="btn btn-primary waves-effect waves-light" type="submit">로그인
                                    </button>
                                </div>
                                <div class="mt-4 text-center">
                                    <a href="${pageContext.request.contextPath}/join"><h5 class="font-size-14 mb-3">회원가입</h5></a>
                                </div>


                            </form>
                        </div>

                    </div>
                </div>
                <div class="mt-5 text-center">

                    <div>
                        <p>Don't have an account ? <a href="auth-register.html" class="fw-medium text-primary"> Signup
                            now </a></p>
                        <p>©
                            <script>document.write(new Date().getFullYear())</script>
                            2023 Skote. Crafted with <i class="mdi mdi-heart text-danger"></i> by Themesbrand
                        </p>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>


<!-- JAVASCRIPT -->
<script src="${pageContext.request.contextPath }/resources/assets/libs/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/libs/metismenu/metisMenu.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/libs/simplebar/simplebar.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/libs/node-waves/waves.min.js"></script>
<!-- owl.carousel js -->
<script src="${pageContext.request.contextPath }/resources/assets/libs/owl.carousel/owl.carousel.min.js"></script>
<!-- auth-2-carousel init -->
<script src="${pageContext.request.contextPath }/resources/assets/js/pages/auth-2-carousel.init.js"></script>
<!-- App js -->
<script src="${pageContext.request.contextPath }/resources/assets/js/app.js"></script>
<script>
    const id = '${id}';
    if (id) {
        console.log(id);
        $("#id").val(id);
        $("#remember-check").prop('checked', true);
    }
</script>
</body>
</html>