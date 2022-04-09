package com.skilldistillery.mvcfilmsite.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.mvcfilmsite.data.FilmDAO;
import com.skilldistillery.mvcfilmsite.entities.Film;

@Controller
public class FilmController {

	@Autowired
	private FilmDAO filmDao;

	@RequestMapping(path = { "/", "home.do" })
	public String home() {
		return "WEB-INF/home.jsp";
	}
	
	@RequestMapping(path = "test.do", method = RequestMethod.GET)
	public ModelAndView getFilmById() {
		ModelAndView mv = new ModelAndView();
		Film film = filmDao.findFilmById(1);
		mv.addObject("film", film);
		mv.setViewName("WEB-INF/home.jsp");
		return mv;
	}

}
