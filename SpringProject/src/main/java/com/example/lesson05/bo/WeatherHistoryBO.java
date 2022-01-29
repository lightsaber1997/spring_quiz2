package com.example.lesson05.bo;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.lesson05.dao.WeatherHistoryDAO;
import com.example.lesson05.model.WeatherHistory;

@Service
public class WeatherHistoryBO {
	@Autowired
	private WeatherHistoryDAO weatherHistoryDAO;

	public List<WeatherHistory> selectAll() {
		return weatherHistoryDAO.selectAll();
	}

	public boolean formValidation(String date, String weather, Double temperatures, Double precipitation, String microDust,
			Double windSpeed) {
		if (date == null || weather == null
				|| temperatures == null
				|| microDust == null
				|| windSpeed == null
				|| windSpeed < 0
				|| precipitation < 0) {
			return false;
		}
		return true;
	}
	
	/**
	 * Changes user input to an appropriate form for
	 * sql insertion
	 * ex. "01/14/2022" => "2022-01-14"
	 */
	public String stringInputToDate(String date) {
		String[] array = date.split("/");
		String temp = array[2] + "-" + array[0] 
				+ "-" +  array[1];
		return temp;
	}

	public void insert(String date, String weather, Double temperatures, Double precipitation, String microDust,
			Double windSpeed) {
		boolean flag = formValidation(date, weather, temperatures, precipitation, microDust, windSpeed);
		if (flag) {
			String date_ = stringInputToDate(date);
			String weather_ = "맑음";
			if (weather.equals("2")) {
				weather_ = "구름조금";
			} else if (weather.equals("3")) {
				weather_ = "흐림";
			} else if (weather.equals("4")) {
				weather_ = "비";
			}
			String microDust_ = "좋음";
			if (microDust.equals("2")) {
				microDust_ = "보통";
			} else if (microDust.equals("3")) {
				microDust_ = "나쁨";
			} else if (microDust.equals("4")) {
				microDust_ = "최악";
			}
			weatherHistoryDAO.insert(date_, weather_, temperatures, precipitation, microDust_, windSpeed);
		}
			
		
		
	}
}
