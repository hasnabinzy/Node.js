const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
    res.send('Hello from Node.js Application!');
});

app.listen(port, () => {
    console.log(`App listening at http://172.16.27.1:3000`);
});


