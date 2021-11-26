let service = require('sawitzki_publishing')

async function app(){
    let book = await service.findBookByIsbn('1-10-12-42')
    console.log(book)

    let publisher = await service.findPublisherById(1)
    console.log(publisher)

    let books = await service.findBooksByTitle('T')
    console.log(books)

    let ids = await service.findPosids(1)
    console.log(ids)

}

app()

