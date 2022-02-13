const express = require('express');
const app = express();
const cors = require('cors');

app.use(cors());
app.use(express.static('../build/web'));
app.use(express.json());
app.use(express.urlencoded({extended: true}));


app.listen(5000, () => console.log("server verjalan di port 5000"));