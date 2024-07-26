<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Head/CSS/style.css">
<style>
        .highlight { border: 2px solid red; }
        .product-cell { display: inline-block; margin: 10px; }
        #unavailable-message { display: none; color: red; }
    </style>
<script>
        // Function to filter products based on price range
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
      <a href="#">Home</a> &gt; <a href="#">Cakes and Flowers</a>
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
            <div class="product-cell" data-price="1319" data-rating="4.7">
                <div class="product-container">
                <a href="flowerframe1.jsp">
                    <img src="https://assets.winni.in/product/primary/2022/7/64893.jpeg?dpr=1&w=400" alt="Lipsmacking Black Forest Cake" class="product-image">
                </a>
                <div class="product-title">Special Pink Flower with Cake</div>
                <div class="product-price">
                    1319<span class="product-discount">1569</span> <span class="product-discount-rate">16% Off</span>
                </div>
                <div class="product-rating">
                    <span class="rating-value">3.7 ★</span>
                    <span class="reviews-count">8 Reviews</span>
                </div>
                                            <form action="AddToWishlistServlet" method="post">
    <input type="hidden" name="itemName" value="Delicious Butterscotch Cake">
    <input type="hidden" name="itemPrice" value="675">
    <input type="hidden" name="imageUrl" value="https://assets.winni.in/product/primary/2022/7/64893.jpeg?dpr=1&w=400">
    <input type="hidden" name="description" value="Description of the cake">
    <button type="submit" style="background-color: #f44336; color: white; border: none; padding: 5px 10px; border-radius: 5px; cursor: pointer;">Add to Wishlist</button>
</form>           </div>   
            </div>

        
      
        <div class="product-cell" data-price="1209" data-rating="4.5">
            <div class="product-container">
            <a href="flowerframe2.jsp">
            <img src="https://assets.winni.in/product/primary/2023/10/89986.jpeg?dpr=1&w=400" 
            alt="Choco vanilla Cake with Bamboo Plant" class="product-image"></a>
            <div class="product-title">Choco vanilla Cake with Bamboo Plant</div>
            <div class="product-price">
                ₹1209 <span class="product-discount">₹1300</span> <span class="product-discount-rate">5% Off</span>
            </div>
            <div class="product-rating">
                <span class="rating-value">4.5 ★</span>
                <span class="reviews-count">2 Reviews</span>
            </div>
                                        <form action="AddToWishlistServlet" method="post">
    <input type="hidden" name="itemName" value="Delicious Butterscotch Cake">
    <input type="hidden" name="itemPrice" value="675">
    <input type="hidden" name="imageUrl" value="https://assets.winni.in/product/primary/2023/10/89986.jpeg?dpr=1&w=400">
    <input type="hidden" name="description" value="Description of the cake">
    <button type="submit" style="background-color: #f44336; color: white; border: none; padding: 5px 10px; border-radius: 5px; cursor: pointer;">Add to Wishlist</button>
</form>        </div>
    </div>

    <div class="product-cell" data-price="1129" data-rating="3.0">
        <div class="product-container">
        <a href="flowerframe3.jsp">
        <img src="https://assets.winni.in/product/primary/2014/10/49914.jpeg?dpr=1&w=400" 
        alt="Best of Luck Pink Combo" class="product-image"></a>
        <div class="badge best-seller">Best Seller</div>
         <div class="product-title">Expression Of Love Red Velvet Cake</div>
        <div class="product-title">Best of Luck Pink Combo</div>
        <div class="product-price">
            ₹1129 <span class="product-discount">₹1429</span> <span class="product-discount-rate">21% Off</span>
        </div>
        <div class="product-rating">
            <span class="rating-value">3.0 ★</span>
            <span class="reviews-count">8 Reviews</span>
        </div>
                                    <form action="AddToWishlistServlet" method="post">
    <input type="hidden" name="itemName" value="Delicious Butterscotch Cake">
    <input type="hidden" name="itemPrice" value="675">
    <input type="hidden" name="imageUrl" value="https://assets.winni.in/product/primary/2014/10/49914.jpeg?dpr=1&w=400">
    <input type="hidden" name="description" value="Description of the cake">
    <button type="submit" style="background-color: #f44336; color: white; border: none; padding: 5px 10px; border-radius: 5px; cursor: pointer;">Add to Wishlist</button>
</form>            </div>
    </div>

    
    <div class="product-cell" data-price="1459" data-rating="5.0">
        <div class="product-container">
        <a href="flowerframe4.jsp">
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
                                    <form action="AddToWishlistServlet" method="post">
    <input type="hidden" name="itemName" value="Delicious Butterscotch Cake">
    <input type="hidden" name="itemPrice" value="675">
    <input type="hidden" name="imageUrl" value="https://assets.winni.in/product/primary/2014/8/35869.jpeg?dpr=1&w=400">
    <input type="hidden" name="description" value="Description of the cake">
    <button type="submit" style="background-color: #f44336; color: white; border: none; padding: 5px 10px; border-radius: 5px; cursor: pointer;">Add to Wishlist</button>
