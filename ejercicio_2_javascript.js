//2. Filtrado de productos Dado el arreglo de productos, devuelve 
// solo los que estén disponibles y cuesten menos de $500. 
// Ordena el resultado por precio ascendente.
//const productos = [{id:1,nombre:"Mouse",precio:350,disponible:true},{id:2,nombre:"Teclado",precio:650,disponible:true},{id:3,nombre:"Cable",precio:120,disponible:false},{id:4,nombre:"Base",precio:280,disponible:true}];


const productos = [
  { id: 1, nombre: "Mouse",  precio: 350, disponible: true  },
  { id: 2, nombre: "Teclado", precio: 650, disponible: true  },
  { id: 3, nombre: "Cable",   precio: 120, disponible: false },
  { id: 4, nombre: "Base",    precio: 280, disponible: true  }
];


const resultado = productos.filter(function(producto) {
  return producto.disponible === true && producto.precio < 500;
});

resultado.sort(function(a, b) {
  return a.precio - b.precio;
});

console.log(resultado);