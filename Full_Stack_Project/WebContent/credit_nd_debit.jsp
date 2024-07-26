<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>Payment Options</title>
    <link rel="stylesheet" href="credit_nd_debit.css">
</head>
<body>
    <form id="cardDetailsForm">
        <label for="cardName">Cardholder Name:</label>
        <input type="text" id="cardName" name="cardName" pattern="[a-zA-Z\s]+" title="Cardholder name must contain only letters and spaces"><br><br>
        <label for="cardNumber">Card Number:</label>
        <input type="text" id="cardNumber" name="cardNumber" placeholder="XXXX XXXX XXXX XXXX" maxlength="16" pattern="\d{16}" title="Card number must be 16 digits" oninput="this.value = this.value.replace(/[^0-9]/g, '')"><br><br>
        <label for="expMonth">Expiration Month:</label>
        <input type="text" id="expMonth" name="expMonth" placeholder="MM" maxlength="2" pattern="(0[1-9]|1[0-2])" title="Expiration month must be 01-12" oninput="this.value = this.value.replace(/[^0-9]/g, '')"><br><br>
        <label for="expYear">Year:</label>
        <input type="text" id="expYear" name="expYear" placeholder="YYYY" maxlength="4" pattern="\d{4}" title="Expiration year must be 4 digits" oninput="this.value = this.value.replace(/[^0-9]/g, '')"><br><br>
        <label for="cvv">CVV:</label>
        <input type="text" id="cvv" name="cvv" placeholder="XXX" maxlength="3" pattern="\d{3}" title="CVV must be 3 digits" oninput="this.value = this.value.replace(/[^0-9]/g, '')"><br><br>
        <input type="submit" value="Submit">
    </form>

    <div class="popup hidden" id="popup">
        <img src="https://cdn-icons-png.freepik.com/256/11601/11601272.png?semt=ais_hybrid" alt="Thank You Image">
        <h2>Thank You</h2>
        <p>Your details has been verified!</p>
        <button type="button" onclick="closePopup()">Ok</button>
    </div>

    <script>
        let popup = document.getElementById('popup');
        let paymentForm = document.getElementById('cardDetailsForm');

        function openPopup() {
            popup.classList.remove("hidden");
            popup.classList.add("open-popup");
        }

        function closePopup() {
            popup.classList.add("hidden");
            popup.classList.remove("open-popup");
        }

        paymentForm.addEventListener('submit', function(event) {
            event.preventDefault();
            let cardName = document.getElementById('cardName').value;
            let cardNumber = document.getElementById('cardNumber').value;
            let expMonth = document.getElementById('expMonth').value;
            let expYear = document.getElementById('expYear').value;
            let cvv = document.getElementById('cvv').value;

            if (!cardName || !cardNumber || !expMonth || !expYear || !cvv) {
                alert("Please fill in all fields.");
                return;
            }

            if (!/^[a-zA-Z\s]+$/.test(cardName)) {
                alert("Cardholder name must contain only letters and spaces.");
                return;
            }

            if (!/^\d{16}$/.test(cardNumber)) {
                alert("Card number must be 16 digits.");
                return;
            }

            if (!/^\d{2}$/.test(expMonth) || parseInt(expMonth) < 1 || parseInt(expMonth) > 12) {
                alert("Expiration month must be between 01 and 12.");
                return;
            }

            if (!/^\d{4}$/.test(expYear)) {
                alert("Expiration year must be 4 digits.");
                return;
            }

            if (!/^\d{3}$/.test(cvv)) {
                alert("CVV must be 3 digits.");
                return;
            }

            openPopup();
            setTimeout(function() {
                closePopup();
                window.location.href = "p1.html"; 
            }, 2000); 
        });
    </script>
</body>
</html>
