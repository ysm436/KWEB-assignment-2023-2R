const express = require("express");
const app = express();
const port = 3000;

app.set("views", `${__dirname}/views`);
app.set("view engine", "pug");

app.use(express.urlencoded({ extended: true }));

app.get("/", (req, res) => res.render("login.pug"));

app.post("/login", (req, res) => {
  const { username, password } = req.body;
  console.log(req.body);
  return res.send(`username: ${username} password: ${password}`);
});

app.listen(port, () => console.log(`Server listening on port ${port}!`));
