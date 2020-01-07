package com.cognizant.movie.dao;

import java.util.Date;
import java.util.List;
import com.cognizant.movie.model.Movie;
import com.cognizant.movie.util.DateUtil;

public class MovieDaoCollectionImplTest {
    static MovieDao moviedao = new MovieDaoCollectionImpl();

    public static void main(String[] args) {
        testGetMovieListAdmin();
        testGetMovieListCustomer();
        testEditMovie();
        testGetMovieListAdmin();
        testGetMovieById();
    }

    public static void testGetMovieListAdmin() {
        System.out.println("Admin view");
        List<Movie> movie = moviedao.getMovieListAdmin();
        System.out.printf("%-10s%-20s%-20s%-10s%-20s%-20s%s\n", "Id", "Title", "Box Office",
                "Active", "Date of Launch", "Genre", "Has Teaser");
        for (Movie movie1 : movie) {
            System.out.println(movie1);
        }
    }

    public static void testGetMovieListCustomer() {
        System.out.println("Customer view");
        List<Movie> movieItem = moviedao.getMovieListCustomer();
        System.out.printf("%-10s%-20s%-200s%-10s%-20s%-20s%s\n", "Id", "Title", "Box Office",
                "Active", "Date of Launch", "Genre", "Has Teaser");
        for (Movie movie2 : movieItem) {
            System.out.println(movie2);// invokes toString();
        }
    }

    public static void testEditMovie() {
        System.out.println("Modify Movie List");
        Movie movieItem = new Movie(1, "After", 2787965087L, true,
                (Date) DateUtil.convertToDate("15/03/2017"), "Romance", false);
        moviedao.modifyMovieList(movieItem);
    }

    public static void testGetMovieById() {
        System.out.println("Get Movie List");
        System.out.printf("%-10s%-20s%-20s%-10s%-20s%-20s%s\n", "Id", "Title", "Box Office",
                "Active", "Date of Launch", "Genre", "Has Teaser");
        Movie movieItem = moviedao.getMovieById(1);
        System.out.println(movieItem);
    }
}
