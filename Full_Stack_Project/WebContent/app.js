let openShopping = document.querySelector('.shopping');
let closeShopping = document.querySelector('.closeShopping');
let list = document.querySelector('.list');
let listCard = document.querySelector('.listCard');
let body = document.querySelector('body');
let total = document.querySelector('.total');
let quantity = document.querySelector('.quantity');
let notification = document.querySelector('.notification');

openShopping.addEventListener('click', ()=>{
    body.classList.add('active');
})
closeShopping.addEventListener('click', ()=>{
    body.classList.remove('active');
})

let products = [
    {
        id: 1,
        name: 'Baby Blue Half Birthday Cake',
        image : 'https://shop.aubree.in/cdn/shop/products/WhatsApp-Image-2022-06-13-at-11.55_1024x1024.gif?v=1656061777',
        price: 800
    },
    {
        id: 2,
        name: 'Chocolate Sprinkles Half Cake 500 Gms',
        image: 'https://www.fnp.com/images/pr/l/v20221118185157/chocolate-sprinkles-half-cake-500-gms_1.jpg',
        price: 700
    },
    {
        id: 3,
        name: 'Pink Half Birthday Cake',
        image: 'https://shop.aubree.in/cdn/shop/products/WhatsAppImage2020-03-10at10.28.11AM_b7e92328-fb39-4c55-8409-9fa0762e580d_1024x1024.jpg?v=1656311905',
        price: 900
    },
    {
        id: 4,
        name: 'Rainbow Cake',
        image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsFyu8iKD5wTuPZQLRsaRgZMfvTBImPWBEcw&s',
        price: 1200
    },
    {
        id: 5,
        name: 'Rosy Blue Ics',
        image: 'https://assets.winni.in/product/primary/2022/10/76217.jpeg?dpr=1&w=1000',
        price: 999
    },
    {
        id: 6,
        name: 'Half Teddy Cake',
        image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSf0AmUL0BYIKgY9rwTQJ0O4fYtu6ZzofOXuA&s',
        price: 1200
    }
];
let listCards  = [];
function initApp(){
    products.forEach((value, key) =>{
        let newDiv = document.createElement('div');
        newDiv.classList.add('item');
        newDiv.innerHTML = `
            <img src="${value.image}">
            <div class="title">${value.name}</div>
            <div class="price">$${value.price.toLocaleString()}</div>
            <button onclick="addToCard(${key})">Add To Cart</button>`;
        list.appendChild(newDiv);
    })
}
initApp();
function addToCard(key){
    if(listCards[key] == null){
        // copy product form list to list card
        listCards[key] = JSON.parse(JSON.stringify(products[key]));
        listCards[key].quantity = 1;
    }
    reloadCard();
    showNotification(`${products[key].name} has been added to the cart.`);
}
function reloadCard(){
    listCard.innerHTML = '';
    let count = 0;
    let totalPrice = 0;
    listCards.forEach((value, key)=>{
        totalPrice = totalPrice + value.price;
        count = count + value.quantity;
        if(value != null){
            let newDiv = document.createElement('li');
            newDiv.innerHTML = `
                <div class="item-row">
                    <div class="item-img"><img src="${value.image}"/></div>
                    <div class="item-name">${value.name}</div>
                    <div class="item-price">$${value.price.toLocaleString()}</div>
                    <div class="item-quantity">
                        <button onclick="changeQuantity(${key}, ${value.quantity - 1})">-</button>
                        <div class="count">${value.quantity}</div>
                        <button onclick="changeQuantity(${key}, ${value.quantity + 1})">+</button>
                    </div>
                </div>`;
                listCard.appendChild(newDiv);
        }
    })
    total.innerText = `$${totalPrice.toLocaleString()}`;
    quantity.innerText = count;
}
function changeQuantity(key, quantity){
    if(quantity == 0){
        delete listCards[key];
    }else{
        listCards[key].quantity = quantity;
        listCards[key].price = quantity * products[key].price;
    }
    reloadCard();
}
function showNotification(message) {
    notification.innerText = message;
    notification.classList.add('show');
    setTimeout(() => {
        notification.classList.remove('show');
    }, 3000);
}