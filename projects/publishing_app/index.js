let service = require('sawitzki_publishing')

async function app(){
    let book = await service.findBookByIsbn('1-10-12-42')
    console.log(book)
}

app()

