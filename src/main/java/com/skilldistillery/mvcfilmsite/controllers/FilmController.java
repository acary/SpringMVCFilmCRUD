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

	@RequestMapping(path = "searchId.do", method = RequestMethod.GET)
	public ModelAndView getFilmById() {
		ModelAndView mv = new ModelAndView();
		Film film = filmDao.findFilmById(1);
		mv.addObject("film", film);
		mv.setViewName("WEB-INF/search.jsp");
		return mv;
	}

	@RequestMapping(path = "searchId.do", params = "filmId", method = RequestMethod.POST)
	public ModelAndView searchFilmById(String filmId) {
		ModelAndView mv = new ModelAndView();
		Integer filmIntId = Integer.valueOf(filmId);
		
		Film film = filmDao.findFilmById(filmIntId);
		mv.addObject("film", film);
		mv.setViewName("WEB-INF/showFilm.jsp");
		return mv;
	}

	@RequestMapping(path = "searchKeyword.do", method = RequestMethod.GET)
	public ModelAndView getFilmByKeyword() {
		ModelAndView mv = new ModelAndView();
		Film film = filmDao.findFilmById(1);
		mv.addObject("film", film);
		mv.setViewName("WEB-INF/search.jsp");
		return mv;
	}

	@RequestMapping(path = "showFilm.do", method = RequestMethod.GET)
	public ModelAndView getFilmDetails() {
		ModelAndView mv = new ModelAndView();
		Film film = filmDao.findFilmById(1);
		mv.addObject("film", film);
		mv.setViewName("WEB-INF/showFilm.jsp");
		return mv;
	}

	@RequestMapping(path = "editFilm.do", method = RequestMethod.GET)
	public ModelAndView editFilm() {
		ModelAndView mv = new ModelAndView();
		Film film = filmDao.findFilmById(1);
		mv.addObject("film", film);
		mv.setViewName("WEB-INF/editFilm.jsp");
		return mv;
	}
	
	@RequestMapping(path = "addFilm.do", method = RequestMethod.GET)
	public ModelAndView addFilmGet() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/addFilm.jsp");
		return mv;
	}
	
	@RequestMapping(path = "addFilm.do", 
			params = {"filmTitle", "filmDescription", "filmReleaseYear", "filmRating"}, 
			method = RequestMethod.POST)
	public ModelAndView addFilmPost(String filmTitle, String filmDescription, String filmReleaseYear, String filmRating) {
		ModelAndView mv = new ModelAndView();
		Film film = new Film();
		film.setTitle(filmTitle);
		film.setDescription(filmDescription);
		film.setReleaseYear(Integer.valueOf(filmReleaseYear));
		film.setRating(filmRating);
		film.setLanguageId("1");
		film = filmDao.createFilm(film);
		mv.addObject("film", film);
		mv.setViewName("WEB-INF/showFilm.jsp");
		return mv;
	}

}
