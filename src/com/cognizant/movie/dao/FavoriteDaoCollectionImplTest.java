package com.cognizant.movie.dao;

import java.util.List;
import com.cognizant.movie.model.Movie;

public class FavoriteDaoCollectionImplTest {
    static FavoriteDao favoriteDao = new FavoriteDaoCollectionImpl();

    public static void main(String[] args) {
        testAddFavorites();
        testGetAllFavorites();
        testRemoveFavorites();
        testGetAllFavorites();
    }

    public static void testAddFavorites() {
        System.out.println("Movies added into favorite");
        favoriteDao.addFavoritesById(1, 2);// 1 is userId, 2 is menu item id
        favoriteDao.addFavoritesById(1, 3);// 1 is userId, 3 is menu item id
    }

    public static void testRemoveFavorites() {
        System.out.println("Remove Favorite");
        favoriteDao.removeFavoritesById(1, 3);
    }

    public static void testGetAllFavorites() {
        try {
            System.out.println("Retrieving all the items from favorite");
            List<Movie> list = favoriteDao.getAllFavorites(1).getFavoriteList();
            System.out.printf("%-10s%-24s%-18s%-11s%-20s%-17s%s\n", "Id", "Title", "Box Office",
                    "Active", "Date Of Launch", "Genre", "Has Teaser");
            for (Movie menuItem : list) {
                System.out.println(menuItem);
            }
            System.out.println(
                    "No.of :Favorites: " + favoriteDao.getAllFavorites(1).getNoOfFavorites());
        } catch (FavoriteEmptyException e) {
            System.err.println(e);
        }
    }
}
