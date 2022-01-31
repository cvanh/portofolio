import { NextApiHandler } from 'next'
import { query } from '../../../utils/database'

const handler = async (req, res) => {  
    const amount = parseInt(req.query.limit) // prevent sql injection
    const results = await query(
      `
      SELECT * FROM portofolio LIMIT ${amount}
    `
    )
    return res.json(results)
}

export default handler