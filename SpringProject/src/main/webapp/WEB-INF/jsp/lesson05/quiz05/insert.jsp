<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link href="/quiz05/main.css" rel="stylesheet">
<title>날씨 입력</title>

</head>
<body>
	<div class="main-wrapper">
		<div class="sidebar1">
			<div class="title">
				<a href="/lesson05/quiz05">기상청</a>
			</div>
			<div class="menu"><a href="/lesson05/quiz05">날씨</a></div>
			<div class="menu"><a href="/lesson05/quiz05/insert">날씨입력</a></div>
			<div class="menu"><a>테마날씨</a></div>
			<div class="menu"><a>관측 기후</a></div>
		</div>
		<div class="main">
			<h3>날씨 입력</h3>
			<form class="mt-3" id="weather-form" method="post" action="${actionUrl }">
				<div class="row">
					<div class="col-md-4">
						<label class="form-label">날짜</label>
						<input name="date" id="date" type="text" class="form-control">
					</div>
					<div class="col-md-3">
						<label class="form-label" for="weather">날씨</label>
						<select name="weather" id="weather" class="form-select">
							<option selected>선택</option>
							<option value="1">맑음</option>
							<option value="2">구름조금</option>
							<option value="3">흐림</option>
							<option value="4">비</option>
						</select>
					</div>
					
					<div class="col-md-3">
						<label class="form-label" for="microDust">미세먼지</label>
						<select name="microDust" id="microDust" class="form-select">
							<option selected>선택</option>
							<option value="1">좋음</option>
							<option value="2">보통</option>
							<option value="3">나쁨</option>
							<option value="4">최악</option>
						</select>
					</div>
				</div>
				<div class="row mt-4">
					<div class="col-md-3">
						<label class="form-label" for="temperatures">기온</label>
						<div class="input-group">
	      					<input type="text" class="form-control" id="temperatures" name="temperatures"> 
	    					<div class="input-group-text">&#176;C</div>
	    				</div>
					</div>
					<div class="col-md-3">
						<label class="form-label" for="date">강수량</label>
						<div class="input-group">
	      					<input type="text" class="form-control" id="precipitation" name="precipitation">
	    					<div class="input-group-text">mm</div>
	    				</div>
					</div>
					<div class="col-md-3">
						<label class="form-label" for="date">풍속</label>
						<div class="input-group">
	      					<input type="text" class="form-control" id="windSpeed" name="windSpeed">
	    					<div class="input-group-text">km/h</div>
	    				</div>
					</div>
				</div>
				
				
				<button id="btn-submit" type="submit" class="mt-3 btn btn-success">저장</button>
				
				
		
			</form>
		</div>
	</div>
	<div class="footer">
		<div class="logo">
			<img src="https://www.weather.go.kr/w/resources/image/foot_logo2.png">
		</div>
		<div class="content">
			<p>(07062) 서울시 동작구 여의대방로16길 61 | 대표전화 (02)2181-0900 (평일 9:00~18:00, 야간휴일은 당직실 연결)</p>
			<p>Copyright@2020 KMA. All Rights RESERVED. 전자우편: webmasterkma@korea.kr </p>
		</div>
	</div>
	<script src="/quiz05/insert.js"></script>
</body>
</html>