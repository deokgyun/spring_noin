<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.3.js"></script>
<link href="${pageContext.request.contextPath }/resources/css/join.css" rel="stylesheet" type="text/css">
<script>
	$(function() {
		let checkid = false;
		let checkemail = false;

		$("input[name=id]").on(
				'keyup',
				function() {
					$("#message").empty(); // 처음에 pattern에 적합하지 않은 경우 메시지 출력 후 적합한 데이터를 입력해도
					// 계속 같은 데이터 출력하므로 이벤트 시작할 때마다 비워둡니다.
					//[A-Za-z0-9_]의 의미가 \w
					const pattern = /^\w{5,12}$/;
					const id = $("input:eq(0)").val();
					if (!pattern.test(id)) {
						$("#message").css('color', 'red').html(
								"영문자 숫자 _로 5~12자 가능합니다.");
						checkid = false;
						return;
					}

					$.ajax({
						url : "idcheck",
						data : {"id" : id},
						success : function(resp) {
							if (resp == -1) { //db에 해당 id가 없는 경우
								$("#message").css('color', 'green').html("사용 가능한 아이디 입니다.");
								checkid = true;
							} else {
								$("#message").css('color', 'red').html("ID가 중복됩니다.");
								checkid = false;
							}
						}
					}) // ajax end
				}) // id keyup end

		$("input[name=email]").on(
				'keyup',
				function() {
					// $("#email_message").empty();
					// [A-Za-z0-9_]와 동일한 것이 \w 입니다.
					// +는 1회 이상 반복을 의미하고 {1,}와 동일합니다.
					// \w는 [A-Za-z0-9_]를 1개이상 사용하라는 의미입니다.
					const pattern = /^\w+@\w+[.]\w{3}/;
					const email_value = $(this).val();
					console.log(email_value)
					if (!pattern.test(email_value)) {
						$("#email_message").css('color', 'red').html(
								"이메일 형식이 맞지 않습니다.");
						checkemail = false;
					} else {
						$("#email_message").css('color', 'green').html(
								"이메일 형식에 맞습니다.");
						checkemail = true;
					} // if 둥
				}) // email keyup end

		$('form').submit(function() {
			if (!$.isNumberic($("input[name='age']").val())) {
				alert("나이는 숫자를 입력하세요");
				$("input[name='age']").val('').focus();
				return false;
			}

			if (!checkid) {
				alert("사용가능한 id로 입력하세요");
				$("input[name=id]").val('').focus();
				return false;
			}

			if (!checkemail) {
				alert("email 형식을 확인하세요.");
				$("input[name=email]").focus();
				return false;
			}
		}) //submit
	}) //ready
</script>
</head>
<body>
	<form name="joinform" action="joinProcess" method="post">
		<h1>회원가입 페이지</h1>
		<hr>
		<b>아이디</b>
		<input type="text" placeholder="Enter id" name="id" maxLength="12" required>
		<span id="message"></span>
		<b>비밀번호</b>
		<input type="password" placeholder="Enter Password" name="password" required>
		<b>이름</b>
		<input type="text" placeholder="Enter name" name="name" maxLength="15" required>
		<b>나이</b>
		<input type="text" placeholder="Enter age" name="age" maxLength="2" required>
		<b>성별</b>
		<div>
			<input type="radio" name="gender" value="남" checked>
			<span>남자</span>
			<input type="radio" name="gender" value="여">
			<span>여자</span>
		</div>
		<b>이메일 주소</b>
		<input type="text" name="email" placeholder="Enter email" maxLength="30" required>
		<span id="email_message"></span>
		<div class="clearfix">
			<button type="submit" class="submitbtn">회원가입</button>
			<button type="reset" class="cancelbtn">다시작성</button>
		</div>
	</form>
</body>
</html>