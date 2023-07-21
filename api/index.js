//requerimos a nuestra configuracion de express
const app = require("./src/app");

const Gun = require("gun");

//Si la variable de entorno no se importa, tomaria entonces el valor 3001
const port = 8001;

app.use(Gun.serve);

const server = app.listen(port, () => {
  console.log(`in port http://localhost:${port}`);
});

Gun({ web: server });
