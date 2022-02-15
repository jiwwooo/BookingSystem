<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html lang="en">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<script type="text/javascript">
	
	//id invalid check
	let isIdValid = false;
	
	 //pwd 有効性　check
	let isPwdValid = false;
	 
	let isPhoneValid = false;
	 
	let phoneT = /^010([0-9]{8})$/;

	$('loginForm').ready(function(){
		console.log('hello!');
		$("#id").on("input",function(){
			
		let inputId=$(this).val();
		
		//first remove two classes of validation
				$(this).removeClass("is-valid is-invalid");
				if(inputId.length==0){
					$(this).addClass("is-invalid");
					isIdValid=false;
				}else{
					$(this).addClass("is-valid");
					isIdValid=true;
				}
				
					setButtonState();
			
			});

		$("#pwd").on("click",function(){
			//read input values
			let inputPwd=$(this).val();
			//first remove two classes of validation
			$(this).removeClass("is-valid is-invalid ");
			console.log(inputPwd.length);
			if(inputPwd.length == 0){
				$(this).siblings(".invalid-feedback").html("password");
				$(this).addClass("is-invalid");
				isPwdValid=false;
			}
			setButtonState();
		});
		
		$("#pwd").on("input",function(){
			//read input values
			let inputPwd=$(this).val();
			//first remove two classes of validation
			$(this).removeClass("is-valid is-invalid ");
			console.log(inputPwd.length);
			if(inputPwd.length == 0){
				$(this).siblings(".invalid-feedback").html("パスワードを入力してください");
				$(this).addClass("is-invalid");
				isPwdValid=false;
			}else if(inputPwd.length>=5){
				$(this).addClass("is-valid");
				isPwdValid=true;
			}else{
				$(this).siblings(".invalid-feedback").html("五つ以上入力してください。");
				$(this).addClass("is-invalid");
				isPwdValid=false;
			}
			setButtonState();
		}); //pwd check function 
		
		$("#phone").on("input", function(){
			let inputPhone =$(this).val();
				
			if(phoneT.test($(this).val())){
				$(this).siblings(".invalid-feedback").html("電話番号は010xxxxxxxx 形式で入力してください");
				$(this).addClass("is-valid");
				isPhoneValid = true;
			}else{
				$(this).addClass("is-invalid");
				isPhoneValid = false;
				$(this).addClass("is-valid");
				isPhoneValid = true;
			}
			
			setButtonState();
		});
		
		function setButtonState(){
			if(isPwdValid||isIdValid||isPhoneValid){
				//if form is acceptable
				$("button[type=submit]").removeAttr("disabled");	
			}else{//unacceptable
				$("button[type=submit]").attr("disabled","disabled");
			}
		}

		
		$("#loginForm").on("submit",function(e){
			if(!isPwdValid){
				return false;
			}
			
		});
		
	});
	
</script>


    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Creative - Start Bootstrap Theme</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap Icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <!-- SimpleLightbox plugin CSS-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body id="page-top"   >
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#page-top">ジウホテル</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link" href="#about">紹介</a></li>
                        <li class="nav-item"><a class="nav-link" href="#services">相談</a></li>
                        <li class="nav-item"><a class="nav-link" href="#portfolio">施設</a></li>
                       <%if (session.getAttribute("name") != null || session.getAttribute("phone")!=null) {
                    	   %>
                        <li class="nav-item"><a class="nav-link" href="#contact">ログイン</a></li>
                      <%  }else{%>
                        <li class="nav-item"><a class="nav-link" href="/logout">ログアウト</a></li>
                      <%  }%>
                       
                       
                       
                       
                        <li class="nav-item"><a class="nav-link" href="#booking" >予約</a></li>
                    </ul>
                </div>
            </div>
        </nav>
