<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eggless Cakes</title>
    <style>
        .highlight { border: 2px solid red; }
        .product-cell { display: inline-block; margin: 10px; }
        #unavailable-message { display: none; color: red; }
    </style>
    <link rel="stylesheet" href="Head/CSS/style.css">
</head>
<script>
function toggleHeart(icon) {
    icon.classList.toggle('active'); // Toggle heart icon's active class

    // Find product details
    const productContainer = icon.closest('.product-container');
    const productImage = productContainer.querySelector('.product-image').src;
    const productTitle = productContainer.querySelector('.product-title').textContent.trim();
    const productPrice = productContainer.querySelector('.product-price').textContent.trim();

    // Check if product is already in wishlist (you can use session storage or cookies for persistent storage)
    let wishlist = JSON.parse(sessionStorage.getItem('wishlist')) || [];
    const productId = productTitle.replace(/\s+/g, '-').toLowerCase();

    const existingIndex = wishlist.findIndex(item => item.id === productId);

    if (existingIndex !== -1) {
        // Remove from wishlist
        wishlist.splice(existingIndex, 1);
    } else {
        // Add to wishlist
        wishlist.push({ id: productId, image: productImage, title: productTitle, price: productPrice });
    }

    // Update session storage
    sessionStorage.setItem('wishlist', JSON.stringify(wishlist));

    // Update wishlist badge count (optional)
    updateWishlistBadge(wishlist.length);

    // Redirect to wishlist.jsp
    window.location.href = 'wishlist.jsp';
}

