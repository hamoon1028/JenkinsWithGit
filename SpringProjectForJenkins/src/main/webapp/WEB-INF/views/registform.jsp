<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" data-layout="horizontal" data-layout-mode="light" data-topbar="light" data-sidebar="light" data-sidebar-size="sm" data-sidebar-image="none" data-preloader="disable">
<head>
<meta charset="UTF-8">
<title>타문타답 | 우리가 만드는 커리큘럼</title>
<link href="./assets/libs/sweetalert2/sweetalert2.min.css" rel="stylesheet" type="text/css" />
<%@ include file="./shared/_head_css.jsp" %>
</head>
<body class="twocolumn-panel">
	<div id="layout-wrapper">
		<%@ include file="./shared/_topbar.jsp" %>
		<%@ include file="./shared/_sidebar.jsp" %>
		<div class="main-content">
			<div class="page-content">
				<div class="container  bg-white">
				   <section class="auth-page-wrapper py-5 position-relative d-flex align-items-center justify-content-center">
				        <div class="container">
				        	<div class="row">
				        		<div class="text-center badge rounded-pill text-bg-light">
					   				<h1>회원가입</h1>
					   			</div>
				        		<div class="col-lg-12">
				        			<form action="./regist.do" method="post" class="row g-3 mt-1">
									    <div class="col-md-12 ">
									   		<label for="email" class="form-label"><b>이메일</b></label>
									   		<div class="input-group">
										        <input type="email" name="userEmail" class="form-control" id="email" placeholder="Email" required>
										        <button type="button" class="btn btn-primary w-lg" onclick="confirmMail()">이메일 인증</button>
									        </div>
											    <div class="form-check form-check-Success">
											        <input class="form-check-input" type="checkbox" hidden="" value="" id="confirmEmailCheck" disabled>
											        <label class="form-check-label" for="confirmEmailCheck" id="confirmEmail">
											           이메일 인증을 진행해 주세요.
											        </label>
											    </div>
									    </div>
									    <div class="col-md-2">
									           <label for="name" class="form-label"><b>이름</b></label>
									        <input type="text" class="form-control" id="name" placeholder="Name" name="userName" required>
									    </div>
									    <div class="col-md-5">
									           <label for="password" class="form-label"><b>비밀번호</b></label>
									        <input type="password" class="form-control" id="password" name="userPassword" placeholder="Password" required>
									    </div>
									    <div class="col-md-5">
									        <label for="passwordconfirm" class="form-label"><b>비밀번호 확인</b></label>
									        <input type="password" class="form-control" id="passwordconfirm" placeholder="Password Confirm" required>
									    </div>
									    <div class="col-md-6">
									        <label for="PhoneNumber"  class="form-label"><b>핸드폰 번호</b></label>
									        <div class="input-group">
									       		<input type="text" class="form-control" id="PhoneNumber"  name="userPhoneNumber" placeholder="-를 제외하고 입력해 주세요" required>
										        <button type="button" class="btn btn-primary w-lg" onclick="confirmPhone()">핸드폰 인증</button>
									        </div>
									         <div class="form-check form-check-Success">
											        <input class="form-check-input" type="checkbox" hidden="" value="" id="confirmPhoneCheck" disabled>
											        <label class="form-check-label" for="confirmPhoneCheck" id="confirmPhone">
											           핸드폰 인증을 진행해 주세요.
											        </label>
											    </div>
									    </div>
									    <div class="col-md-4">
									        <label for="birth" class="form-label"><b>생년월일</b></label>
										    <input type="date" class="form-control" name="userBirth" id="birth" required>
									    </div>
									    <div class="col-md-1">
									    	<label for="" class="form-label"><b>성별</b></label>
									    		<div class="form-check">
												    <input class="form-check-input" type="radio"  value="M" id="gender" name="userGender" required>
												    <label class="form-check-label" for="gender">
												        남자
												    </label>
												</div>
												<div class="form-check">
												    <input class="form-check-input" type="radio"  value="F" id="gender2" name="userGender" required>
												    <label class="form-check-label" for="gender2">
												        여자
												    </label>
												</div>
									    </div>
									     <div class="col-md-1">
									    	<label for="" class="form-label"><b>유형</b></label>
									    		<div class="form-check">
												    <input class="form-check-input" type="radio" value="S" id="auth" name="userAuth" checked required>
												    <label class="form-check-label" for="auth">
												        학생
												    </label>
												</div>
												<div class="form-check">
												    <input class="form-check-input" type="radio" value="I" id="auth2" name="userAuth" required>
												    <label class="form-check-label" for="auth2">
												        강사
												    </label>
												</div>
									    </div>
	    						        <div class="text-center">
					           				 <button type="submit" class="btn btn-primary col-lg-12">회원가입</button>
					     			   </div>
									</form>
				        		</div><!-- end col-7 -->
				        	</div>
				        </div><!--end container-->
    				</section><!--end section -->
				</div>
			</div>
			<%@ include file="./shared/_footer.jsp" %>
		</div>
	</div>	
	<%@ include file="./shared/_vender_scripts.jsp" %>
	<script src="./assets/libs/sweetalert2/sweetalert2.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
	<script type="text/javascript" src="./js/confirmEmail.js"></script>
	<script type="text/javascript" src="./js/confirmPhone.js"></script>
	<script type="text/javascript" src="./js/regist.js"></script>
	</body>
</html>