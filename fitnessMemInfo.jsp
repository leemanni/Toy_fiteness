<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>  ZZ!! FitnessCenterMemberInfo </title>

	<style type="text/css">
		h1 {
			text-align: center;
		}
		fieldset {
			width: 200px;
			color: blue
		}
	</style>
</head>
<body>
	<h1 >짱장이 헬스장 회원 신청서 </h1>
	<form action="personelInfo.jsp" method="post">
		<label>이름<br> <input type="text" name ="name" autocomplete="off"></label><br>
		<label>나이<br><input type="text" name ="age" autocomplete="off"></label><br>
			성별<br>
			<input type="radio" name ="gender"  checked="checked" value="남자">남자
			<input type="radio" name ="gender" autocomplete="off" value= "여자">여자<br>
		<label>생년월일(예 : 991114)<br><input type="text" maxlength="6"
								name ="bithDate" autocomplete="off"></label><br>
		<fieldset>
			<legend >희망 개월</legend>
			<input type="radio"  name="period" value="3개월">3개월
			<input type="radio"  name="period" value="6개월">6개월
			<input type="radio"  name="period" value="9개월">9개월
			<input type="radio"  name="period" value="12개월" checked="checked">12개월<br>
		</fieldset>
		
		<fieldset>
			<legend>우리 헬스장을 알게된 루트(중복선택 가능!)</legend>	
				<input type="checkbox" name="search" value="인스타그램">인스타그램<br>
				<input type="checkbox" name="search" value="지인소개">지인소개<br>
				<input type="checkbox" name="search" value="페이스북">페이스북<br>
				<input type="checkbox" name="search" value="신문광고">신문광고<br>
				<input type="checkbox" name="search" value="판촉물">판촉물<br>
				<input type="checkbox" name="search" value="네이버">네이버<br>
				<input type="checkbox" name="search" value="카카오톡">카카오톡<br>
			</fieldset>
		
		
		
		<div class="btn" >
		 	<br><input type="submit" value="회원등록!" size="100" >
		</div>
	</form>
</body>
</html>