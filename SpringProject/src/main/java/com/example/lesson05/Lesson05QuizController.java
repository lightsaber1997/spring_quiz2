package com.example.lesson05;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.lesson05.bo.WeatherHistoryBO;
import com.example.lesson05.model.WeatherHistory;

@RequestMapping("/lesson05")
@Controller
public class Lesson05QuizController {
	@Autowired
	private WeatherHistoryBO weatherHistoryBO;
	
	@RequestMapping("/quiz05")
	public String reports(Model model) {
		List<WeatherHistory> searchResult = weatherHistoryBO.selectAll();
		model.addAttribute("searchResult", searchResult);
		return "lesson05/quiz05/reports";
	}
	
	@RequestMapping("/quiz05/insert")
	public String displayInsert(Model model) {
		String actionUrl = "/lesson05/quiz05/insert_1";
		model.addAttribute("actionUrl", actionUrl);
		return "lesson05/quiz05/insert";
	}
	
	@PostMapping("/quiz05/insert_1")
	public String doInsert(
			@RequestParam("date") String date,
			@RequestParam("weather") String weather,
			@RequestParam("temperatures") Double temperatures,
			@RequestParam("precipitation") Double precipitation,
			@RequestParam("microDust") String microDust,
			@RequestParam("windSpeed") Double windSpeed
			) {
		weatherHistoryBO.insert(date, weather, temperatures, precipitation, microDust, windSpeed);
		
		return "redirect:/lesson05/quiz05";
	}
}
