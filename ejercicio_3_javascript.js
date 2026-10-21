    //Escribe una función 
    // calcularTotal(carrito) que sume precio * cantidad y 
    // aplique un descuento de 10% cuando el subtotal sea mayor a $1,000. Devuelve subtotal, descuento y total.
    //const carrito = [{precio:400,cantidad:2},{precio:150,cantidad:3}];

    const carrito = [{precio:400,cantidad:2},{precio:150,cantidad:3}];


function calcularTotal(carrito) {

  var subtotal = 0;

  for (var i = 0; i < carrito.length; i++) {
    subtotal = subtotal + (carrito[i].precio * carrito[i].cantidad);
  }

  // reviso si aplica descuento
  var descuento = 0;

  if (subtotal > 1000) {
    descuento = subtotal * 0.10;
  }
  var total = subtotal - descuento;

  return {
    subtotal:  subtotal,
    descuento: descuento,
    total:     total
  };
}

console.log(calcularTotal(carrito));