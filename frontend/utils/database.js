import mysql from 'serverless-mysql'
const path = require('path')
require('dotenv').config({ path: path.resolve(__dirname, '../.env') })

export const db = mysql({
  config: {
    host: process.env.MYSQL_HOST,
    database: process.env.MYSQL_DATABASE,
    user: process.env.MYSQL_USERNAME,
    password: process.env.MYSQL_PASSWORD,
    port: parseInt(process.env.MYSQL_PORT),
  },
})

export async function query(
  q,
  values
) {
  try {
    const results = await db.query(q, values)
    await db.end()
    return results
  } catch (e) {
    throw Error(e)
  }
}
