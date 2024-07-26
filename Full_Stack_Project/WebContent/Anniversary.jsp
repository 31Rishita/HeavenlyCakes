 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
   
    <title>Anniversary Cakes</title>
    <style>
        .highlight { border: 2px solid red; }
        .product-cell { display: inline-block; margin: 10px; }
        #unavailable-message { display: none; color: red; }
    </style>
    <link rel="stylesheet" href="Head/CSS/style.css">
</head>
<script>function toggleHeart(icon) {
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
document.getElementById('cakeSelect').addEventListener('change', function() {
    var selectedCake = this.options[this.selectedIndex].text;
    var breadcrumb = document.querySelector('.breadcrumb');
    breadcrumb.innerHTML = '<a href="#">Home</a> &gt; <a href="#">Anniversary Cakes</a> &gt; <a href="#">' + selectedCake + '</a>';
});

</script>
<body>
<jsp:include page="Header.jsp" />
  
    <div class="breadcrumb">
      <a href="#">Home</a> &gt; <a href="#">Anniversary Cakes</a>
      <a href="#"></a>
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
                <a href="AnniversaryFrame1.jsp">
                    <img src="https://assets.winni.in/product/primary/2014/6/27756.jpeg?dpr=1&w=400" alt="Lipsmacking Black Forest Cake" class="product-image">
                </a>
                <div class="product-title">Stunning Anniversary Cream Cake</div>
                <div class="product-price">
                    ₹599 <span class="product-discount">₹649</span> <span class="product-discount-rate">8% Off</span>
                </div>
                <div class="product-rating">
                    <span class="rating-value">4.7 ★</span>
                    <span class="reviews-count">17 Reviews</span>
                </div>
                <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                    <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
                </svg>            
            </div>  
        
            <div class="product-cell" data-price="949" data-rating="4.9">
                <div class="product-container">
                <a href="AnniversaryFrame1.jsp">
                <img src="https://assets.winni.in/product/primary/2022/9/74696.jpeg?dpr=1&w=400" 
                alt="Lipsmacking Black Forest Cake" class="product-image">
                </a>
                <div class="product-title">Say Cheers To Togetherness Photo Cake</div>
                <div class="product-price">
                    ₹949 <span class="product-discount">₹1349</span> <span class="product-discount-rate">30% Off</span>
                </div>
                <div class="product-rating">
                    <span class="rating-value">4.9 ★</span>
                    <span class="reviews-count">11 Reviews</span>
                </div>
                <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                    <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
                </svg>            
            </div>
        
            <div class="product-cell" data-price="799" data-rating="4.8">
                <div class="product-container">
                <a href="AnniversaryFrame1.jsp">
                <img src="https://assets.winni.in/product/primary/2014/8/37695.jpeg?dpr=1&w=400" 
                alt="Lipsmacking Black Forest Cake" class="product-image"></a>
                <div class="product-title">Lovely Red Velvet Heart shape Cake</div>
                <div class="product-price">
                    ₹799 <span class="product-discount">₹999</span> <span class="product-discount-rate">20% Off</span>
                </div>
                <div class="product-rating">
                    <span class="rating-value">4.8 ★</span>
                    <span class="reviews-count">65 Reviews</span>
                </div>
                <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                    <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
                </svg>            
            </div>
      
        <div class="product-cell" data-price="1309" data-rating="4.6">
            <div class="product-container">
            <a href="AnniversaryFrame1.jsp">
            <img src="https://assets.winni.in/product/primary/2014/10/47470.jpeg?dpr=1&w=400" 
            alt="Lipsmacking Black Forest Cake" class="product-image"></a>
            <div class="product-title">Choco Beauty</div>
            <div class="product-price">
                ₹1309 <span class="product-discount">₹1609</span> <span class="product-discount-rate">19% Off</span>
            </div>
            <div class="product-rating">
                <span class="rating-value">4.6 ★</span>
                <span class="reviews-count">31 Reviews</span>
            </div>
            <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
            </svg>        
        </div>
      
          <div class="product-cell" data-price="899" data-rating="5.0">
            <div class="product-container">
            <a href="AnniversaryFrame1.jsp">
              <img src="https://assets.winni.in/product/primary/2014/8/39618.jpeg?dpr=1&w=400"
               alt="Lipsmacking Black Forest Cake" class="product-image"></a>
              <div class="product-title">Imperfectly Perfect Anniversary Cake</div>
              <div class="product-price">
                  ₹899 <span class="product-discount">₹1299</span> <span class="product-discount-rate">31% Off</span>
              </div>
              <div class="product-rating">
                  <span class="rating-value">5.0 ★</span>
                  <span class="reviews-count">38 Reviews</span>
              </div>
              <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
            </svg>         
         </div>
      
          <div class="product-cell" data-price="689" data-rating="4.4">
            <div class="product-container">
            <a href="AnniversaryFrame1.jsp">
              <img src="https://assets.winni.in/product/primary/2022/12/80400.jpeg?dpr=1&w=400" 
              alt="Lipsmacking Black Forest Cake" class="product-image"></a>
              <div class="product-title">Always Together Venilla Cake</div>
              <div class="product-price">
                  ₹689 <span class="product-discount">₹789</span> <span class="product-discount-rate">10% Off</span>
              </div>
              <div class="product-rating">
                  <span class="rating-value">4.4 ★</span>
                  <span class="reviews-count">9 Reviews</span>
              </div>
              <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
            </svg>          
          </div>
     
          <div class="product-cell" data-price="4099" data-rating="5.0">
            <div class="product-container">
            <a href="AnniversaryFrame1.jsp">
              <img src="https://assets.winni.in/product/primary/2022/10/76495.jpeg?dpr=1&w=400" 
              alt="Lipsmacking Black Forest Cake" class="product-image"></a>
              <div class="product-title">Love Christian Wedding Cake</div>
              <div class="product-price">
                  ₹4099 <span class="product-discount">₹4599</span> <span class="product-discount-rate">26% Off</span>
              </div>
              <div class="product-rating">
                  <span class="rating-value">5.0 ★</span>
                  <span class="reviews-count">50 Reviews</span>
              </div>
              <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
            </svg>         
          </div>
         
          <div class="product-cell" data-price="3699" data-rating="4.9">
            <div class="product-container">
            <a href="AnniversaryFrame1.jsp">
              <img src="https://assets.winni.in/product/primary/2014/8/42487.jpeg?dpr=1&w=400" 
              alt="Lipsmacking Black Forest Cake" class="product-image"></a>
              <div class="product-title">Mom & Dad Anniversary Cake</div>
              <div class="product-price">
                  ₹3699<span class="product-discount">₹3999</span> <span class="product-discount-rate">12% Off</span>
              </div>
              <div class="product-rating">
                  <span class="rating-value">4.9 ★</span>
                  <span class="reviews-count">30 Reviews</span>
              </div>
              <svg class="heart-icon" onclick="toggleHeart(this)" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
            </svg>         
          </div>
    </div>
    <div id="unavailable-message" style="display: none;">No products available in this price range.</div>
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