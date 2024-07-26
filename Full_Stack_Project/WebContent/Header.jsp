<meta name="viewport" content="width=device-width,initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" >
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>WINNI</title>
<link rel="stylesheet" href="Head/CSS/Header.css">
</head>
<style>
.icon-cart, .icon-wishlist {
    width: 44px;
    height: 44px;
    cursor: pointer;
}
.icon-cart:hover, .icon-wishlist:hover {
    transform: scale(1.1);
}
.red-color {
    color: white;
    position: relative;
    top: 10px;
    right: 50px;
    width:30px;
    height:30px;
    font-weight: bold;
    border-radius:80%;
    background-color:red;
}

</style>
<script>
document.addEventListener('DOMContentLoaded', function() {
    var deliveryLocationButton = document.querySelector('.loc-text');
    deliveryLocationButton.textContent = 'Delivery Location';
    var selectedCity = localStorage.getItem('selectedCity');
    if (selectedCity) {
        deliveryLocationButton.textContent = selectedCity;
    }
    var locationIcon = document.querySelector('.loc-icon');
    locationIcon.addEventListener('click', function(event) {
        event.preventDefault();
        var selectedCity = localStorage.getItem('selectedCity');
        if (selectedCity) {
            deliveryLocationButton.textContent = selectedCity + ' Delivery';
        } else {
            window.location.href = 'location.jsp';
        }
    });
    var personIcon = document.querySelector('.person-icon');
    var logoutButton = document.querySelector('.logout-button');
    personIcon.addEventListener('click', function() {
        if (logoutButton.style.display === 'none' || logoutButton.style.display === '') {
            logoutButton.style.display = 'block';
        } else {
            logoutButton.style.display = 'none';
        }
    });
    logoutButton.addEventListener('click', function() {
        window.location.href = 'welcome.jsp';
    });
});
</script>
<body>
<header> 
  <nav class="navbar">
    <div class="row">
      <div class="header-left">
        <div class="left-item"><a href="help.jsp">Help</a></div>
        <div class="left-item"><a href="#">Currency - <b>INR</b></a></div>
        <div class="left-item"><a href="#">Corporate gifts</a></div>
        <div class="left-item"><a href="#">Partner with us</a></div>
        <div class="left-item"><a href="#">Track Order</a></div>
      </div>
    </div>
    <div class="row header-content">
      <div class="logo-container">
        <img src="Pictures/logo.jpg" alt="logo" class="logo">
      </div>
      <div class="center-container">
        <div class="search-bar-container">
          <input type="search" placeholder="Search for gifts" class="search-bar">
          <button type="submit" class="search-button">
            <img src="https://w7.pngwing.com/pngs/391/434/png-transparent-computer-icons-web-search-engine-search-sticker-black-desktop-wallpaper-thumbnail.png" alt="Search Icon" class="search-icon">
          </button>
        </div>
        <div class="location-container">
          <a href="location.jsp" class="location-link">
            <img src="https://www.freeiconspng.com/thumbs/location-icon-png/location-map-pins-png-3.png" alt="Location Icon" class="loc-icon">
            <div class="loc-text"><b>Delivery Location</b></div>
          </a>
        </div>
      </div>
      <div class="additional-images">
        <img src="https://w7.pngwing.com/pngs/178/595/png-transparent-user-profile-computer-icons-login-user-avatars-thumbnail.png" alt="Contact" class="additional-img person-icon">
        <button class="logout-button">Logout</button>
        <a href="wishlist.jsp">
          <img src="https://icon-library.com/images/wishlist-icon/wishlist-icon-26.jpg" alt="Wishlist" class="additional-img icon-wishlist">
          <span class="red-color">0</span>
        </a>
        <a href="cartDisplay.jsp">
          <img src="https://media.istockphoto.com/id/1417570203/vector/shopping-cart-icon-sticker-on-gray-background.jpg?s=612x612&w=0&k=20&c=XY68njroajZ8kezeF9FxJQDpTG6-pIh5EditWloz19I=" alt="Cart" class="additional-img icon-cart">
          <span class="red-color">0</span>
        </a>
      </div>
    </div>
    <div class="row">
      <div class="header-links">
        <div class="column left">
          <div class="header-link express-link">
            <a href="#" style="color: rgb(236, 31, 134);"><b>CAKES</b></a>
          </div>
          <div class="header-link plants-link">
            <a href="egglesshome.jsp">Eggless Cakes</a>
            <div class="hover-content">
              <div class="cakes-dropdown">
                <div class="column">
                  <ul>
                    <li><a href="Midnightcake.jsp">Mid Night Cakes</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="header-link gifts-link">
            <a href="#">Photo Cakes</a>
            <div class="hover-content">
              <div class="cakes-dropdown">
                <div class="column">
                  <ul>
                    <li><a href="HeartCake.jsp">Heart Shape Cakes</a></li>
                    <li><a href="Designercake.jsp">Designer Cakes</a></li>
                    <li><a href="#">Fondant Cakes</a></li>
                    <li><a href="#">Dry Cakes</a></li>
                    <li><a href="#">Cup Cakes</a></li>
                    <li><a href="Pastryhome.jsp">Pastry</a></li>
                    <li><a href="#">Jar Cakes</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="header-link Personalized-gifts-link">
            <a href="chocolatehome.jsp">Chocolate Cakes</a>
            <div class="hover-content">
              <div class="cakes-dropdown">
                <div class="column">
                  <ul>
                    <li><a href="#">Truffle Cakes</a></li>
                    <li><a href="#">Black Forest Cakes</a></li>
                    <li><a href="#">Rasmalai Cakes</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="header-link chocolates-link">
            <a href="#">ButterScotch Cakes</a>
            <div class="hover-content">
                <div class="cakes-dropdown">
                  <div class="column">
                    <ul>
                      <li><a href="Redvelvetcake.jsp">Red Velvet Cakes</a></li>
                      <li><a href="vanilla.jsp">Vanilla Cakes</a></li>
                      <li><a href="pineapple.jsp">Pineapple Cakes</a></li>
                      <li><a href="fruit.jsp">Fruit Cakes</a></li>
                      <li><a href="coffee.jsp">Coffee Cakes</a></li>
                      <li><a href="kitkat.jsp">Kitkat Cakes</a></li>
                    </ul>
                  </div>
                </div>
              </div>
          </div>
          <div class="header-link combos-link">
            <a href="kidspage.jsp">Kid Cakes</a>
            <div class="hover-content">
              <div class="cakes-dropdown">
                <div class="column">
                  <ul>
                    <li><a href="#">Unicorn Cakes</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="header-link birthday-link">
            <a href="#">Half Cakes</a>
            <div class="hover-content">
              <div class="cakes-dropdown">
                <div class="column">
                  <ul>
                    <li><a href="#">Barbie Doll Cakes</a></li>
                    <li><a href="#">Tier Cakes</a></li>
                    <li><a href="#">Cartoon Cakes</a></li>
                    <li><a href="#">Spiderman Cakes</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="header-link anniversary-link">
            <a href="coffeecakeshome.jsp">Birthday Cakes</a>
            <div class="hover-content">
              <div class="cakes-dropdown">
                <div class="column">
                  <ul>
                    <li><a href="Anniversary.jsp">Anniversary Cakes</a></li>
                    <li><a href="Birthdaycake.jsp">Fruit Birthday Cakes</a></li>
                    <li><a href="#">Fruit Anniversary Cakes</a></li>
                    <li><a href="#">25th Anniversary Cakes</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="header-link occasions-link">
            <a href="#">Combos</a>
            <div class="hover-content">
              <div class="cakes-dropdown">
                <div class="column">
                  <ul>
                    <li><a href="#">Cake combos</a></li>
                    <li><a href="Flowershome.jsp">Cakes and Flowers</a></li>
                    <li><a href="#">Cakes and Chocolates</a></li>
                    <li><a href="Teddieshome.jsp">Cakes and Teddies</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="header-link delivery-link">
            <a href="#" id="delivery-link">30 Mins Delivery</a>
          </div>
        </div>
      </div>
    </div>
  </nav>
</header>
</body>
</html>