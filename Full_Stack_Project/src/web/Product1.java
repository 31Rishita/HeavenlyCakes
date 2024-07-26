package web;

public class Product1 {
	private int id;
	private String name;
	private String category;
	private Double price;
	private String image;
	private String Rating;
	public Product1() {
		
	}
	
	public Product1 (int id, String name, String category, double price,String image) {
		this.id = id;
		this.name = name;
		this.category = category;
		this.price = price;
		this.image = image;
		this.Rating=Rating;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double i) {
		this.price = i;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getRating() {
		return Rating;
	}

	public void setRating(String rating) {
		Rating = rating;
	}
	
}