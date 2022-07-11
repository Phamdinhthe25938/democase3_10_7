<%--
  Created by IntelliJ IDEA.
  User: phamd
  Date: 7/2/2022
  Time: 2:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">--%>
<%--<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>--%>
<%--<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>--%>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="/style.css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Bootstrap 4 Login/Register Form</title>
    <style>

        /* sign in FORM */
        #logreg-forms{
            width:412px;
            margin:10vh auto;
            background-color:#f3f3f3;
            box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
            transition: all 0.3s cubic-bezier(.25,.8,.25,1);
        }
        #logreg-forms form {
            width: 100%;
            max-width: 410px;
            padding: 15px;
            margin: auto;
        }
        #logreg-forms .form-control {
            position: relative;
            box-sizing: border-box;
            height: auto;
            padding: 10px;
            font-size: 16px;
        }
        #logreg-forms .form-control:focus { z-index: 2; }
        #logreg-forms .form-signin input[type="email"] {
            margin-bottom: -1px;
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
        }
        #logreg-forms .form-signin input[type="password"] {
            border-top-left-radius: 0;
            border-top-right-radius: 0;
        }

        #logreg-forms .social-login{
            width:390px;
            margin:0 auto;
            margin-bottom: 14px;
        }
        #logreg-forms .social-btn{
            font-weight: 100;
            color:white;
            width:190px;
            font-size: 0.9rem;
        }

        #logreg-forms a{
            display: block;
            padding-top:10px;
            color:lightseagreen;
        }

        #logreg-form .lines{
            width:200px;
            border:1px solid red;
        }


        #logreg-forms button[type="submit"]{ margin-top:10px; }

        #logreg-forms .facebook-btn{  background-color:#3C589C; }

        #logreg-forms .google-btn{ background-color: #DF4B3B; }

        #logreg-forms .form-reset, #logreg-forms .form-signup{ display: none; }

        #logreg-forms .form-signup .social-btn{ width:210px; }

        #logreg-forms .form-signup input { margin-bottom: 2px;}

        .form-signup .social-login{
            width:210px !important;
            margin: 0 auto;
        }

        /* Mobile */

        @media screen and (max-width:500px) {
            #logreg-forms {
                width: 300px;
            }

            #logreg-forms .social-login {
                width: 200px;
                margin: 0 auto;
                margin-bottom: 10px;
            }

            #logreg-forms .social-btn {
                font-size: 1.3rem;
                font-weight: 100;
                color: white;
                width: 200px;
                height: 56px;

            }

            #logreg-forms .social-btn:nth-child(1) {
                margin-bottom: 5px;
            }

            #logreg-forms .social-btn span {
                display: none;
            }

            #logreg-forms .facebook-btn:after {
                content: 'Facebook';
            }

            #logreg-forms .google-btn:after {
                content: 'Google+';
            }

            .row.heading h2 {
                color: #fff;
                font-size: 52.52px;
                line-height: 95px;
                font-weight: 400;
                text-align: center;
                margin: 0 0 40px;
                padding-bottom: 20px;
                text-transform: uppercase;
            }

            ul {
                margin: 0;
                padding: 0;
                list-style: none;
            }

            .heading.heading-icon {
                display: block;
            }

            .padding-lg {
                display: block;
                padding-top: 60px;
                padding-bottom: 60px;
            }

            .practice-area.padding-lg {
                padding-bottom: 55px;
                padding-top: 55px;
            }

            .practice-area .inner {
                border: 1px solid #999999;
                text-align: center;
                margin-bottom: 28px;
                padding: 40px 25px;
            }

            .our-webcoderskull .cnt-block:hover {
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
                border: 0;
            }

            .practice-area .inner h3 {
                color: #3c3c3c;
                font-size: 24px;
                font-weight: 500;
                font-family: 'Poppins', sans-serif;
                padding: 10px 0;
            }

            .practice-area .inner p {
                font-size: 14px;
                line-height: 22px;
                font-weight: 400;
            }

            .practice-area .inner img {
                display: inline-block;
            }


            .our-webcoderskull {
                background: url("http://www.webcoderskull.com/img/right-sider-banner.png") no-repeat center top / cover;

            }

            .our-webcoderskull .cnt-block {
                float: left;
                width: 100%;
                background: #fff;
                padding: 30px 20px;
                text-align: center;
                border: 2px solid #d5d5d5;
                margin: 0 0 28px;
            }

            .our-webcoderskull .cnt-block figure {
                width: 148px;
                height: 148px;
                border-radius: 100%;
                display: inline-block;
                margin-bottom: 15px;
            }

            .our-webcoderskull .cnt-block img {
                width: 148px;
                height: 148px;
                border-radius: 100%;
            }

            .our-webcoderskull .cnt-block h3 {
                color: #2a2a2a;
                font-size: 20px;
                font-weight: 500;
                padding: 6px 0;
                text-transform: uppercase;
            }

            .our-webcoderskull .cnt-block h3 a {
                text-decoration: none;
                color: #2a2a2a;
            }

            .our-webcoderskull .cnt-block h3 a:hover {
                color: #337ab7;
            }

            .our-webcoderskull .cnt-block p {
                color: #2a2a2a;
                font-size: 13px;
                line-height: 20px;
                font-weight: 400;
            }

            .our-webcoderskull .cnt-block .follow-us {
                margin: 20px 0 0;
            }

            .our-webcoderskull .cnt-block .follow-us li {
                display: inline-block;
                width: auto;
                margin: 0 5px;
            }

            .our-webcoderskull .cnt-block .follow-us li .fa {
                font-size: 24px;
                color: #767676;
            }

            .our-webcoderskull .cnt-block .follow-us li .fa:hover {
                color: #025a8e;
            }
        }
    </style>