</form>            </div>
       </div>
          <div class="product-cell" data-price="1199" data-rating="4.4">
            <div class="product-container">
            <a href="frameset5.html">
              <img src="https://assets.winni.in/product/primary/2024/3/94553.jpeg?dpr=1&w=400" 
              alt="Magnificient Gesture" class="product-image"></a>
              <div class="product-title">Magnificient Gesture</div>
              <div class="product-price">
                  ₹1199<span class="product-discount">₹1549</span> <span class="product-discount-rate">8% Off</span>
              </div>
              <div class="product-rating">
                  <span class="rating-value">4.4 ★</span>
                  <span class="reviews-count">8 Reviews</span>
              </div>
                                          <form action="AddToWishlistServlet" method="post">
    <input type="hidden" name="itemName" value="Delicious Butterscotch Cake">
    <input type="hidden" name="itemPrice" value="675">
    <input type="hidden" name="imageUrl" value="https://assets.winni.in/product/primary/2014/8/35869.jpeg?dpr=1&w=400">
    <input type="hidden" name="description" value="Description of the cake">
    <button type="submit" style="background-color: #f44336; color: white; border: none; padding: 5px 10px; border-radius: 5px; cursor: pointer;">Add to Wishlist</button>
</form>          </div>
          </div>
      
          <div class="product-cell" data-price="1369" data-rating="3.8">
            <div class="product-container">
            <a href="frameset6.html">
              <img src="https://assets.winni.in/product/primary/2022/7/64895.jpeg?dpr=1&w=400"
               alt="Mix Flower with Cake" class="product-image"></a>
              <div class="product-title">Mix Flower with Cake</div>
              <div class="product-price">
                  ₹1369 <span class="product-discount">₹1919</span> <span class="product-discount-rate">8% Off</span>
              </div>
              <div class="product-rating">
                  <span class="rating-value">3.8 ★</span>
                  <span class="reviews-count">5 Reviews</span>
              </div>
                                          <form action="AddToWishlistServlet" method="post">
    <input type="hidden" name="itemName" value="Delicious Butterscotch Cake">
    <input type="hidden" name="itemPrice" value="675">
    <input type="hidden" name="imageUrl" value="https://assets.winni.in/product/primary/2022/7/64895.jpeg?dpr=1&w=400">
    <input type="hidden" name="description" value="Description of the cake">
    <button type="submit" style="background-color: #f44336; color: white; border: none; padding: 5px 10px; border-radius: 5px; cursor: pointer;">Add to Wishlist</button>
</form>          </div>
          </div>
      
          <div class="product-cell" data-price="1499" data-rating="4.0">
            <div class="product-container">
            <a href="frameset7.html">
              <img src="https://assets.winni.in/product/primary/2024/1/93459.jpeg?dpr=1&w=400" 
              alt="Red Velvet Cakes with Vibrant Roses" class="product-image"></a>
              <div class="product-title">Red Velvet Cakes with Vibrant Roses</div>
              <div class="product-price">
                  ₹1499 <span class="product-discount">₹1749</span> <span class="product-discount-rate">7% Off</span>
              </div>
              <div class="product-rating">
                  <span class="rating-value">4.0 ★</span>
                  <span class="reviews-count">12 Reviews</span>
              </div>
                                          <form action="AddToWishlistServlet" method="post">
    <input type="hidden" name="itemName" value="Delicious Butterscotch Cake">
    <input type="hidden" name="itemPrice" value="675">
    <input type="hidden" name="imageUrl" value="https://assets.winni.in/product/primary/2024/1/93459.jpeg?dpr=1&w=400">
    <input type="hidden" name="description" value="Description of the cake">
    <button type="submit" style="background-color: #f44336; color: white; border: none; padding: 5px 10px; border-radius: 5px; cursor: pointer;">Add to Wishlist</button>
</form>          </div>
          </div>
     
          <div class="product-cell" data-price="1179" data-rating="4.7">
            <div class="product-container">
            <a href="frameset8.html">
              <img src="https://assets.winni.in/product/primary/2023/3/83202.jpeg?dpr=1&w=400" 
              alt="Glittery Roses and Pineapple cake Combo" class="product-image"></a>
              <div class="product-title">Glittery Roses and Pineapple cake Combo</div>
              <div class="product-price">
                  ₹1179<span class="product-discount">₹1629</span> <span class="product-discount-rate">8% Off</span>
              </div>
              <div class="product-rating">
                  <span class="rating-value">4.7★</span>
                  <span class="reviews-count">11 Reviews</span>
              </div>
                                          <form action="AddToWishlistServlet" method="post">
    <input type="hidden" name="itemName" value="Delicious Butterscotch Cake">
    <input type="hidden" name="itemPrice" value="675">
    <input type="hidden" name="imageUrl" value="https://assets.winni.in/product/primary/2023/3/83202.jpeg?dpr=1&w=400">
    <input type="hidden" name="description" value="Description of the cake">
    <button type="submit" style="background-color: #f44336; color: white; border: none; padding: 5px 10px; border-radius: 5px; cursor: pointer;">Add to Wishlist</button>
</form>         </div>
          </div>
    </div>
    <div id="unavailable-message" style="display: none;">No products available in this price range.</div>
</body>
</html>