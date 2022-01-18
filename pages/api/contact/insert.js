import { NextApiHandler } from 'next'
import { query } from '../../../utils/database'

const handler = async (req, res) => {  
    // const results = await query(
    //   `
    //   INSERT INTO contacts (id, name, email, content,date) VALUES (NULL, '${req.body.name}', '${req.body.email}', '${req.body.content}', NOW()); 
    // `
    // )
    console.log(req.body)
    res.status(200).send()
}

export default handler