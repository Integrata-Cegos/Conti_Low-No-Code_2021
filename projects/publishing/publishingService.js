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
  await sql.connect(sqlConfig)
  const result = await sql.query(`select title from PUBLISHING_BOOKS where isbn1=1 and isbn2 = 10 and isbn3 = 12 and isbn4 = 42`)
  return result.recordset[0]
 } catch (err) {
    console.log(err)
}}

findBookByIsbn()

exports.findBookByIsbn = findBookByIsbn