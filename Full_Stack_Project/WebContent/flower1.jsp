<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Product Details</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f9f9f9;
	margin: 0;
	padding: 0;
}

.container {
	max-width: 1200px;
	margin: 0 auto;
	padding: 20px;
}

.part3 {
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	padding: 20px;
	margin-top: 50px;
}

.product-info {
	margin-top: 20px;
}

.product-details h1 {
	color: #333;
	font-size: 2em;
	margin-bottom: 10px;
}

.Rating {
	display: inline-block;
	background-color: #f02871;
	color: #fff;
	border-radius: 5px;
	padding: 5px 10px;
	margin-bottom: 10px;
}

.price h1 {
	color: #e91e63;
	font-size: 2em;
	margin: 10px 0;
}

.weight-container {
	display: flex;
	flex-wrap: wrap;
	gap: 10px;
}

.weight {
	background-color: #f1f1f1;
	padding: 10px 20px;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s;
}

.weight:hover, .weight.clicked {
	background-color: #e91e63;
	color: #fff;
}

.options, .flavour, .message, .pincode-check, .upload-img {
	margin: 20px 0;
	padding-right: 30px;
}

.flavour-label {
	display: block;
	font-weight: bold;
}

select, textarea, input[type="text"] {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	margin-top: 5px;
	font-size: 20px;
}

button, #addToCartButton {
	background-color: crimson;
	color: white;
	border: none;
	padding: 10px 20px;
	border-radius: 5px;
	cursor: pointer;
	font-size: 1em;
	margin-top: 10px;
}

button:hover, #addToCartButton:hover {
	background-color: darkred;
}

.description, .delivery-details, .care-instructions {
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	padding: 20px;
	margin: 20px 0;
}

h1 {
	font-size: 1.5em;
	margin-bottom: 10px;
	color: #333;
}

ul {
	list-style-type: none;
	padding: 0;
}

ul li {
	margin: 5px 0;
}

.modal {
	display: none;
	position: fixed;
	z-index: 1;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0, 0, 0, 0.4);
}

.modal-content {
	background-color: #fff;
	margin: 15% auto;
	padding: 20px;
	border: 1px solid #888;
	width: 80%;
	max-width: 500px;
	border-radius: 10px;
}

.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}

.cake {
	position: absolute;
	width: 50px;
	height: 50px;
	border-radius: 50%;
	background-size: cover;
	opacity: 0;
}

.cake.bloom {
	animation: bloom 1s ease-out forwards;
}

@
keyframes bloom { 0% {
	transform: scale(0);
	opacity: 1;
}

100%
{
transform
:
 
scale
(3);

                
opacity
:
 
0;
}
}
.popup-message {
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background-color: #4caf50;
	color: white;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
	opacity: 0;
	visibility: hidden;
	transition: opacity 0.5s, visibility 0.5s;
}

.popup-message.show {
	opacity: 1;
	visibility: visible;
}


