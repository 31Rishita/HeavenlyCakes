<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Anniversary Cakes</title>
    <style>
        .highlight { border: 2px solid red; }
        .product-cell { display: inline-block; margin: 10px; }
        #unavailable-message { display: none; color: red; }
    </style>
    <link rel="stylesheet" href="Head/CSS/style.css">
</head>  
<body>
<jsp:include page="Header.jsp" />
<div class="breadcrumb">
  <a href="#">Home</a> &gt; <a href="#">Birthday Cakes</a>
</div>
<div class="header">
<h1>Birthday Cakes <span>(268 items)</span></h1>
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
        <select id="sort-by" onchange="sortProducts(this.value)">
            <option value="popularity">Popularity</option>
            <option value="rating-low-high">Rating (Low to High)</option>
            <option value="rating-high-low">Rating (High to Low)</option>
        </select>
    </div>
</div>
</div>
    <div id="product-row">
        <div class="product-cell" data-price="599" data-rating="4.7">
            <div class="product-container">
            <a href="HeartCakeFrame1.jsp">
                <img src="https://assets.winni.in/product/primary/2023/5/84877.jpeg?dpr=1&w=400" alt="Love Expression Red Velvet Cake" class="product-image">
            </a>
            <div class="product-title">Love Expression Red Velvet Cake</div>
            <div class="product-price">₹599 <span class="product-discount">₹649</span> <span class="product-discount-rate">8% Off</span>
            </div>
            <div class="product-rating">
                <span class="rating-value">4.7 ★</span>
                <span class="reviews-count">65 Reviews</span>
            </div>
            <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
            </svg>            </div>   
        </div>
        <div class="product-cell" data-price="799" data-rating="5.0">
            <div class="product-container">
            <a href="HeartCakeFrame1.jsp">
            <img src="https://assets.winni.in/product/primary/2014/8/36516.jpeg?dpr=1&w=400" 
            alt="Butterscotch Heart Shape Cake" class="product-image">
            </a>
            <div class="product-title">Butterscotch Heart Shape Cake
            </div>
            <div class="product-price">
                ₹509<span class="product-discount">₹700</span> <span class="product-discount-rate">10% Off</span>
            </div>
            <div class="product-rating">
                <span class="rating-value">5.0 ★</span>
                <span class="reviews-count">43 Reviews</span>
            </div>
            <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
            </svg>            </div>
    </div>
    
        <div class="product-cell" data-price="600" data-rating="4.5">
            <div class="product-container">
            <a href="HeartCakeFrame1.jsp">
            <img src="https://assets.winni.in/product/primary/2024/1/93188.jpeg?dpr=1&w=400" 
            alt="Heart Shape Black Forest Cake" class="product-image"></a>
            <div class="product-title">Heart Shape Black Forest Cake
            </div>
            <div class="product-price">
                ₹650<span class="product-discount">₹800</span> <span class="product-discount-rate">9% Off</span>
            </div>
            <div class="product-rating">
                <span class="rating-value">4.5 ★</span>
                <span class="reviews-count">58 Reviews</span>
            </div>
            <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
            </svg>            </div>
        </div>
  
    <div class="product-cell" data-price="1000" data-rating="4.7">
        <div class="product-container">
        <a href="HeartCakeFrame1.jsp">
        <img src="https://assets.winni.in/product/primary/2014/8/37740.jpeg?dpr=1&w=400" 
        alt="Toothsome Chocolate Cake" class="product-image"></a>
        <div class="product-title">Toothsome Chocolate Cake

        </div>
        <div class="product-price">
            ₹1049 <span class="product-discount">₹900</span> <span class="product-discount-rate">10% Off</span>
        </div>
        <div class="product-rating">
            <span class="rating-value">4.7 ★</span>
            <span class="reviews-count">66 Reviews</span>
        </div>
        <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
            <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
        </svg>        </div>
