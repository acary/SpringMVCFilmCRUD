package com.skilldistillery.mvcfilmsite.controllers;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.mvcfilmsite.data.FilmDAO;
import com.skilldistillery.mvcfilmsite.entities.Actor;
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
	public ModelAndView getFilmByKeyword(String keyword) {
		ModelAndView mv = new ModelAndView();
		List<Film> film = filmDao.findFilmByKeyword(keyword);
		mv.addObject("film", film);
		mv.setViewName("WEB-INF/searchByKeyword.jsp");
		return mv;
	}

	@RequestMapping(path = "searchKeyword.do", params = "keyword", method = RequestMethod.POST)

	public ModelAndView searchFilmByKeyword(String keyword) {
		ModelAndView mv = new ModelAndView();
		List<Film> film = filmDao.findFilmByKeyword(keyword);
		mv.addObject("film", film);
		mv.setViewName("WEB-INF/showFilmList.jsp");
		return mv;
	}

	@RequestMapping(path = "showFilm.do", params = "filmId", method = RequestMethod.GET)
	public ModelAndView getFilmDetails(String filmId) {
		ModelAndView mv = new ModelAndView();
		Integer filmIntId = Integer.valueOf(filmId);
		Film film = filmDao.findFilmById(filmIntId);
		mv.addObject("film", film);
		// mv.addObject("actors", filmDao.findActorsByFilmId(film.getId()));
		mv.setViewName("WEB-INF/showFilm.jsp");
		return mv;
	}

	@RequestMapping(path = "editFilm.do", params = "filmId", method = RequestMethod.GET)
	public ModelAndView editFilm(String filmId) {
		ModelAndView mv = new ModelAndView();
		Integer filmIntId = Integer.valueOf(filmId);
		Film film = filmDao.findFilmById(filmIntId);
		mv.addObject("film", film);
		mv.setViewName("WEB-INF/editFilm.jsp");
		return mv;
	}

	@RequestMapping(path = "updateFilm.do", params = { "filmId", "filmTitle", "filmDescription", "filmRating",
			"filmReleaseYear" }, method = RequestMethod.GET)
	public ModelAndView editFilmPost(String filmId, String filmTitle, String filmDescription, String filmRating,
			String filmReleaseYear) {
		ModelAndView mv = new ModelAndView();
		Integer filmIntId = Integer.valueOf(filmId);
		Integer filmYear = Integer.valueOf(filmReleaseYear);
		Film film = filmDao.findFilmById(filmIntId);
		film.setTitle(filmTitle);
		film.setDescription(filmDescription);
		film.setRating(filmRating);
		film.setReleaseYear(filmYear);
		filmDao.updateFilm(film);
		film = filmDao.findFilmById(film.getId());
		mv.addObject("film", film);
		mv.setViewName("WEB-INF/showFilm.jsp");
		return mv;
	}

	@RequestMapping(path = "addFilm.do", method = RequestMethod.GET)
	public ModelAndView addFilmGet() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/addFilm.jsp");
		return mv;
	}

	@RequestMapping(path = "addFilm.do", params = { "filmTitle", "filmDescription", "filmReleaseYear",
			"filmRating" }, method = RequestMethod.POST)
	public ModelAndView addFilmPost(String filmTitle, String filmDescription, String filmReleaseYear,
			String filmRating) {
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

	@RequestMapping(path = "addActor.do", method = RequestMethod.GET)
	public ModelAndView addActorGet() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/addActor.jsp");
		return mv;
	}

	@RequestMapping(path = "addActor.do", params = { "firstName", "lastName" }, method = RequestMethod.POST)
	public ModelAndView addActorPost(String firstName, String lastName) {
		ModelAndView mv = new ModelAndView();
		Actor newActor = new Actor();
		newActor.setFirstName(firstName);
		newActor.setLastName(lastName);
		newActor = filmDao.createActor(newActor);
		mv.addObject("newActor", newActor);
		mv.setViewName("WEB-INF/newActor.jsp");
		return mv;
	}

	@RequestMapping(path = "deleteFilm.do", params = "filmId", method = RequestMethod.GET)
	public ModelAndView deleteFilm(@RequestParam("filmId") String filmId) {
		ModelAndView mv = new ModelAndView();
		int id = Integer.parseInt(filmId);
		Film film = filmDao.findFilmById(id);
		if (film != null) {
			if (filmDao.deleteFilm(film)) {
				mv.addObject("result", "Movie was successfully deleted");
				mv.setViewName("/WEB-INF/home.jsp");
			}
		} else {
			mv.addObject("result", "Movie was not deleted");
			mv.setViewName("/WEB-INF/showFilm.jsp");
		}
		return mv;
	}

	@RequestMapping(path = { "/about" })
	public String about() {
		return "WEB-INF/about.jsp";
	}

}
