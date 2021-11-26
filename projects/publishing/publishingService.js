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

async function findBooksByTitle(title){
  try {
    await sql.connect(sqlConfig)
    const result = await sql.query(`select * from PUBLISHING_BOOKS where title Like '${title}%'`)
    
    let books = result.recordset
    sql.close()
    return books
   } catch (err) {
      console.log(err)
  }}
  


async function findPublisherById(id){
  try {
    await sql.connect(sqlConfig)
    const result = await sql.query(`select * from PUBLISHING_PUBLISHERS where publisherId = ${id}`)
    
    let publisher = result.recordset[0]
    sql.close()
    return publisher
   } catch (err) {
      console.log(err)
  }}
  

function parseIsbn(isbn){
    return isbn.split('-').map((isbn) => parseInt(isbn))
}

async function findPosids(id){
  try {
    await sql.connect(sqlConfig)
    const result = await sql.query(`select value from JSON_DATA where col_key = ${id}`)
    let posids = result.recordset[0].value
    console.log(posids)
    let posidsArray = JSON.parse(posids)
    sql.close()
    return posidsArray.map((element) => element.posid_json_array)
   } catch (err) {
      console.log(err)
  }}
  


exports.findBookByIsbn = findBookByIsbn
exports.findPublisherById = findPublisherById
exports.findBooksByTitle = findBooksByTitle
exports.findPosids = findPosids