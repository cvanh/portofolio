import { NextApiHandler } from 'next'
import { query } from '../../../utils/database'

const handler = async (req, res) => {  
    const results = await query(
      `
      SELECT * FROM portofolio
    `
    )
    return res.json(results)
}

export default handler