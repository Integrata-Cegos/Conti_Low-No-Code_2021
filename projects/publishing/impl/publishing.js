//anlegen einer Adresse
//{} = JSON, Objekt-Literal
var addressInMunich = {city: 'München', street: 'Marienplatz'}
var addressInBerlin = {city: 'Berlin', street: 'Alexanderplatz'}

var book1 = {isbn: "ISBN1", title: "JavaScript", price: 19.99}
var book2 = {isbn: "ISBN2", title: "C#", price: 39.99}

var publisher1 = {name: "Springer", address: addressInBerlin}


//gibt aus den Namen des publisher1
console.log(publisher1.name)
//gibt aus die Stadt des publisher1
console.log(publisher1.address.city)
