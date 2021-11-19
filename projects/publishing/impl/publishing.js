//anlegen einer Adresse
//{} = JSON, Objekt-Literal
var addressInMunich = {city: 'München', street: 'Marienplatz'}
var addressInBerlin = {city: 'Berlin', street: 'Alexanderplatz'}

var book1 = {isbn: "ISBN1", title: "JavaScript", price: 19.99}
var book2 = {isbn: "ISBN2", title: "C#", price: 39.99}

var publisher1 = {name: "Springer", address: addressInBerlin}


var sawitzki = {lastname: "Sawitzki", firstname: "Rainer"}
var fabricius = {lastname: "Fabricius", firstname: "Carola"}

sawitzki.address = addressInMunich
fabricius.address = addressInBerlin


sawitzki.partner = fabricius
fabricius.partner = sawitzki

// console.log(fabricius)
// console.log(sawitzki)

console.log(sawitzki.lastname)
console.log(sawitzki.partner.lastname)
console.log(sawitzki.partner.partner.lastname)


