package com.example.lesson05;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class Lesson05QuizController {
	@RequestMapping("/lesson05/quiz")
	public String test() {
		return "lesson05/ex01";
	}
}
