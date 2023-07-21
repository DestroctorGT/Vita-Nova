import React from "react";
import ReactDOM from "react-dom/client";
import App from "./App.jsx";
import "./index.css";
//Importamos el Router para poder crear rutas en nuestra app.
import { BrowserRouter as Router } from "react-router-dom";

//Importamos el objeto provider de react-redux para que nuestra app pueda usar el store.
import { Provider } from "react-redux";

ReactDOM.createRoot(document.getElementById("root")).render(
  <React.StrictMode>
    <Router>
      <App />
    </Router>
  </React.StrictMode>
);
