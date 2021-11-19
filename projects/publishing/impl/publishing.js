//anlegen einer Adresse
//{} = JSON, Objekt-Literal
var addressInMunich = {city: 'München', street: 'Marienplatz'}
console.log(addressInMunich.city)

var book1 = {isbn: "ISBN1", title: "JavaScript", price: 19.99}
var book2 = {isbn: "ISBN2", title: "C#", price: 39.99}

console.log(book1.price)
console.log(book2.price)

var bookTitle = "Java"
var book3 = {isbn: "ISBN2", title: bookTitle, price: 39.99}
console.log(book3.title)
