import { css } from "../../styled-system/css";
import { flex } from "../../styled-system/patterns";
import { Link, useNavigate } from "react-router-dom";
import { useState } from "react";
import VitaNovaLogo from "../assets/V-Logo.png";

export default function SignIn() {
  const navigate = useNavigate();

  const [inputs, setInputs] = useState({
    userName: "",
    password: "",
    error: {},
  });

  const handleSubmit = (e) => {
    e.preventDefault();
  };

  const handleInput = (e) => {
    let inputName = e.target.name;
    let inputValue = e.target.value;

    setInputs({
      ...inputs,
      [inputName]: inputValue,
    });
  };

  return (
    <section
      className={flex({
        margin: { base: "12% 2%", lg: "5% 12%" },
        padding: "2%",
        direction: "column",
        justify: "center",
        gap: "25px",
      })}
    >
      <img
        src={VitaNovaLogo}
        alt="Vita Nova company logo"
        className={css({ width: "100%", height: "auto", maxWidth: "150px" })}
      />

      <form
        onSubmit={handleSubmit}
        className={css({
          margin: { lg: "2%" },
          display: "flex",
          flexFlow: "column",
          alignItems: { lg: "center" },
          gap: "15px",
        })}
      >
        <input
          type="text"
          name="userName"
          placeholder="Nombre de usuario"
          value={inputs.userName}
          onChange={handleInput}
          className={css({
            padding: "1% 0",
            backgroundColor: "#D9D9D9",
            color: "#000000",
            _placeholder: { color: "#000000" },
            borderRadius: "4px",
            textIndent: "10px",
            width: { lg: "50%" },
          })}
        />

        <input
          type="password"
          name="password"
          value={inputs.password}
          placeholder="Contraseña"
          onChange={handleInput}
          className={css({
            padding: "1% 0",
            backgroundColor: "#D9D9D9",
            color: "#000000",
            _placeholder: { color: "#000000" },
            borderRadius: "4px",
            textIndent: "10px",
            width: { lg: "50%" },
          })}
        />

        <div
          className={css({
            margin: { lg: "4% 30% 0" },
            width: { base: "100%", lg: "50%" },
          })}
        >
          <button
            className={css({
              padding: "2%",
              marginBottom: "5%",
              textTransform: "uppercase",
              backgroundColor: "#FFD60A",
              color: "#000814",
              borderRadius: "8px",
              cursor: "pointer",
              width: "100%",
            })}
          >
            iniciar sesión
          </button>

          <button
            className={css({
              padding: "2%",
              marginBottom: "4%",
              border: "1px solid #FFD60A",
              borderRadius: "8px",
              color: "#FFD60A",
              textTransform: "uppercase",
              cursor: "pointer",
              width: "100%",
            })}
            onClick={() => navigate("/")}
          >
            cancelar
          </button>
          <Link to={"/SignUp"}>Crear Cuenta</Link>
        </div>
      </form>
    </section>
  );
}
