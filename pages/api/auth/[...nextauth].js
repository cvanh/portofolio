import NextAuth from 'next-auth'
import EmailProvider from 'next-auth/providers/email'
require('dotenv').config()

export default NextAuth({
  database: process.env.DATABASE_URL,
  secret: process.env.SECRET,
  providers: [ 
    // Passwordless / email sign in
    EmailProvider({         
      server: process.env.MAIL_SERVER,
      from: 'NextAuth.js <no-reply@example.com>'
    }),
  ]
})