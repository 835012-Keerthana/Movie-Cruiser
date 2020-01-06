package com.cognizant.movie.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import com.cognizant.movie.model.Movie;
import com.cognizant.movie.util.DateUtil;

public class MovieDaoCollectionImpl implements MovieDao {
    private static List<Movie> movieList;

    public MovieDaoCollectionImpl() {
        if (movieList == null) {
            Movie item1 = new Movie(1L, "Avatar", 2787965087L, true,
                    (Date) DateUtil.convertToDate("15/03/2017"), "Science Fiction", true);
            Movie item2 = new Movie(2L, "The Avengers", 1518812988L, true,
                    (Date) DateUtil.convertToDate("23/12/2017"), "Superhero", false);
            Movie item3 = new Movie(3L, "Titanic", 2187463944L, true,
                    (Date) DateUtil.convertToDate("21/08/2018"), "Romance", false);
            Movie item4 = new Movie(4L, "Jurassic World", 1671713208L, false,
                    (Date) DateUtil.convertToDate("02/07/2017"), "Science Fiction", true);
            Movie item5 = new Movie(5L, "Avengers:End Game", 2750760348L, true,
                    (Date) DateUtil.convertToDate("02/11/2022"), "Superhero", true);
            movieList = new ArrayList<Movie>();
            movieList.add(item1);
            movieList.add(item2);
            movieList.add(item3);
            movieList.add(item4);
            movieList.add(item5);
        }
    }

    public Movie getMovieById(long movieId) {
        // TODO Auto-generated method stub
        for (Movie movie : movieList) {
            if (movie.getMovieId() == movieId) { // existing_id==user_item_id
                return movie;
            }
        }
        return null;
    }

    @Override
    public void modifyMovieList(Movie movieLists) {
        for (int i = 0; i < movieList.size(); i++) {
            if (movieList.get(i).getMovieId() == movieLists.getMovieId()) { // existing_item_id==user_item_id
                movieList.set(i, movieLists);
            }
        }
    }

    @Override
    public List<Movie> getMovieListAdmin() {
        // TODO Auto-generated method stub
        return movieList;
    }

    @Override
    public List<Movie> getMovieListCustomer() {
        ArrayList<Movie> movies = new ArrayList<Movie>();
        for (Movie movie : movieList) {
            if ((movie.getDateOfLaunch().before(new Date())
                    || movie.getDateOfLaunch().equals(new Date())) && movie.isActive() == true) {
                movies.add(movie);
            }
        }
        return movies;
    }
}