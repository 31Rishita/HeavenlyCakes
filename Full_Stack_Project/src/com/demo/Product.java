package com.demo;

public class Product {
    public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	private int id;
    private String image;
    private String name;
    private String rating;
    private Double price;
	public String getCategory() {
		// TODO Auto-generated method stub
		return null;
	}

    // Getters and setters
    // ...
}
