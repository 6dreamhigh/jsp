<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>회원가입</h3>

<form action="signup.jsp" name="member" method="post">

	<p>아이디 : <input type="text" name="id" required> <input type="button" value="아이디 중복검사" >	
	<p>비밀번호 : <input type="password" name="passwd" required>	
	<p>이름 : <input type="text" name="name" required>	
	<p>연락처 : <select name="phone1" required>	
		<option value="010">010</option>	
		<option value="011">011</option>	
		<option value="016">016</option>	
		<option value="017">017</option>	
		<option value="019">019</option>	
	</select> - 
	<input type="text" maxlength="4" size="4" name="phone2" required> -	
	<input type="text" maxlength="4" size="4" name="phone3" required>	
	<p>성별 : <input type="radio" name="sex" value="남성" checked >남성 	
	<input type="radio" name="sex" value="여성">여성	
	<p>취미 : 독서<input type="checkbox" name="hobby" value="독서" checked>	
		운동<input type="checkbox" name="hobby" value="운동" > 		
		영화<input type="checkbox" name="hobby" value="영화">
	<p><textarea name="comment" cols="30" rows="3" placeholder="가입인사를 입력해주세요"></textarea>	
	<p><input type="submit" value="가입하기" required> 	
	<input type="reset" value="다시쓰기" required>

</form>
</body>
</html>