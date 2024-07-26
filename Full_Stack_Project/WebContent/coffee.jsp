<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BirthDay Cakes</title>
    <link rel="stylesheet" href="Head/CSS/style.css">
</head>
<body>   
	<jsp:include page="Header.jsp" />
    <div class="breadcrumb">
      <a href="#">Home</a> &gt; <a href="#">Birthday Cakes</a>
  </div>
  <div class="header">
    <h1>Anniversary Cakes <span>(8 items)</span></h1>
    <div class="filter-options">
        <div>
            <input type="date">Select delivery Date<br>
        </div>
        <div>
            <label for="price-filter">Filter By Price</label>
            <select id="price-filter" onchange="filterProducts(this.value)">
                <option value="all">All Products</option>
                <option value="500-999">₹500 - ₹999</option>
                <option value="1000-1999">₹1000 - ₹1999</option>
                <option value="3000+">₹3000 and above</option>
            </select>
        </div>
        <div>
            <label for="sort-by">Sort By</label>
            <select id="sort-by">
                <option value="popularity">Sort by Popularity</option>
                <option value="rating-low-high">Sort by Rating (Low to High)</option>
                <option value="rating-high-low">Sort by Rating (High to Low)</option>
                <option value="price-low-high">Sort by Price (Low to High)</option>
                <option value="price-high-low">Sort by Price (High to Low)</option>
            </select>
        </div>
    </div>
