const express = require('express');
const path = require('path');

const app = express();
const PORT = 8080;

// Serve static files from the "public" directory
app.use(express.static(path.join(__dirname, 'public')));

app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

app.listen(PORT, () => {
    console.log(`Frontend service is running at http://localhost:${PORT}`);
});
