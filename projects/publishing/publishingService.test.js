let publishingService = require('./publishingService')

describe("publishingService", () => {
    test('book with isbn 1-10-12-42 is found', () => {
        let book = publishingService.findBookByIsbn('1-10-12-42')
        expect(book.title).toBe('Test')
    }) 
})