</div>
        <div id="product-row">
            <div class="product-cell" data-price="599" data-rating="4.7">
                <div class="product-container">
                <a href="CakeFrame2.html">
                    <img src="https://i.pinimg.com/564x/9c/fe/15/9cfe15d810a384361b0843b7c918b6b9.jpg" alt="Lipsmacking Black Forest Cake" class="product-image">
                </a>
                <div class="badge trending">Trending</div>
                <div class="product-title">Coffee Cardamom layer cake</div>
                <div class="product-price">
                    ₹599 <span class="product-discount">₹649</span> <span class="product-discount-rate">8% Off</span>
                </div>
                <div class="product-rating">
                    <span class="rating-value">4.7 ★</span>
                    <span class="reviews-count">38 Reviews</span>
                </div>
                <span id="wishlistCount" class="wishlist-count">0</span>
                <svg class="heart-icon" onclick="addToWishlist(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                    <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
                </svg>            </div>   
            </div>
        
            <div class="product-cell" data-price="649" data-rating="4.6">
                <div class="product-container">
                <a href="CakeFrame3.html">
                <img src="https://www.cravebyleena.com/cdn/shop/products/Myproject-1_28_d28cefe1-068f-46b9-8c7b-5a78cf757a0d_460x@2x.png?v=1718111505" alt="Lipsmacking Black Forest Cake" class="product-image">
                </a>
                <div class="badge new-arrival">New Arrival</div>
                <div class="product-title">Honeycomb Crunchy cake</div>
                <div class="product-price">
                    ₹649 <span class="product-discount">₹699</span> <span class="product-discount-rate">10% Off</span>
                </div>
                <div class="product-rating">
                    <span class="rating-value">4.6 ★</span>
                    <span class="reviews-count">38 Reviews</span>
                </div>
                <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                    <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
                </svg>            </div>
        </div>
        
            <div class="product-cell" data-price="649" data-rating="4.5">
                <div class="product-container">
                <a href="CakeFrame4.html">
                <img src="https://i.pinimg.com/564x/1f/28/d6/1f28d66fec5fd2f7c46d35067fd46241.jpg" 
                alt="Lipsmacking Black Forest Cake" class="product-image"></a>
                <div class="badge trending">Trending</div>
                <div class="product-title">Tiramisu Coffee Cake</div>
                <div class="product-price">
                    ₹649 <span class="product-discount">₹799</span> <span class="product-discount-rate">19% Off</span>
                </div>
                <div class="product-rating">
                    <span class="rating-value">4.5 ★</span>
                    <span class="reviews-count">38 Reviews</span>
                </div>
                <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                    <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
                </svg>            </div>
            </div>
      
        <div class="product-cell" data-price="1499" data-rating="5.0">
            <div class="product-container">
            <a href="kids.html">
            <img src="https://i.pinimg.com/736x/2f/53/b0/2f53b0e70e5f47dab8aa47f589efc992.jpg" 
            alt="Lipsmacking Black Forest Cake" class="product-image"></a>
            <div class="badge best-seller">Best Seller</div>
            <div class="product-title">Gingerbread spiced CoffeeCake</div>
            <div class="product-price">
                ₹1499 <span class="product-discount">₹1999</span> <span class="product-discount-rate">25% Off</span>
            </div>
            <div class="product-rating">
                <span class="rating-value">5.0 ★</span>
                <span class="reviews-count">38 Reviews</span>
            </div>
            <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
            </svg>        </div>
    </div>
      
          <div class="product-cell" data-price="550" data-rating="4.8">
            <div class="product-container">
            <a href="CakeFrame6.html">
              <img src="https://i.pinimg.com/564x/ec/fe/68/ecfe68b87aadedecf4387a61c917a93d.jpg"
               alt="Lipsmacking Black Forest Cake" class="product-image"></a>
               <div class="badge new-arrival">New Arrival</div>
              <div class="product-title">Chocolate lover's Coffee dreamCake</div>
              <div class="product-price">
                  ₹550 <span class="product-discount">₹649</span> <span class="product-discount-rate">30% Off</span>
              </div>
              <div class="product-rating">
                  <span class="rating-value">4.8 ★</span>
                  <span class="reviews-count">38 Reviews</span>
              </div>
              <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
            </svg>          </div>
          </div>
      
          <div class="product-cell" data-price="579" data-rating="4.9">
            <div class="product-container">
            <a href="CakeFrame7.html">
              <img src="https://i.pinimg.com/564x/84/73/25/84732514b944a839fc3f25e8b2e28fc9.jpg" 
              alt="Lipsmacking Black Forest Cake" class="product-image"></a>
              <div class="badge new-arrival">New Arrival</div>
              <div class="product-title">Coffee with Oreo Cake</div>
              <div class="product-price">
                  ₹579 <span class="product-discount">₹829</span> <span class="product-discount-rate">30% Off</span>
              </div>
              <div class="product-rating">
                  <span class="rating-value">4.9 ★</span>
                  <span class="reviews-count">38 Reviews</span>
              </div>
              <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
            </svg>          </div>
          </div>
     
          <td>
          <div class="product-cell" data-price="589" data-rating="4.4">
            <div class="product-container">
            <a href="CakeFrame1.html">
              <img src="https://i.pinimg.com/564x/5c/e8/6b/5ce86b3273ae2b5d6ff400c41bc02305.jpg" 
              alt="Lipsmacking Black Forest Cake" class="product-image"></a>
              <div class="badge best-seller">Best Seller</div>
              <div class="product-title">Cappuccino Cake</div>
              <div class="product-price">
                  ₹589<span class="product-discount">₹639</span> <span class="product-discount-rate">8% Off</span>
              </div>
              <div class="product-rating">
                  <span class="rating-value">4.4 ★</span>
                  <span class="reviews-count">38 Reviews</span>
              </div>
              <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
            </svg>          </div>
          </div>

          <div class="product-cell" data-price="949" data-rating="4.9">
            <div class="product-container">
            <a href="CakeFrame8.html">
              <img src="https://i.pinimg.com/564x/f1/02/f2/f102f2914378069b748d2d5b0e758e8a.jpg" 
              alt="Lipsmacking Black Forest Cake" class="product-image"></a>
              <div class="badge trending">Trending</div>
              <div class="product-title">coffee cake </div>
              <div class="product-price">
                  ₹699 <span class="product-discount">₹949</span> <span class="product-discount-rate">26% Off</span>
              </div>
              <div class="product-rating">
                  <span class="rating-value">4.9 ★</span>
                  <span class="reviews-count">38 Reviews</span>
              </div>
              <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
            </svg>          </div>
          </div>
    </div>
    <div id="unavailable-message" style="display: none;">No products available in this price range.</div>
    </body>
</html>