</style>
</head>
<body>
	<div class="container">
		<div class="part part3">
			<div class="product-info">
				<div class="product-details">
					<h1>Special Pink Flower with Cake</h1>
					<div class="Rating">
						<div class="rating">
							<span style="font-size: 100%; color: rgb(255, 255, 255);">4.4
								&starf;</span>
						</div>
					</div>
					<a href="#"><i
						style="font-size: 15px; padding: 5px; color: crimson; margin-left: -5px; text-decoration: none;">Rating
							& 11 Reviews</i></a>

					<div class="price">
						<div class="amount">
							<h1 id="price">₹ 829</h1>
						</div>
					</div>

					<p>
						Weight: <a href="#" onclick="showServingInfo()">Serving Info</a>
					</p>

					<div class="weight-container">
						<div class="weight" onclick="changePrice(500)">
							<p>500gm</p>
						</div>
						<div class="weight" onclick="changePrice(1000)">
							<p>1kg</p>
						</div>
						<div class="weight" onclick="changePrice(1500)">
							<p>1.5 kg</p>
						</div>
						<div class="weight" onclick="changePrice(2000)">
							<p>2 kg</p>
						</div>
						<div class="weight" onclick="changePrice(3000)">
							<p>3 kg</p>
						</div>
						<div class="weight" onclick="changePrice(4000)">
							<p>4 kg</p>
						</div>
					</div>

					<div class="options">
						<input type="checkbox" name="eggless" id="eggless"> <label
							for="eggless">Eggless</label>
					</div>

					<div class="flavour">
						<div class="flav">
							<label for="flavor" class="flavor-label">Choose Flavor:</label> <select
								name="flavor" id="flavor">
								<option value="">Select a flavor</option>
								<option value="vanilla">Vanilla</option>
								<option value="butterscotch">Butterscotch</option>
								<option value="chocolate">Chocolate</option>
								<option value="strawberry">Strawberry</option>
								<option value="blackforest">Black Forest</option>
								<option value="pineapple">Pineapple</option>
							</select>
						</div>
					</div>

					<div class="message">
						<textarea name="message" id="message"
							placeholder="Message on cake"></textarea>
					</div>

					<div class="pincode-check">
						<p>Enter Pincode to check delivery:</p>
						<input type="text" id="pincode" placeholder="Enter Pincode">
						<button onclick="checkPincode()">Check</button>
					</div>

					<form action="CartServlet" method="post" target="_blank"
						onsubmit="return validateForm()">
						<input type="hidden" name="itemName" value="Photo Cake"> <input
							type="hidden" name="itemPrice" value="867.00"> <input
							type="hidden" name="imageUrl"
							value="https://assets.winni.in/product/primary/2022/7/64894.jpeg?dpr=1&w=400">
						<input type="hidden" name="description"
							value="A delicious car-shaped cake"> <input type="submit"
							value="Add to Cart" id="addToCartButton">
					</form>
				</div>
			</div>
		</div>
	</div>

	<div class="description">
		<h1>Description</h1>
		<ul>
			<li>Here is the super yummy cake to celebrate your occasion with
				happiness and sweetness.</li>
			<li>Order this cake online and get it delivered to your
				doorstep.</li>
			<li>Celebrate your special moment with your loved ones with this
				delightful cake.</li>
		</ul>
	</div>

	<div class="delivery-details">
		<h1>Delivery Details</h1>
		<ul>
			<li>The delicious cake is hand-delivered by our delivery boy in
				a good quality cardboard box.</li>
			<li>Candle and knife will be delivered as per the availability.</li>
		</ul>
	</div>

	<div class="care-instructions">
		<h1>Care Instructions</h1>
		<ul>
			<li>Store cream cakes in a refrigerator.</li>
			<li>Fondant cakes should be stored in an air-conditioned
				environment.</li>
			<li>Slice and serve the cake at room temperature and make sure
				it is not exposed to heat.</li>
			<li>Use a serrated knife to cut a fondant cake.</li>
			<li>Enjoy your cake!</li>
		</ul>
	</div>

	<div id="servingInfoModal" class="modal">
		<div class="modal-content">
			<span class="close" onclick="closeServingInfo()">&times;</span>
			<h2>Serving Info</h2>
			<ul>
				<li>500 gm serves 4-6 people</li>
				<li>1 kg serves 10-12 people</li>
				<li>1.5 kg serves 15-18 people</li>
				<li>2 kg serves 20-24 people</li>
				<li>3 kg serves 30-35 people</li>
				<li>4 kg serves 40-45 people</li>
			</ul>
		</div>
	</div>

	<div id="popupMessage" class="popup-message">Item added to cart!</div>

	<div class="cake" id="cake"></div>

	<script>
		var originalPrice = 829;
		var selectedWeight = null;

		function checkPincode() {
			var pincode = document.getElementById('pincode').value.trim();
			if (pincode === '') {
				alert('Please enter a pincode.');
				return;
			}
			if (!/^\d{6}$/.test(pincode)) {
				alert('Please enter a valid 6-digit pincode.');
				return;
			}
			alert('Pincode is valid and delivery is available in your area.');
		}

		function changePrice(weight) {
			selectedWeight = weight;
			var priceElement = document.getElementById('price');
			var price;

			switch (weight) {
			case 500:
				price = originalPrice;
				break;
			case 1000:
				price = originalPrice + 200;
				break;
			case 1500:
				price = originalPrice + 300;
				break;
			case 2000:
				price = originalPrice + 400;
				break;
			case 3000:
				price = originalPrice + 500;
				break;
			case 4000:
				price = originalPrice + 800;
				break;
			default:
				price = originalPrice;
			}

			priceElement.textContent = '₹ ' + price;
			var weights = document.querySelectorAll('.weight');
			weights.forEach(function(weightElement) {
				weightElement.classList.remove('clicked');
			});
			event.target.classList.add('clicked'); // Add 'clicked' class to the clicked element
		}

		function showServingInfo() {
			var modal = document.getElementById('servingInfoModal');
			modal.style.display = 'block';
		}

		function closeServingInfo() {
			var modal = document.getElementById('servingInfoModal');
			modal.style.display = 'none';
		}

		window.onclick = function(event) {
			var modal = document.getElementById('servingInfoModal');
			if (event.target == modal) {
				modal.style.display = 'none';
			}
		}

		const addToCartButton = document.getElementById("addToCartButton");

		function validateForm() {
			if (selectedWeight === null) {
				alert("Please select a weight.");
				return false;
			}

			var flavor = document.getElementById("flavor").value;
			if (flavor === "") {
				alert("Please select a flavor.");
				return false;
			}

			var message = document.getElementById("message").value.trim();
			if (message === "") {
				alert("Please enter a message on the cake.");
				return false;
			}

			var pincode = document.getElementById("pincode").value.trim();
			if (pincode === "") {
				alert("Please enter a pincode.");
				return false;
			}
			if (!/^\d{6}$/.test(pincode)) {
				alert("Please enter a valid 6-digit pincode.");
				return false;
			}

			return true; // If all validations pass, allow the form to be submitted
		}
	</script>
</body>
</html>