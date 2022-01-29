package com.example.lesson05.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.example.lesson05.model.WeatherHistory;



@Repository
public interface WeatherHistoryDAO {
	public List<WeatherHistory> selectAll();
	
	public void insert(
			@Param("date") String date,
			@Param("weather") String weather,
			@Param("temperatures") Double temperatures,
			@Param("precipitation") Double precipitation,
			@Param("microDust")String microDust,
			@Param("windSpeed") Double windSpeed);
}
