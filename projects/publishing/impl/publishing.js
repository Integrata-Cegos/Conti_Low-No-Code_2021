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
jsBook.authors = []

var cBook = {}
cBook.isbn = "ISBN2"
cBook.title="C#"
cBook.price = 39.99
cBook.authors = []


var springer = {}
springer.name = "Springer"
springer.address =  addressInBerlin

jsBook.publisher = springer
cBook.publisher = springer

springer.books = [] //Zuweisung einer leeren Liste
springer.books[0] = jsBook
springer.books[1] = cBook

meier = {}
meier.lastname = "Meier"
meier.firstname = "Horst"
meier.books = []
meier.books[0] = jsBook


schneider = {}
schneider.lastname = "Schneider"
schneider.firstname = "Hugo"
schneider.books = []

schneider.books[0] = jsBook
schneider.books[1] = cBook

jsBook.authors[0] = meier
jsBook.authors[1] = schneider

cBook.authors[0] = schneider


console.log(springer)
console.log(jsBook)
