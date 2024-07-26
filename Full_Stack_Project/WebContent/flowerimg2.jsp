<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Zoom and Pan Images</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f8f8;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        overflow: hidden;
    }
    .container {
        display: flex;
        justify-content: space-around;
        align-items: flex-start;
        width: 80%;
        padding: 20px;
        box-sizing: border-box;
    }
    .part1 {
        display: flex;
        flex-direction: column;
        gap: 20px;
    }
    .part1 .image {
        width: 80px;
        height: 80px;
        overflow: hidden;
        cursor: pointer;
        transition: transform 0.3s ease;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }
    .part1 .image img {
        width: 100%;
        height: auto;
        transition: transform 0.3s ease;
        border-radius: 10px;
    }
    .part1 .image:hover img {
        transform: scale(1.2);
    }
    .part2 {
        width: 75%;
        display: flex;
        justify-content: center;
        align-items: center;
        position: relative;
    }
    .part2 .original-image {
        width: 100%;
        max-width: 600px;
        height: auto;
        overflow: hidden;
        position: relative;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }
    .part2 .original-image img {
        width: 100%;
        height: auto;
        border-radius: 10px;
    }
    .zoomed-image {
        position: absolute;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        width: 300px;
        height: 300px;
        overflow: hidden;
        display: none;
        z-index: 999;
        pointer-events: none;
        transition: transform 0.3s ease-out;
    }
    .zoomed-image img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        transform-origin: top left;
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

<div class="part1">
            <div class="image" data-src="https://assets.winni.in/product/primary/2023/10/89986.jpeg?dpr=1&w=1000">
                <img src="https://assets.winni.in/product/primary/2023/10/89986.jpeg?dpr=1&w=1000" alt="Image 1">
            </div>
            <div class="image" data-src="https://assets.winni.in/product/primary/2023/10/90039.jpeg?dpr=1&w=400">
                <img src="https://assets.winni.in/product/primary/2023/10/90039.jpeg?dpr=1&w=80" alt="Image 2">
            </div>
            <div class="image" data-src="https://assets.winni.in/product/primary/2023/10/90040.jpeg?dpr=1&w=1000">
                <img src="https://assets.winni.in/product/primary/2023/10/90040.jpeg?dpr=1&w=1000" alt="Image 3">
            </div>
        </div>

        <!-- Right Part: Large fixed image -->
        <div class="part2">
            <div class="original-image">
                <img src="https://assets.winni.in/product/primary/2023/10/90040.jpeg?dpr=1&w=1000" alt="Original Image">
            </div>
            <div class="zoomed-image">
                <img src="https://assets.winni.in/product/primary/2023/10/89986.jpeg?dpr=1&w=1000" alt="Zoomed Image">
            </div>
        </div>
    </div>
    <div class="popup-message" id="popupMessage">Added to cart successfully!</div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
    $(document).ready(function() {
        $('.part1 .image').hover(function() {
            var imgSrc = $(this).attr('data-src');
            $('.part2 .original-image img').attr('src', imgSrc);
            $('.part2 .zoomed-image img').attr('src', imgSrc);
        });
        $('.part2 .original-image').mousemove(function(e) {
            var originalImg = $(this).find('img');
            var zoomedImg = $('.zoomed-image img');
            var mouseX = e.pageX - $(this).offset().left;
            var mouseY = e.pageY - $(this).offset().top;
            var offsetX = mouseX / originalImg.width();
            var offsetY = mouseY / originalImg.height();
            zoomedImg.css({
                transformOrigin: offsetX * 100 + '% ' + offsetY * 100 + '%',
                transform: 'scale(2)'
            });
            $('.zoomed-image').fadeIn(200);
        }).mouseleave(function() {
            $('.zoomed-image').fadeOut(200);
        });
    });
    </script>
</body>
</html>