<body>
  
        <!-- Masthead-->
        <header class="masthead">
            <div class="container px-4 px-lg-5 h-100">
                <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-8 align-self-end">
                        <h1 class="text-white font-weight-bold">ようこそ！ジウホテルへ</h1>
                        <hr class="divider" />
                    </div>
                    <div class="col-lg-8 align-self-baseline">
                        <p class="text-white-75 mb-5">Start Bootstrap can help you build better websites using the Bootstrap framework! Just download a theme and start customizing, no strings attached!</p>
                        <a class="btn btn-primary btn-xl" href="#about">次に</a>
                    </div>
                </div>
            </div>
        </header>
        <!-- About-->
        <section class="page-section bg-primary" id="about">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-8 text-center">
                        <h2 class="text-white mt-0">様々なサービスが用意してあります。</h2>
                        <hr class="divider divider-light" />
                        <p class="text-white-75 mb-4">興味ありますか</p>
                        <a class="btn btn-light btn-xl" href="#services">じゃ、スタート！！</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- Services-->
        <section class="page-section" id="services">
            <div class="container px-4 px-lg-5">
                <h2 class="text-center mt-0">ジウホテルならではのサービス！</h2>
                <hr class="divider" />
                <div class="row gx-4 gx-lg-5">
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi-gem fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">Sturdy Themes</h3>
                            <p class="text-muted mb-0">Our themes are updated regularly to keep them bug free!</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi-laptop fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">Up to Date</h3>
                            <p class="text-muted mb-0">All dependencies are kept current to keep things fresh.</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi-globe fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">Ready to Publish</h3>
                            <p class="text-muted mb-0">You can use this design as is, or you can make changes!</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi-heart fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2　">おもてなし</h3>
                            <p class="text-muted mb-0">Is it really open source if it's not made with love?</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Portfolio-->
        <div id="portfolio">
            <div class="container-fluid p-0">
                <div class="row g-0">
                    
                    
                    
                    
                     <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="images/gym.jpg" title="Project Name">
                            <img class="img-fluid" src="images/gym.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Facility</div>
                                <div class="project-name"> Gym</div>
                            </div>
                        </a>
                    </div>
 
                    <div class="col-lg-4 col-sm-6">
                     <a class="portfolio-box" href="images/pool.jpg" title="Project Name">
                            <img class="img-fluid" src="images/pool.jpg" alt="..." />
                            <div class="portfolio-box-caption entertainment">
                                <div class="project-category text-white-50">Entertainment</div>
                                <div class="project-name">Swimming Pool</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="images/buffet.jpg" title="Project Name">
                            <img class="img-fluid" src="images/buffet.jpg" alt="..." />
                            <div class="portfolio-box-caption dining">
                                <div class="project-category text-white-50">Dining</div>
                                <div class="project-name">Dining room</div>
                            </div>
                        </a>
                    </div>
                    
                    
                     
                     <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="images/lounge.jpg" title="Project Name">
                            <img class="img-fluid" src="images/lounge.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Facility</div>
                                <div class="project-name">Lounge </div>
                            </div>
                        </a>
                    </div>
                    
                     <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="images/am1.jpg" title="Project Name">
                            <img class="img-fluid" src="images/am1.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Facility</div>
                                <div class="project-name">Camp Fire </div>
                            </div>
                        </a>
                    </div>
                    
                    
                    
                     <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="images/l1.jpeg" title="Project Name">
                            <img class="img-fluid" src="images/l1.jpeg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Entertainment</div>
                                <div class="project-name">Bar </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="images/food.jpg" title="Project Name">
                            <img class="img-fluid" src="images/food.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Dining</div>
                                <div class="project-name">Set A </div>
                            </div>
                        </a>
                    </div>
                    
                    
                    
                     <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="images/food1.jpg" title="Project Name">
                            <img class="img-fluid" src="images/food1.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Dining</div>
                                <div class="project-name">Set B</div>
                            </div>
                        </a>
                    </div>
                    
                    
                     <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="images/food2.jpg" title="Project Name">
                            <img class="img-fluid" src="images/food2.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Dining</div>
                                <div class="project-name">Set B</div>
                            </div>
                        </a>
                    </div>
                    
                    
                    
                   
              
                </div>
            </div>
        </div>
       
        <!-- Contact-->
        <section class="page-section contact" id="contact">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-8 col-xl-6 text-center">
                        <h2 class="mt-0">連絡先を教えてください！</h2>
                        <hr class="divider" />
                        <p class="text-muted mb-5">相談と予約ができます！</p>
                    </div>
                </div>
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
                            <div class="form-floating mb-3 ">
                                <input class="form-control" id="id" type="text" name="id" placeholder="あなたの名前を書いてください"  />
                                <label for=id>Full name</label>
                                <div class="invalid-feedback" >名前が必要です。</div>
                            </div>
                            <!-- Email address input-->
                            <div class="form-floating mb-3 ">
                                <input class="form-control" id="pwd" type="password" name="pwd" placeholder= "PWD">
                                <label for="pwd">Password</label>
                              <!--   <div class="invalid-feedback" >暗証番号は5字以上です。</div> -->
                                <div class="invalid-feedback"></div>
                                
                              <!--   <div class="invalid-feedback" data-sb-feedback="email:email">Email is not valid.</div> -->
                            </div>
                            <!-- Phone number input-->
                            <div class="form-floating mb-3 ">
                                <input class="form-control" id="phone" type="tel" name ="phone" placeholder="123-456-7890"  />
                                <label for="phone">Phone number</label>
                                <div class="invalid-feedback" >携帯番号が必要です。</div>
                            </div>
                            <p> COPY <br>AdminID = X#$admin951$#X  <br>Passsword = 12345</p>
                            
                            
                            <button class="btn btn-outline-success" type="submit" disabled="disabled">加入</button>
						</form>
                            <!-- Title input-->
                            <!-- <div class="form-floating mb-3">
                                <textarea class="form-control" id="message" name ="title" type="text" placeholder="タイトルを書いてください"  data-sb-validations="required"></textarea>
                                <label for="message">Title</label> 
                                <div class="invalid-feedback" data-sb-feedback="message:required">タイトルが必要です。</div>
                            </div>
                             -->
                            
                            <!-- Message input-->
                            <!-- <div class="form-floating mb-3">
                                <textarea class="form-control" id="message"name ="title" type="text" placeholder="内容を書いてください" style="height: 10rem" data-sb-validations="required"></textarea>
                                <label for="message">Contents</label>
                                <div class="invalid-feedback" data-sb-feedback="message:required">内容が必要です。</div>
                            </div> -->
                            <!-- Submit success message-->
                            <!---->
                            <!-- This is what your users will see when the form-->
                            <!-- has successfully submitted-->
                       <!--      <div class="d-none" id="submitSuccessMessage">
                                <div class="text-center mb-3">
                                    <div class="fw-bolder">Form submission successful!</div>
                                    To activate this form, sign up at
                                    <br />
                                    <a href="consultList">相談内容確認します</a>
                                </div>
                            </div> -->
                            <!-- Submit error message-->
                            <!---->
                            <!-- This is what your users will see when there is-->
                            <!-- an error submitting the form-->
                            <!-- <div class="d-none" id="submitErrorMessage"><div class="text-center text-danger mb-3">Error sending message!</div></div>
                            Submit Button
                            <div class="d-grid"><button class="btn btn-primary btn-xl disabled" id="submitButton" type="submit">Submit</button></div> -->
                        </form>
                    </div>
                </div>
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-4 text-center mb-5 mb-lg-0">
                        <i class="bi-phone fs-2 mb-3 text-muted"></i>
                        <div>010-8879-9237</div>
                    </div>
                </div>
            </div>
        </section>
        
        
         <!-- Call to action-->
        <section class="page-section bg-dark text-white" id="booking">
            <div class="container px-4 px-lg-5 text-center">
                <h2 class="mb-4">予約しよう！</h2>
                <% if(session.getAttribute("name")!=null){
                	%>
                <a class="btn btn-light btn-xl contactCheck" href="roomInfoList1">Booking Now!</a>
                <%}else{ 
                %>

                <a class="btn btn-light btn-xl contactCheck" href="#contact" >Booking Now!</a>
                
                <%} %>
            </div>
        </section>
      
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- SimpleLightbox plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
    <script type="text/javascript">
    $(document).ready(function(){
    	$(".contactCheck").on("click",function(){
    		if(${empty sessionScope.name}){
    			alert("まず連絡先を入力してください");
    		} else{
    			location.href="/roomInfoList";
    		}
    	})
    })
    	function contactCheck(){
    		/* if(session.getAttribute("name")!=null){
    			alert("まず連絡先を入力してください");
    		} else */
    	}
    
    </script>
</html>
