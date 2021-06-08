const express = require("express")

const app = express()

const pg = require('pg')
const PORT = process.env.PORT || 3000
// const client = new pg.Client( {
//     host : 'postgresdb',
//     port: 5432,
//     user:'user',
//     password : 'password'
// })

const pool = new pg.Pool({ connectionString: "postgres://user:password@postgresdb/postgres" })


app.get('/', (req, res) => {
    pool.connect(async (err, client, done) => {
        const result = await client.query("SELECT * from utilisateur")
        res.json(result)
    })

})

app.listen(3000, () => {
    console.log("Server is connected")
})