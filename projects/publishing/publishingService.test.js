let publishingService = require('./publishingService')

describe("publishingService", () => {
    test('book with isbn 1-10-12-42 is found', async () => {
        let book = await publishingService.findBookByIsbn('1-10-12-42')
        expect(book.title).toBe('Test')
    }) 
    test('books with title Test are found', async () => {
        let books = await publishingService.findBooksByTitle('Test')
        expect(books.length).toBeGreaterThan(0)
    }) 
    test('publisher with id 1 is found', async () => {
        let publisher = await publishingService.findPublisherById(1)
        expect(publisher.publisherName).toBe('Publisher1')
    }) 
    test('posids is array with 5 elements', async () => {
        let posids = await publishingService.findPosids(1)
        expect(posids.length).toBe(5)
    }) 
})
