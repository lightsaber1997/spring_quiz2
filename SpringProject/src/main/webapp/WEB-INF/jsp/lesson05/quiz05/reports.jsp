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

<link href="/quiz05/main.css" rel="stylesheet">
<title>과거 날씨</title>

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
			<h3>과거 날씨</h3>
			<table class="table text-center">
				<thead>
					<tr>
						<th>날짜</th>
						<th>날씨</th>
						<th>기온</th>
						<th>강수량</th>
						<th>미세먼지</th>
						<th>풍속</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="row" items="${searchResult}">
						<tr>
							<fmt:formatDate var="row_date_formatted" value="${row.date}" pattern="yyyy년 M월 d일" />
							<td>${row_date_formatted }</td>
							
							
							<c:choose>
								<c:when test="${row.weather == '맑음' }">
									<c:set var="weather_url" value="http://marondal.com/material/images/dulumary/web/jstl/sunny.jpg"/>
								</c:when>
								<c:when test="${row.weather == '구름조금' }">
									<c:set var="weather_url" value="http://marondal.com/material/images/dulumary/web/jstl/partlyCloudy.jpg"/>
								</c:when>
								<c:when test="${row.weather == '흐림' }">
									<c:set var="weather_url" value="http://marondal.com/material/images/dulumary/web/jstl/cloudy.jpg"/>
								</c:when>
								<c:otherwise>
									<c:set var="weather_url" value="http://marondal.com/material/images/dulumary/web/jstl/rainy.jpg"/>
								</c:otherwise>
							</c:choose>
							
							<td><img src="${weather_url }"></td>
							
							<fmt:formatNumber pattern="###0.0" var="temperatures_formatted" value="${row.temperatures }"/>
							<td>${temperatures_formatted }&#176;C</td>
							
							<fmt:formatNumber pattern="###0.0" var="precipitation_formatted" value="${row.precipitation }"/>
							<td>${precipitation_formatted }mm</td>
							
							<td>${row.microDust }</td>
							
							<fmt:formatNumber pattern="###0.0" var="windSpeed_formatted" value="${row.windSpeed }"/>
							<td>${windSpeed_formatted }km/h</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
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
</body>
</html>