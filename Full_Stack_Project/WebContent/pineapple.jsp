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
                    <img src="https://assets.winni.in/product/primary/2024/3/94563.jpeg?dpr=1&w=1000" alt="Lipsmacking Black Forest Cake" class="product-image">
                </a>
                <div class="badge trending">Trending</div>
                <div class="product-title">Delicious PineApple Cake</div>
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
                <img src="https://assets.winni.in/product/primary/2023/8/88957.jpeg?dpr=1&w=500" 
                alt="Lipsmacking Black Forest Cake" class="product-image">
                </a>
                <div class="badge new-arrival">New Arrival</div>
                <div class="product-title">Yummy PineApple Cake</div>
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
                <img src="https://assets.winni.in/product/primary/2024/6/95861.jpeg?dpr=1&w=500" 
                alt="Lipsmacking Black Forest Cake" class="product-image"></a>
                <div class="badge trending">Trending</div>
                <div class="product-title">Tropical Bliss PineApple Cake</div>
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
            <img src="https://bkmedia.bakingo.com/sq-pineapple-cake0022pifr-AA_0.jpg?tr=w-500,h-500" 
            alt="Lipsmacking Black Forest Cake" class="product-image"></a>
            <div class="badge best-seller">Best Seller</div>
            <div class="product-title">PineApple Cake</div>
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
              <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlRlbJ-86XtCq8waHKR4B2vX-N_kPKAC2EJQ&s"
               alt="Lipsmacking Black Forest Cake" class="product-image"></a>
               <div class="badge new-arrival">New Arrival</div>
              <div class="product-title">Minni PineApple Cake</div>
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
              <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzghLx-c_BIvSNhER-4c9SOyBRN_KtcQ5Ovw&s" 
              alt="Lipsmacking Black Forest Cake" class="product-image"></a>
              <div class="badge new-arrival">New Arrival</div>
              <div class="product-title">Sunshine PineApple Cake</div>
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
              <img src="https://assets.winni.in/c_limit,dpr_1,fl_progressive,q_80,w_600/85584_scrumptious-pineapple-cake.jpeg" 
              alt="Lipsmacking Black Forest Cake" class="product-image"></a>
              <div class="badge best-seller">Best Seller</div>
              <div class="product-title">Scrumptious Pineapple Cake</div>
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
              <img src="https://assets.winni.in/product/primary/2024/1/93310.jpeg?dpr=1&w=1000" 
              alt="Lipsmacking Black Forest Cake" class="product-image"></a>
              <div class="badge trending">Trending</div>
              <div class="product-title">Love You Pineapple Round Cake</div>
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
    <script>
	function toggleHeart(icon) {
	    icon.classList.toggle('active');
	}
	let wishlistCount = 0;
	function addToWishlist(event) 
	{
	    event.preventDefault();
	    
	    wishlistCount++;
	    
	    const wishlistBadge = document.querySelector('.wishlist-badge');
	    wishlistBadge.textContent = wishlistCount;
	}
	function filterProducts(priceRange) {
	    const products = document.querySelectorAll('.product-cell');
	    let minPrice = 0;
	    let maxPrice = Infinity;

	    if (priceRange !== 'all') {
	        const priceParts = priceRange.split('-');
	        minPrice = parseInt(priceParts[0]);
	        if (priceParts[1]) {
	            maxPrice = parseInt(priceParts[1]);
	        }
	    }

	    let visibleCount = 0;
	    products.forEach(product => {
	        const price = parseInt(product.getAttribute('data-price'));
	        if (price >= minPrice && price <= maxPrice) {
	            product.style.display = 'block';
	            visibleCount++;
	        } else {
	            product.style.display = 'none';
	        }
	    });

	    document.getElementById('unavailable-message').style.display = visibleCount === 0 ? 'block' : 'none';
	}

	function sortProducts(sortBy) {
	    const productRow = document.getElementById('product-row');
	    const products = Array.from(productRow.getElementsByClassName('product-cell'));

	    products.sort((a, b) => {
	        let comparison = 0;
	        if (sortBy === 'price-low-high') {
	            comparison = parseInt(a.getAttribute('data-price')) - parseInt(b.getAttribute('data-price'));
	        } else if (sortBy === 'price-high-low') {
	            comparison = parseInt(b.getAttribute('data-price')) - parseInt(a.getAttribute('data-price'));
	        } else if (sortBy === 'rating-low-high') {
	            comparison = parseFloat(a.getAttribute('data-rating')) - parseFloat(b.getAttribute('data-rating'));
	        } else if (sortBy === 'rating-high-low') {
	            comparison = parseFloat(b.getAttribute('data-rating')) - parseFloat(a.getAttribute('data-rating'));
	        }
	        return comparison;
	    });

	    products.forEach(product => productRow.appendChild(product));
	}

	document.getElementById('price-filter').addEventListener('change', function() {
	    filterProducts(this.value);
	});

	document.getElementById('sort-by').addEventListener('change', function() {
	    sortProducts(this.value);
	});

	</script>
</html>