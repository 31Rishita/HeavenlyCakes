<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BirthDay Cakes</title>
    <link rel="stylesheet" href="Head/CSS/style.css">
</head>
<style>
    .product-container {
        text-align: center;
    }
    .action-buttons {
        margin-top: 10px;
    }
    .action-buttons button {
        background-color: #ff6b6b;
        color: white;
        border: none;
        padding: 10px 20px;
        margin: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
    }
    .action-buttons button:hover {
        background-color: #ff4757;
    }
    .heart-icon {
        cursor: pointer;
        fill: #ccc;
        transition: fill 0.3s;
    }
    .heart-icon.active {
        fill: red;
    }
    .wishlist-count {
        display: inline-block;
        margin-top: 5px;
        font-size: 14px;
        color: #333;
    }
</style>
<body>   
	<jsp:include page="Header.jsp" /> 

    <div class="breadcrumb">
      <a href="#">Home</a> &gt; <a href="#">Birthday Cakes</a>
  </div>
  <div class="header">
    <h1>Redcelvet Cakes <span>(8 items)</span></h1>
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
                    <img src="https://assets.winni.in/c_limit,dpr_1,fl_progressive,q_80,w_1000/73507_red-velvet-name-cake.jpeg" alt="Lipsmacking Black Forest Cake" class="product-image">
                </a>
                <div class="badge trending">Trending</div>
                <div class="product-title">Red Velvet Name Cake</div>
                <div class="product-price">
                    ₹599 <span class="product-discount">₹649</span> <span class="product-discount-rate">8% Off</span>
                </div>
                <div class="product-rating">
                    <span class="rating-value">4.7 ★</span>
                    <span class="reviews-count">38 Reviews</span>
                </div>
                <div class="action-buttons">
            <button onclick="addToCart(this)">Add to Cart</button>
            <button onclick="addToWishlist(this)">Add to Wishlist</button>
        </div>
                <span id="wishlistCount" class="wishlist-count">0</span>
                <svg class="heart-icon" onclick="addToWishlist(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                    <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
                </svg>            </div>   
            </div>
        
            <div class="product-cell" data-price="649" data-rating="4.6">
                <div class="product-container">
                <a href="CakeFrame3.html">
                <img src="https://abajillianrecipes.com/wp-content/uploads/2022/10/Bloody-Red-Velvet-Cake-A-baJillian-Recipes-7.jpg" 
                alt="Lipsmacking Black Forest Cake" class="product-image">
                </a>
                <div class="badge new-arrival">New Arrival</div>
                <div class="product-title">Frosting Red Velvet Cake</div>
                <div class="product-price">
                    ₹649 <span class="product-discount">₹699</span> <span class="product-discount-rate">10% Off</span>
                </div>
                <div class="product-rating">
                    <span class="rating-value">4.6 ★</span>
                    <span class="reviews-count">38 Reviews</span>
                </div>
                <div class="action-buttons">
            <button onclick="addToCart(this)">Add to Cart</button>
            <button onclick="addToWishlist(this)">Add to Wishlist</button>
        </div>
                <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                    <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
                </svg>            </div>
        </div>
        
            <div class="product-cell" data-price="649" data-rating="4.5">
                <div class="product-container">
                <a href="CakeFrame4.html">
                <img src="https://i.pinimg.com/736x/1d/73/55/1d73556800e6077c283ad85311a19206.jpg" 
                alt="Lipsmacking Black Forest Cake" class="product-image"></a>
                <div class="badge trending">Trending</div>
                <div class="product-title">Heart Shaped Red Velvet Cake</div>
                <div class="product-price">
                    ₹649 <span class="product-discount">₹799</span> <span class="product-discount-rate">19% Off</span>
                </div>
                <div class="product-rating">
                    <span class="rating-value">4.5 ★</span>
                    <span class="reviews-count">38 Reviews</span>
                </div>
                <div class="action-buttons">
            <button onclick="addToCart(this)">Add to Cart</button>
            <button onclick="addToWishlist(this)">Add to Wishlist</button>
        </div>
                <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                    <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
                </svg>            </div>
            </div>
      
        <div class="product-cell" data-price="1499" data-rating="5.0">
            <div class="product-container">
            <a href="kids.html">
            <img src="https://assets.winni.in/product/primary/2024/1/93194.jpeg?dpr=1&w=1000"" 
            alt="Lipsmacking Black Forest Cake" class="product-image"></a>
            <div class="badge best-seller">Best Seller</div>
            <div class="product-title">Expression Of Love Red Velvet Cake</div>
            <div class="product-price">
                ₹1499 <span class="product-discount">₹1999</span> <span class="product-discount-rate">25% Off</span>
            </div>
            <div class="product-rating">
                <span class="rating-value">5.0 ★</span>
                <span class="reviews-count">38 Reviews</span>
            </div>
            <div class="action-buttons">
            <button onclick="addToCart(this)">Add to Cart</button>
            <button onclick="addToWishlist(this)">Add to Wishlist</button>
        </div>
            <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
            </svg>        </div>
    </div>
      
          <div class="product-cell" data-price="550" data-rating="4.8">
            <div class="product-container">
            <a href="CakeFrame6.html">
              <img src="https://bkmedia.bakingo.com/heart-shaped-red-velvet-cake-cake1095redv-AA.jpg"
               alt="Lipsmacking Black Forest Cake" class="product-image"></a>
               <div class="badge new-arrival">New Arrival</div>
              <div class="product-title">Red Velvet Heart Cake</div>
              <div class="product-price">
                  ₹550 <span class="product-discount">₹649</span> <span class="product-discount-rate">30% Off</span>
              </div>
              <div class="product-rating">
                  <span class="rating-value">4.8 ★</span>
                  <span class="reviews-count">38 Reviews</span>
              </div>
              <div class="action-buttons">
            <button onclick="addToCart(this)">Add to Cart</button>
            <button onclick="addToWishlist(this)">Add to Wishlist</button>
        </div>
              <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
            </svg>          </div>
          </div>
      
          <div class="product-cell" data-price="579" data-rating="4.9">
            <div class="product-container">
            <a href="CakeFrame7.html">
              <img src="https://assets.winni.in/c_limit,dpr_1,fl_progressive,q_80,w_1000/83218_tempting-red-velvet-cake.jpeg" 
              alt="Lipsmacking Black Forest Cake" class="product-image"></a>
              <div class="badge new-arrival">New Arrival</div>
              <div class="product-title">Tempting Red Velvet Cake</div>
              <div class="product-price">
                  ₹579 <span class="product-discount">₹829</span> <span class="product-discount-rate">30% Off</span>
              </div>
              <div class="product-rating">
                  <span class="rating-value">4.9 ★</span>
                  <span class="reviews-count">38 Reviews</span>
              </div>
              <div class="action-buttons">
            <button onclick="addToCart(this)">Add to Cart</button>
            <button onclick="addToWishlist(this)">Add to Wishlist</button>
        </div>
              <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
            </svg>          </div>
          </div>
     
          <td>
          <div class="product-cell" data-price="589" data-rating="4.4">
            <div class="product-container">
            <a href="CakeFrame1.html">
              <img src="https://assets.winni.in/c_limit,dpr_1,fl_progressive,q_80,w_1000/50428_luscious-red-velvet-pinata.jpeg" 
              alt="Lipsmacking Black Forest Cake" class="product-image"></a>
              <div class="badge best-seller">Best Seller</div>
              <div class="product-title">Luscious Red Velvet Pinata</div>
              <div class="product-price">
                  ₹589<span class="product-discount">₹639</span> <span class="product-discount-rate">8% Off</span>
              </div>
              <div class="product-rating">
                  <span class="rating-value">4.4 ★</span>
                  <span class="reviews-count">38 Reviews</span>
              </div>
              <div class="action-buttons">
            <button onclick="addToCart(this)">Add to Cart</button>
            <button onclick="addToWishlist(this)">Add to Wishlist</button>
        </div>
              <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
            </svg>          </div>
          </div>

          <div class="product-cell" data-price="949" data-rating="4.9">
            <div class="product-container">
            <a href="CakeFrame8.html">
              <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIX7wNZMolePrYzAoqI1w_pTIDhRSnGEnzUQ&s" 
              alt="Lipsmacking Black Forest Cake" class="product-image"></a>
              <div class="badge trending">Trending</div>
              <div class="product-title">Strawberry Cake</div>
              <div class="product-price">
                  ₹699 <span class="product-discount">₹949</span> <span class="product-discount-rate">26% Off</span>
              </div>
              <div class="product-rating">
                  <span class="rating-value">4.9 ★</span>
                  <span class="reviews-count">38 Reviews</span>
              </div>
              <div class="action-buttons">
            <button onclick="addToCart(this)">Add to Cart</button>
            <button onclick="addToWishlist(this)">Add to Wishlist</button>
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
    event.preventDefault(); // Prevent the default action of the anchor tag
    
    // Increment the wishlist count
    wishlistCount++;
    
    // Update the badge
    const wishlistBadge = document.querySelector('.wishlist-badge');
    wishlistBadge.textContent = wishlistCount;
}// Function to filter products based on price range
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
    </body>
</html>