</div>

  <td>
      <div class="product-cell" data-price="800" data-rating="4.8">
        <div class="product-container">
        <a href="HeartCakeFrame1.jsp">
          <img src="https://assets.winni.in/product/primary/2014/6/29300.jpeg?dpr=1&w=400" 
          alt="Heart Shaped Rose Cake" class="product-image"></a>
          <div class="product-title">Heart Shape Cake For Mom</div>
          <div class="product-price">
              ₹800<span class="product-discount">₹1049</span> <span class="product-discount-rate">13% Off</span>
          </div>
          <div class="product-rating">
              <span class="rating-value">4.8 ★</span>
              <span class="reviews-count">45 Reviews</span>
          </div>
          <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
            <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
        </svg>          </div>
      </div>
  
      <div class="product-cell" data-price="550" data-rating="4.8">
        <div class="product-container">
        <a href="HeartCakeFrame1.jsp">
          <img src="https://assets.winni.in/product/primary/2014/6/30043.jpeg?dpr=1&w=400"
           alt="Heart Shape Choco Truffle Cake" class="product-image"></a>
          <div class="product-title">Heart Shape Choco Truffle Cake </div>
          <div class="product-price">
              ₹639 <span class="product-discount">₹889</span> <span class="product-discount-rate">9% Off</span>
          </div>
          <div class="product-rating">
              <span class="rating-value">4.8 ★</span>
              <span class="reviews-count">39 Reviews</span>
          </div>
          <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
            <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
        </svg></div>
      </div>
  
      <div class="product-cell" data-price="1499" data-rating="5.0">
        <div class="product-container">
        <a href="HeartCakeFrame1.jsp">
          <img src="https://assets.winni.in/product/primary/2014/6/34121.jpeg?dpr=1&w=400" 
          alt="Blooming Love Vanilla Cake" class="product-image"></a>
          <div class="product-title">Blooming Love Vanilla Cake
        </div>
          <div class="product-price">
              ₹649 <span class="product-discount">₹1499</span> <span class="product-discount-rate">21% Off</span>
          </div>
          <div class="product-rating">
              <span class="rating-value">5.0 ★</span>
              <span class="reviews-count">23 Reviews</span>
          </div>
          <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
            <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
        </svg>          </div>
      </div>
 
      <div class="product-cell" data-price="949" data-rating="4.9">
        <div class="product-container">
        <a href="HeartCakeFrame1.jsp">
          <img src="https://assets.winni.in/product/primary/2022/6/63570.jpeg?dpr=1&w=400" 
          alt="Choco Love Pinata Cake" class="product-image"></a>
          <div class="product-title">Choco Love Pinata Cake</div>
          <div class="product-price">
              ₹649 <span class="product-discount">₹949</span> <span class="product-discount-rate">8% Off</span>
          </div>
          <div class="product-rating">
              <span class="rating-value">4.9 ★</span>
              <span class="reviews-count">77 Reviews</span>
          </div>
          <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
            <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
        </svg>          </div>
      </div>
</div>

<script>
    // Function to filter products based on price range
    function filterProducts(priceRange) {
        const products = document.querySelectorAll('.product-cell');

        products.forEach(product => {
            const price = parseInt(product.getAttribute('data-price'));
            if (priceRange === 'all' || 
                (priceRange === '500-999' && price >= 500 && price <= 999) ||
                (priceRange === '1000-1999' && price >= 1000 && price <= 1999) ||
                (priceRange === '3000+' && price >= 3000)) {
                product.style.display = 'block'; // Show product cell
            } else {
                product.style.display = 'none'; // Hide product cell
            }
        });

        // Display message if no products are available in the selected range
        const messageContainer = document.getElementById('unavailable-message');
        const visibleProducts = document.querySelectorAll('.product-cell[style="display: block;"]');
        if (visibleProducts.length === 0) {
            messageContainer.style.display = 'block';
        } else {
            messageContainer.style.display = 'none';
        }
    }
    function sortProducts(sortBy) {
    const productContainer = document.getElementById('product-row');
    const products = Array.from(productContainer.getElementsByClassName('product-cell'));

    products.sort((a, b) => {
        const priceA = parseInt(a.getAttribute('data-price'));
        const priceB = parseInt(b.getAttribute('data-price'));
        const ratingA = parseFloat(a.getAttribute('data-rating'));
        const ratingB = parseFloat(b.getAttribute('data-rating'));

        if (sortBy === 'popularity') {
            // Assuming popularity is derived from rating
            return ratingB - ratingA;
        } else if (sortBy === 'rating-low-high') {
            return ratingA - ratingB;
        } else if (sortBy === 'rating-high-low') {
            return ratingB - ratingA;
        }
    });

    // Clear the container and append sorted products
    productContainer.innerHTML = '';
    products.forEach(product => productContainer.appendChild(product));
}

// Event listener for the sort-by dropdown
document.getElementById('sort-by').addEventListener('change', function() {
    sortProducts(this.value);
});

// Initial sort to set the default sorting order
sortProducts(document.getElementById('sort-by').value);

</script>
</body>
</html>
