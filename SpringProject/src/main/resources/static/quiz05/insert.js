$(function() {
	$("#date").datepicker();
});



$(document).ready(function() {
	$("#btn-submit").on('click', function(e) {
		e.preventDefault();
		// form validation
		let date = $("input[name='date']").val();
		let weather = $("select[name='weather']").val();
		let microDust = $("select[name='microDust']").val();
		let temperatures = $("input[name='temperatures']").val();
		let precipitation = $("input[name='precipitation']").val();
		let windSpeed= $("input[name='windSpeed']").val();
		
		if (date === '') {
			alert("날짜를 선택해주세요.");
		}
		else if (weather === '선택') {
			alert("날씨를 선택해주세요.");
		}
		else if (microDust === '선택') {
			alert("미세먼지를 선택해주세요.")
		}
		else if (temperatures === '' || isNaN(temperatures)) {
			alert("온도를 올바르게 입력해주세요");
		}
		else if (precipitation === '' || isNaN(precipitation)) {
			alert("강수량을 올바르게 입력해주세요");
		}
		else if ( windSpeed === '' || isNaN(windSpeed)) {
			alert("풍속을 올바르게 입력해주세요");
		}
		else {
			$("#weather-form").submit();
		}
		
	});
});