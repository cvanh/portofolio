import NextAuth from 'next-auth'
import EmailProvider from 'next-auth/providers/email'
import GitHubProvider from "next-auth/providers/github";
require('dotenv').config()

export default NextAuth({
  database: process.env.DATABASE_URL,
  secret: process.env.SECRET,
  debug: true,
  providers: [ 
      EmailProvider({         
      server: process.env.MAIL_SERVER,
      from: 'NextAuth.js <no-reply@example.com>'
    }),
    GitHubProvider({
      clientId: process.env.GITHUB_CLIENT_ID,
      clientSecret: process.env.GITHUB_CLIENT_SECRET
    })
  ]
})