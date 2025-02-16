console.log("app.js загружен");

document.addEventListener("DOMContentLoaded", function () {
  update_orders_input();
  update_orders_button();
});

function something() {
  var x = window.localStorage.getItem("bbb");
  x = x ? parseInt(x, 10) + 1 : 1;
  window.localStorage.setItem("bbb", x);
  alert(x);
}

function add_to_cart(id) {
  var key = "product_" + id;
  var x = parseInt(window.localStorage.getItem(key), 10) || 0;
  window.localStorage.setItem(key, x + 1);
  update_orders_input();
  update_orders_button();
}

function update_orders_input() {
  var orders = cart_get_orders();
  document.getElementById("orders_input").value = orders;
}

function update_orders_button() {
  var button = document.getElementById("orders_button");
  if (button) {
    var text = "Корзина (" + cart_get_number_of_items() + ")";
    button.value = text;
  } else {
    console.error("Элемент с id='orders_button' не найден!");
  }
}

function cart_get_number_of_items() {
  var cnt = 0;
  for (var i = 0; i < window.localStorage.length; i++) {
    var key = window.localStorage.key(i);
    var value = window.localStorage.getItem(key);
    console.log("Key:", key, "Value:", value);
    if (key.indexOf("product_") === 0) {
      cnt += parseInt(value, 10) || 0;
    }
  }
  console.log("Total items in cart:", cnt);
  return cnt;
}

function cart_get_orders() {
  var orders = "";
  for (var i = 0; i < window.localStorage.length; i++) {
    var key = window.localStorage.key(i);
    var value = window.localStorage.getItem(key);
    if (key.indexOf("product_") === 0) {
      orders += key + "=" + value + ",";
    }
  }
  return orders;
}
