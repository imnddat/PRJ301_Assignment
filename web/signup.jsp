<%-- 
    Document   : signup
    Created on : Jun 8, 2021, 8:12:59 PM
    Author     : laptop
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="style.css">
        <script src="js/mycode.js"></script>
        <script>
            function check(){
                var pass = document.getElementById("password").value;
                var repass = document.getElementById("repassword").value;
                if(!(pass===repass)){
                    alert("Password and confirm password must be identical");
                }
                return pass===repass;
            }
        </script>
        <title>Đăng ký</title>
    </head>

    <body>

        <%@include file="footer_header/header.jsp" %>

        <div class="main">
            <div class="container-fluid mb-5 mt-5">
                
                <div class="row justify-content-center">
                    <div class="col-md-8">
                        <c:if test = "${requestScope.error != 'Dang ky thanh cong'}">
                                ${requestScope.error}
                        </c:if>
                        <div class="card">
                            <div class="card-header">Đăng ký</div>
                            <div class="-body p-4">
                                <form action="signup" method="post" onsubmit="return check()">

                                    <div class="form-group row">
                                        <label for="username" class="col-md-4 col-form-label text-md-right">Tên đăng nhập</label>
                                        <div class="col-md-6">
                                            <input type="text" id="username" class="form-control" name="username" value="${requestScope.info.username}" required autofocus>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="password" class="col-md-4 col-form-label text-md-right">Mật khẩu</label>
                                        <div class="col-md-6">
                                            <input type="password" id="password" class="form-control" name="password" required>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="repassword" class="col-md-4 col-form-label text-md-right">Nhập lại mật khẩu</label>
                                        <div class="col-md-6">
                                            <input type="password" id="repassword" class="form-control" name="repassword" required>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="email" class="col-md-4 col-form-label text-md-right">Email</label>
                                        <div class="col-md-6">
                                            <input type="email" id="repassword" class="form-control" name="email" value="${requestScope.info.email}" required>
                                        </div>
                                    </div>



                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                            Đăng ký
                                        </button>

                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="footer_header/footer.jsp" %>            

    </body>

</html>
