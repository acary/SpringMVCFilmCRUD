package com.skilldistillery.mvcfilmsite.data;

import java.util.List;

import com.skilldistillery.mvcfilmsite.entities.Actor;
import com.skilldistillery.mvcfilmsite.entities.Film;

public interface FilmDAO {
	public Film findFilmById(int filmId);

	public Film findFilmDetailsById(int filmId);

	public Actor findActorById(int actorId);

	public List<Actor> findActorsByFilmId(int filmId);

	public List<Film> findFilmByKeyword(String keyword);

	public Actor createActor(Actor actor);

	public boolean saveActor(Actor actor);

	public boolean deleteActor(Actor actor);

	public Film createFilm(Film film);

	public boolean deleteFilm(Film film);

	public boolean updateFilm(Film film);
	
	public List<Film> findFilmsByActorId (int actorId);

	public String findFilmCategory (int filmId);
	
}
