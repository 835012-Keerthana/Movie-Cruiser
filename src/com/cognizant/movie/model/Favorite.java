package com.cognizant.movie.model;

import java.util.List;

public class Favorite {
    int noOfFavorites;
    List<Movie> favoriteList;

    public Favorite() {
        // TODO Auto-generated constructor stub
    }

    public Favorite(int noOfFavorites, List<Movie> favoriteList) {
        super();
        this.noOfFavorites = noOfFavorites;
        this.favoriteList = favoriteList;
    }

    public int getNoOfFavorites() {
        return noOfFavorites;
    }

    public void setNoOfFavorites(int noOfFavorites) {
        this.noOfFavorites = noOfFavorites;
    }

    public List<Movie> getFavoriteList() {
        return favoriteList;
    }

    public void setFavoriteList(List<Movie> favoriteList) {
        this.favoriteList = favoriteList;
    }

    @Override
    public String toString() {
        return "Favorite [noOfFavorites=" + noOfFavorites + ", favoriteList=" + favoriteList + "]";
    }
}
