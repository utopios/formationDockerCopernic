const express = require('express')

const app = express()

app.get('/', (req,res) => {
    res.end("Bonjour tout le monde")
})

const PORT  = process.env.PORT || 3000

app.listen(PORT, () => {
    console.log("server web is runing");
})