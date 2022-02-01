# backend 

so this backend is writen fully in php with the help of bramus/router. sadly for now all the routes are in 1 file but im planning for a refactor soon.

# tracking 
there are 2 tracking posibilities for tracking:

svg: this one is using a svg with a script tag in it and fetches data from the server and renders this, this can be found in
 `/src/tracking/png/github.svg` 

png: this one is a little bit harder it uses no client side code and receives a lot of data , this one is located in
`/src/tracking/svg/github.png`

# routes 
`/tracking`
returns a array with the time and the ip

`/crud/getpost/1`
returns a json object with the details for in this case a post with the id of 1

`/crud/getpost/10`
returns a json object with a limit of 10

`/contact/insert`
handles the contact form on the page

`/crud/createblog`
creates a post 

# todo's for the backend
[] routing
[] $_POST in contacts/insert could lead to a sql injection

# nice to haves
[] anti brute forceing
[] login [based on](https://dev.to/mgranados/how-to-build-a-simple-login-with-nextjs-and-react-hooks-255)