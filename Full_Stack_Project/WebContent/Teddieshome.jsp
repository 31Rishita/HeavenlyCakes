<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        .highlight { border: 2px solid red; }
        .product-cell { display: inline-block; margin: 10px; }
        #unavailable-message { display: none; color: red; }
</style>
<link rel="stylesheet" href="Head/CSS/style.css">
<script>
    function toggleHeart(icon) {
        icon.classList.toggle('active');
    }
    let wishlistCount = 0;

    function addToWishlist(event) 
    {
        event.preventDefault(); // Prevent the default action of the anchor tag
        
        // Increment the wishlist count
        wishlistCount++;
        
        // Update the badge
        const wishlistBadge = document.querySelector('.wishlist-badge');
        wishlistBadge.textContent = wishlistCount;
    }
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
            } else if (sortBy === 'price-low-high') {
                    return priceA - priceB;
            } else if (sortBy === 'price-high-low') {
                    return priceB - priceA;
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
</head>
<body>
		<jsp:include page="Header.jsp" />
    <div class="breadcrumb">
      <a href="#">Home</a> &gt; <a href="#">Cakes and Teddies</a>
  </div>
  <div class="header">
    <h1>Birthday Cakes <span>(20 items)</span></h1>
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
            <div class="product-cell" data-price="3,229" data-rating="3.7">
                <div class="product-container">
                <a href="teddies8.html">
                    <img src="https://assets.winni.in/product/primary/2022/7/68732.jpeg?dpr=1&w=400" alt="Meadow In A Hamper" class="product-image">
                </a>
                <div class="product-title">Meadow In A Hamper</div>
                <div class="product-price">
                    ₹3229<span class="product-discount">₹4600</span> <span class="product-discount-rate">16% Off</span>
                </div>
                <div class="product-rating">
                    <span class="rating-value">3.7 ★</span>
                    <span class="reviews-count">8 Reviews</span>
                </div>
                <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                    <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
                </svg>            </div>   
            </div>

        
      
        <div class="product-cell" data-price="2159" data-rating="5.0">
            <div class="product-container">
            <a href="teddies1.html">
            <img src="https://assets.winni.in/product/primary/2014/8/38041.jpeg?dpr=1&w=400" 
            alt="Awesome Blossom" class="product-image"></a>
            <div class="product-title">Awesome Blossom</div>
            <div class="product-price">
                ₹2159 <span class="product-discount">₹3259</span> <span class="product-discount-rate">34% Off</span>
            </div>
            <div class="product-rating">
                <span class="rating-value">5.0 ★</span>
                <span class="reviews-count">7 Reviews</span>
            </div>
            <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
            </svg>        </div>
    </div>

    <div class="product-cell" data-price="1429" data-rating="4.5">
        <div class="product-container">
        <a href="teddies5.html">
        <img src="https://assets.winni.in/product/primary/2014/8/35881.jpeg?dpr=1&w=400" 
        alt="Lovely Bond Of Love" class="product-image"></a>
        <div class="product-title">Lovely Bond Of Love</div>
        <div class="product-price">
            ₹1429 <span class="product-discount">₹1879</span> <span class="product-discount-rate">24% Off</span>
        </div>
        <div class="product-rating">
            <span class="rating-value">4.5 ★</span>
            <span class="reviews-count">24 Reviews</span>
        </div>
        <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
            <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
        </svg>            </div>
    </div>

    
    <div class="product-cell" data-price="1459" data-rating="4.7">
        <div class="product-container">
        <a href="teddies2.html">
        <img src="https://assets.winni.in/product/primary/2014/8/35869.jpeg?dpr=1&w=400" 
        alt="Swoon in Love" class="product-image">
        </a>
        <div class="product-title">Swoon in Love</div>
        <div class="product-price">
            ₹1459 <span class="product-discount">₹1709</span> <span class="product-discount-rate">15% Off</span>
        </div>
        <div class="product-rating">
            <span class="rating-value">4.7 ★</span>
            <span class="reviews-count">19 Reviews</span>
        </div>
        <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
            <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
        </svg>            </div>
       </div>
          <div class="product-cell" data-price="1459" data-rating="5.0">
            <div class="product-container">
            <a href="teddies3.html">
              <img src="https://assets.winni.in/product/primary/2014/8/36312.jpeg?dpr=1&w=400" 
              alt="Palatable Loves" class="product-image"></a>
              <div class="product-title">Palatable Loves</div>
              <div class="product-price">
                  ₹1459<span class="product-discount">₹1909</span> <span class="product-discount-rate">24% Off</span>
              </div>
              <div class="product-rating">
                  <span class="rating-value">5.0 ★</span>
                  <span class="reviews-count">3 Reviews</span>
              </div>
              <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
            </svg>          </div>
          </div>
      
          <div class="product-cell" data-price="1739" data-rating="4.5">
            <div class="product-container">
            <a href="teddies6.html">
              <img src="https://assets.winni.in/product/primary/2014/8/36313.jpeg?dpr=1&w=400"
               alt="Love Treasure Combo" class="product-image"></a>
              <div class="product-title">Love Treasure Combo</div>
              <div class="product-price">
                  ₹1739 <span class="product-discount">₹2035</span> <span class="product-discount-rate">15% Off</span>
              </div>
              <div class="product-rating">
                  <span class="rating-value">4.5 ★</span>
                  <span class="reviews-count">2 Reviews</span>
              </div>
              <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
            </svg>          </div>
          </div>
      
          <div class="product-cell" data-price="1779" data-rating="4.8">
            <div class="product-container">
            <a href="teddies4.html">
              <img src="https://assets.winni.in/product/primary/2014/6/33257.jpeg?dpr=1&w=400" 
              alt="Hamper of Sweetness" class="product-image"></a>
              <div class="product-title">Hamper Of Sweetness</div>
              <div class="product-price">
                  ₹1779 <span class="product-discount">₹2799</span> <span class="product-discount-rate">36% Off</span>
              </div>
              <div class="product-rating">
                  <span class="rating-value">4.8 ★</span>
                  <span class="reviews-count">11 Reviews</span>
              </div>
              <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
            </svg>          </div>
          </div>
     
          <div class="product-cell" data-price="1879" data-rating="4.3">
            <div class="product-container">
            <a href="teddies7.html">
              <img src="https://assets.winni.in/product/primary/2022/7/65986.jpeg?dpr=1&w=400" 
              alt="Blonde Spring Combo" class="product-image"></a>
              <div class="product-title">Blonde Spring Combo</div>
              <div class="product-price">
                  ₹1879<span class="product-discount">₹2559</span> <span class="product-discount-rate">27% Off</span>
              </div>
              <div class="product-rating">
                  <span class="rating-value">4.3★</span>
                  <span class="reviews-count">11 Reviews</span>
              </div>
              <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
            </svg>          </div>
          </div>
    </div>
    <div id="unavailable-message" style="display: none;">No products available in this price range.</div>
</body>
</html>