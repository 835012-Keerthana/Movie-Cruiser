package com.cognizant.movie.model;

import java.util.List;

public class Favorite {
    private double noOfFavorites;
    private List<Movie> favoriteList;

    public Favorite() {
        // TODO Auto-generated constructor stub
    }

    public Favorite(double noOfFavorites, List<Movie> favoriteList) {
        super();
        this.noOfFavorites = noOfFavorites;
        this.favoriteList = favoriteList;
    }

    public double getNoOfFavorites() {
        return noOfFavorites;
    }

    public void setNoOfFavorites(double noOfFavorites) {
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