// Function to update wishlist badge count
function updateWishlistBadge(count) {
    const wishlistBadge = document.querySelector('.wishlist-badge');
    if (wishlistBadge) {
        wishlistBadge.textContent = count;
    }
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
</script>
<body>   
	<jsp:include page="Header.jsp" />
	
    <div class="breadcrumb">
      <a href="#">Home</a> &gt; <a href="#">Birthday Cakes</a>
  </div>
  <div class="header">
    <h1>Eggless Cakes <span>(8 items)</span></h1>
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
                <a href="egglessframe.jsp">
                    <img src="https://assets.winni.in/product/primary/2023/3/83221.jpeg?dpr=1&w=400" alt="Lipsmacking Black Forest Cake" class="product-image">
                </a>
                <div class="product-title">Yummylicious Chocolate Cake</div>
                <div class="product-price">
                    ₹649 <span class="product-discount">₹869</span> <span class="product-discount-rate">25% Off</span>
                </div>
                <div class="product-rating">
                    <span class="rating-value">4.7 ★</span>
                    <span class="reviews-count">622 Reviews</span>
                </div>
                      
               <form action="AddToWishlistServlet" method="post">
    <input type="hidden" name="itemName" value="Delicious Butterscotch Cake">
    <input type="hidden" name="itemPrice" value="675">
    <input type="hidden" name="imageUrl" value="https://assets.winni.in/product/primary/2023/3/83221.jpeg?dpr=1&w=400">
    <input type="hidden" name="description" value="Description of the cake">
    <button type="submit" style="background-color: #f44336; color: white; border: none; padding: 5px 10px; border-radius: 5px; cursor: pointer;">Add to Wishlist</button>
</form>
                   
                </div>   
            </div>
        
            <div class="product-cell" data-price="649" data-rating="4.6">
                <div class="product-container">
                <a href="egglessframe.jsp">
                <img src="https://assets.winni.in/product/primary/2024/3/94609.jpeg?dpr=1&w=400" 
                alt="Lipsmacking Black Forest Cake" class="product-image">
                </a>
                <div class="product-title">Delicious Butterscotch Cake</div>
                <div class="product-price">
                    ₹675 <span class="product-discount">₹750</span> <span class="product-discount-rate">10% Off</span>
                </div>
                <div class="product-rating">
                    <span class="rating-value">4.6 ★</span>
                    <span class="reviews-count">318 Reviews</span>
                </div>
                            <form action="AddToWishlistServlet" method="post">
    <input type="hidden" name="itemName" value="Delicious Butterscotch Cake">
    <input type="hidden" name="itemPrice" value="675">
    <input type="hidden" name="imageUrl" value="https://assets.winni.in/product/primary/2023/3/83221.jpeg?dpr=1&w=400">
    <input type="hidden" name="description" value="Description of the cake">
    <button type="submit" style="background-color: #f44336; color: white; border: none; padding: 5px 10px; border-radius: 5px; cursor: pointer;">Add to Wishlist</button>
</form> 
                  
          </div>
        </div>
        
            <div class="product-cell" data-price="649" data-rating="4.5">
                <div class="product-container">
                <a href="egglessframe.jsp">
                <img src="https://assets.winni.in/product/primary/2024/3/94571.jpeg?dpr=1&w=400" 
                alt="Lipsmacking Black Forest Cake" class="product-image"></a>
                <div class="product-title">Amazing Black Forest Cake</div>
                <div class="product-price">
                    ₹729 <span class="product-discount">₹949</span> <span class="product-discount-rate">23% Off</span>
                </div>
                <div class="product-rating">
                    <span class="rating-value">4.8 ★</span>
                    <span class="reviews-count">552 Reviews</span>
                </div>
                             <form action="AddToWishlistServlet" method="post">
    <input type="hidden" name="itemName" value="Delicious Butterscotch Cake">
    <input type="hidden" name="itemPrice" value="675">
    <input type="hidden" name="imageUrl" value="https://assets.winni.in/product/primary/2023/3/83221.jpeg?dpr=1&w=400">
    <input type="hidden" name="description" value="Description of the cake">
    <button type="submit" style="background-color: #f44336; color: white; border: none; padding: 5px 10px; border-radius: 5px; cursor: pointer;">Add to Wishlist</button>
</form> 
           </div>
            </div>
      
        <div class="product-cell" data-price="1499" data-rating="5.0">
            <div class="product-container">
            <a href="egglessframe.jsp">
            <img src="https://assets.winni.in/product/primary/2023/8/88014.jpeg?dpr=1&w=400" 
            alt="Lipsmacking Black Forest Cake" class="product-image"></a>
            <div class="product-title">Floral Vanilla Cream Cake</div>
            <div class="product-price">
                ₹699 <span class="product-discount">₹1999</span> <span class="product-discount-rate">25% Off</span>
            </div>
            <div class="product-rating">
                <span class="rating-value">4.8 ★</span>
                <span class="reviews-count">34 Reviews</span>
            </div>
            <form action="AddToWishlistServlet" method="post">
    <input type="hidden" name="itemName" value="Delicious Butterscotch Cake">
    <input type="hidden" name="itemPrice" value="675">
    <input type="hidden" name="imageUrl" value="https://assets.winni.in/product/primary/2023/3/83221.jpeg?dpr=1&w=400">
    <input type="hidden" name="description" value="Description of the cake">
    <button type="submit" style="background-color: #f44336; color: white; border: none; padding: 5px 10px; border-radius: 5px; cursor: pointer;">Add to Wishlist</button>
</form>      </div>
    </div>
      
          <div class="product-cell" data-price="550" data-rating="4.8">
            <div class="product-container">
            <a href="egglessframe.jsp">
              <img src="https://assets.winni.in/product/primary/2023/8/88959.jpeg?dpr=1&w=400"
               alt="Lipsmacking Black Forest Cake" class="product-image"></a>
              <div class="product-title">Yummy Pineapple Cake</div>
              <div class="product-price">
                  ₹649 <span class="product-discount">₹849</span> <span class="product-discount-rate">24% Off</span>
              </div>
              <div class="product-rating">
                  <span class="rating-value">4.7 ★</span>
                  <span class="reviews-count">236 Reviews</span>
              </div>
              <form action="AddToWishlistServlet" method="post">
    <input type="hidden" name="itemName" value="Delicious Butterscotch Cake">
    <input type="hidden" name="itemPrice" value="675">
    <input type="hidden" name="imageUrl" value="https://assets.winni.in/product/primary/2023/3/83221.jpeg?dpr=1&w=400">
    <input type="hidden" name="description" value="Description of the cake">
    <button type="submit" style="background-color: #f44336; color: white; border: none; padding: 5px 10px; border-radius: 5px; cursor: pointer;">Add to Wishlist</button>
</form>          </div>
          </div>
      
          <div class="product-cell" data-price="579" data-rating="4.9">
            <div class="product-container">
            <a href="egglessframe.jsp">
              <img src="https://assets.winni.in/product/primary/2014/6/31204.jpeg?dpr=1&w=400" 
              alt="Lipsmacking Black Forest Cake" class="product-image"></a>
              <div class="product-title">Chocolate Truffle</div>
              <div class="product-price">
                  ₹679 <span class="product-discount">₹849</span> <span class="product-discount-rate">27% Off</span>
              </div>
              <div class="product-rating">
                  <span class="rating-value">4.7 ★</span>
                  <span class="reviews-count">973 Reviews</span>
              </div>
              <form action="AddToWishlistServlet" method="post">
    <input type="hidden" name="itemName" value="Delicious Butterscotch Cake">
    <input type="hidden" name="itemPrice" value="675">
    <input type="hidden" name="imageUrl" value="https://assets.winni.in/product/primary/2023/3/83221.jpeg?dpr=1&w=400">
    <input type="hidden" name="description" value="Description of the cake">
    <button type="submit" style="background-color: #f44336; color: white; border: none; padding: 5px 10px; border-radius: 5px; cursor: pointer;">Add to Wishlist</button>
</form>         </div>
          </div>
     
          <td>
          <div class="product-cell" data-price="589" data-rating="4.4">
            <div class="product-container">
            <a href="egglessframe.jsp">
              <img src="https://assets.winni.in/product/primary/2023/4/84507.jpeg?dpr=1&w=400" 
              alt="Lipsmacking Black Forest Cake" class="product-image"></a>
              <div class="product-title">Fruit And Nut Cake</div>
              <div class="product-price">
                  ₹849<span class="product-discount">₹1,049</span> <span class="product-discount-rate">19% Off</span>
              </div>
              <div class="product-rating">
                  <span class="rating-value">4.7 ★</span>
                  <span class="reviews-count">127 Reviews</span>
              </div>
              <form action="AddToWishlistServlet" method="post">
    <input type="hidden" name="itemName" value="Delicious Butterscotch Cake">
    <input type="hidden" name="itemPrice" value="675">
    <input type="hidden" name="imageUrl" value="https://assets.winni.in/product/primary/2023/3/83221.jpeg?dpr=1&w=400">
    <input type="hidden" name="description" value="Description of the cake">
    <button type="submit" style="background-color: #f44336; color: white; border: none; padding: 5px 10px; border-radius: 5px; cursor: pointer;">Add to Wishlist</button>
</form>          </div>
          </div>

          <div class="product-cell" data-price="949" data-rating="4.9">
            <div class="product-container">
            <a href="egglessframe.jsp">
              <img src="https://assets.winni.in/product/primary/2024/3/94423.jpeg?dpr=1&w=400" 
              alt="Lipsmacking Black Forest Cake" class="product-image"></a>
              <div class="product-title">Black Forest Cake With Red Roses</div>
              <div class="product-price">
                  ₹1,279 <span class="product-discount">₹1,529</span> <span class="product-discount-rate">19% Off</span>
              </div>
              <div class="product-rating">
                  <span class="rating-value">4.7 ★</span>
                  <span class="reviews-count">35 Reviews</span>
              </div>
              <form action="AddToWishlistServlet" method="post">
    <input type="hidden" name="itemName" value="Delicious Butterscotch Cake">
    <input type="hidden" name="itemPrice" value="675">
    <input type="hidden" name="imageUrl" value="https://assets.winni.in/product/primary/2023/3/83221.jpeg?dpr=1&w=400">
    <input type="hidden" name="description" value="Description of the cake">
    <button type="submit" style="background-color: #f44336; color: white; border: none; padding: 5px 10px; border-radius: 5px; cursor: pointer;">Add to Wishlist</button>
</form>          </div>
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
