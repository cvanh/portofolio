import { query } from '../../../../utils/database'

const handler = async (req, res) => {  
    const result = await query(
      `
      SELECT * FROM portofolio where id = ${req.query.id} LIMIT 1; 
      `
    )
    return res.json(result)
}

export default handler