</head>
<body>
<%--    <div class="row">--%>
<%--        <div class="col-7"><section class="our-webcoderskull padding-lg">--%>
<%--            <div class="container">--%>
<%--                <div class="row heading heading-icon">--%>
<%--                    <h2>Our Team</h2>--%>
<%--                </div>--%>
<%--                <ul class="row" style="list-style: none">--%>
<%--                    <li class="col-12 ">--%>
<%--                        <div class="cnt-block equal-hight" style="height: 349px;">--%>
<%--                            <figure><img style="width: 210px;" src="http://www.webcoderskull.com/img/team4.png" class="img-responsive" alt=""></figure>--%>
<%--                            <h3><a href="http://www.webcoderskull.com/">Web coder skull</a></h3>--%>
<%--                            <p>Freelance Web Developer</p>--%>
<%--                            <ul class="follow-us clearfix"style="   margin-bottom: 0; list-style: none;display: flex;justify-content: space-between;padding: 0;" >--%>
<%--                                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>--%>
<%--                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>--%>
<%--                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
<%--                    </li>--%>
<%--                    <li class="col-4 ">--%>
<%--                        <div class="cnt-block equal-hight" style="height: 349px;">--%>
<%--                            <figure><img style="width: 210px;" src="http://www.webcoderskull.com/img/team1.png" class="img-responsive" alt=""></figure>--%>
<%--                            <h3><a href="#">Kappua </a></h3>--%>
<%--                            <p>Freelance Web Developer</p>--%>
<%--                            <ul class="follow-us clearfix" style="   margin-bottom: 0; list-style: none;display: flex;justify-content: space-between;padding: 0;">--%>
<%--                                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>--%>
<%--                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>--%>
<%--                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
<%--                    </li>--%>
<%--                    <li class="col-4 ">--%>
<%--                        <div class="cnt-block equal-hight" style="height: 349px;">--%>
<%--                            <figure><img  style="width: 210px;" src="http://www.webcoderskull.com/img/team4.png" class="img-responsive" alt=""></figure>--%>
<%--                            <h3><a href="http://www.webcoderskull.com/">Manish </a></h3>--%>
<%--                            <p>Freelance Web Developer</p>--%>
<%--                            <ul class="follow-us clearfix " style="   margin-bottom: 0; list-style: none;display: flex;justify-content: space-between;padding: 0;">--%>
<%--                                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>--%>
<%--                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>--%>
<%--                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
<%--                    </li>--%>
<%--                    <li class="col-4 ">--%>
<%--                        <div class="cnt-block equal-hight" style="height: 349px;">--%>
<%--                            <figure><img style="width: 210px;" src="http://www.webcoderskull.com/img/team2.png" class="img-responsive" alt=""></figure>--%>
<%--                            <h3><a href="http://www.webcoderskull.com/">Atul </a></h3>--%>
<%--                            <p>Freelance Web Developer</p>--%>
<%--                            <ul class="follow-us clearfix" style="   margin-bottom: 0; list-style: none;display: flex;justify-content: space-between;padding: 0;">--%>
<%--                                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>--%>
<%--                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>--%>
<%--                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
<%--                    </li>--%>
<%--                </ul>--%>
<%--            </div>--%>
<%--        </section></div>--%>
<%--        <div class="col-5">--%>
            <div id="logreg-forms">
                <form class="form-signin" action="/login"method="post">
                    <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign in</h1>
                    <div class="social-login">
                        <button class="btn facebook-btn social-btn" type="button"><span><i class="fab fa-facebook-f"></i> Sign in with Facebook</span> </button>
                        <button class="btn google-btn social-btn" type="button"><span><i class="fab fa-google-plus-g"></i> Sign in with Google+</span> </button>
                    </div>
                    <p style="text-align:center"> OR  </p>
                    <input type="text" name="username" id="inputEmail" class="form-control" placeholder="Email address" required="" autofocus="">
                    <input type="text" name="password" id="inputPassword" class="form-control" placeholder="Password" required="">
                    <div>
                        <%
                            String message = (String) request.getAttribute("message");
                            if(message !=null){
                                out.print(message);
                            }
                        %>
                    </div>
                    <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i> Sign in</button>
                    <a href="#" id="forgot_pswd">Forgot password?</a>
                    <hr>
                    <!-- <p>Don't have an account!</p>  -->
                    <%--        <a href="/login?action=signup">--%>
                    <button class="btn btn-primary btn-block" type="button" id="btn-signup"><i class="fas fa-user-plus"></i> Sign up New Account</button>
                    <%--&lt;%&ndash;        </a>--%>
                </form>

                <form action="/reset/password/" class="form-reset">
                    <input type="email" id="resetEmail" class="form-control" placeholder="Email address" required="" autofocus="">
                    <button class="btn btn-primary btn-block" type="submit">Reset Password</button>
                    <a href="#" id="cancel_reset"><i class="fas fa-angle-left"></i> Back</a>
                </form>

                <form action="/login?action=signup" method="post" class="form-signup">
                    <div class="social-login">
                        <button class="btn facebook-btn social-btn" type="button"><span><i class="fab fa-facebook-f"></i> Sign up with Facebook</span> </button>
                    </div>
                    <div class="social-login">
                        <button class="btn google-btn social-btn" type="button"><span><i class="fab fa-google-plus-g"></i> Sign up with Google+</span> </button>
                    </div>

                    <p style="text-align:center">OR</p>
                    <input type="text" name="userName" id="user-name" class="form-control" placeholder="Full name" required="" autofocus="">
                    <input type="date" name="userBirthday" id="user-age" class="form-control" placeholder="Full name" required="" autofocus="">
                    <input type="number" name="userNumber" id="user-number" class="form-control" placeholder="Number Telephone" required="" autofocus="">
                    <input type="email" name="userEmail" id="user-mail" class="form-control" placeholder="Gmail" required="" autofocus="">
                    <input type="text" name="userPassword" id="user-pass" class="form-control" placeholder="Password" required autofocus="">
                    <input type="text" name="userPasswordAgain" id="user-repeatpass" class="form-control" placeholder="Repeat Password" required autofocus="">
                    <input type="text" name="userAddress" id="user-address" class="form-control" placeholder="Address" required autofocus="">
                    <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i> Sign Up</button>
                    <a href="#" id="cancel_signup"><i class="fas fa-angle-left"></i> Back</a>
                </form>
                <br>

            </div>
<%--        </div>--%>
<%--    </div>--%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="/script.js"></script>
</body>
</html>
<script>
    function toggleResetPswd(e){
        e.preventDefault();
        $('#logreg-forms .form-signin').toggle() // display:block or none
        $('#logreg-forms .form-reset').toggle() // display:block or none
    }

    function toggleSignUp(e){
        e.preventDefault();
        $('#logreg-forms .form-signin').toggle(); // display:block or none
        $('#logreg-forms .form-signup').toggle(); // display:block or none
    }

    $(()=>{
        // Login Register Form
        $('#logreg-forms #forgot_pswd').click(toggleResetPswd);
        $('#logreg-forms #cancel_reset').click(toggleResetPswd);
        $('#logreg-forms #btn-signup').click(toggleSignUp);
        $('#logreg-forms #cancel_signup').click(toggleSignUp);
    })
</script>
