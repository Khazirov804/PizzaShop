function something() {
  var x = window.localStorage.getItem("bbb");

  x = x ? parseInt(x, 10) + 1 : 1; // Проверка на null

  window.localStorage.setItem("bbb", x);

  alert(x);
}

function add_to_cart() {
  alert("Hello from function");
}
