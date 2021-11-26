const sql = require('mssql')

const sqlConfig = {
    user: 'sa',
    password: 'javacream123!',
    database: 'publishing',
    server: 'h2908727.stratoserver.net',
    options: {
      trustServerCertificate: true // change to true for local dev / self-signed certs
    }
  }


async function findBookByIsbn(isbn){
try {
  let isbns = parseIsbn(isbn)
  await sql.connect(sqlConfig)
  const result = await sql.query(`select title from PUBLISHING_BOOKS where isbn1=${isbns[0]} and isbn2 = ${isbns[1]} and isbn3 = ${isbns[2]} and isbn4 = ${isbns[3]}`)
  
  let book = result.recordset[0]
  book.isbn = isbn
  sql.close()
  return book
 } catch (err) {
    console.log(err)
}}

function parseIsbn(isbn){
    return isbn.split('-').map((isbn) => parseInt(isbn))
}

exports.findBookByIsbn = findBookByIsbn