var addressInMunich = {}
addressInMunich.city = 'München'
addressInMunich.street =  'Marienplatz'

var addressInBerlin = {}
addressInBerlin.city = 'Berlin'
addressInBerlin.street = 'Alexanderplatz'


var jsBook = {}
jsBook.isbn = "ISBN1"
jsBook.title="JavaScript"
jsBook.price = 19.99

var cBook = {}
cBook.isbn = "ISBN2"
cBook.title="C#"
cBook.price = 39.99

var springer = {}
springer.name = "Springer"
springer.address =  addressInBerlin

jsBook.publisher = springer
cBook.publisher = springer

springer.books = [] //Zuweisung einer leeren Liste
springer.books[0] = jsBook
springer.books[1] = cBook


console.log(springer)
console.log(springer.books.length)
