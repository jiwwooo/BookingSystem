<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>





  <div class="row gx-4 gx-lg-5 justify-content-center mb-5">
                    <div class="col-lg-6">
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- * * SB Forms Contact Form * *-->
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- This form is pre-integrated with SB Forms.-->
                        <!-- To make this form functional, sign up at-->
                        <!-- https://startbootstrap.com/solution/contact-forms-->
                        <!-- to get an API token!-->
                        <form id="loginForm" action="login" method="post">
                            <!-- Name input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="id" type="text" name="id" placeholder="あなたの名前を書いてください"  />
                                <label for="name">Full name</label>
                                <div class="invalid-feedback" >名前が必要です。</div>
                            </div>
                            <!-- Email address input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="pwd" type="password" name="pwd" placeholder= "PWD">
                                <label for="pwd">Password</label>
                                <div class="invalid-feedback" >暗証番号が必要です。</div>
                              <!--   <div class="invalid-feedback" data-sb-feedback="email:email">Email is not valid.</div> -->
                            </div>
                            <!-- Phone number input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="phone" type="tel" placeholder="123-456-7890"  />
                                <label for="phone">Phone number</label>
                                <div class="invalid-feedback" >携帯番号が必要です。</div>
                            </div>
                            
                            
                            <button class="btn btn-outline-success"type="submit" disabled="disabled">加入</button>
	</form>
</body>
</html>

