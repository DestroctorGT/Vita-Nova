import { css } from "../../styled-system/css";
import { flex } from "../../styled-system/patterns";
import { Link, useNavigate } from "react-router-dom";
import { useState } from "react";
import VitaNovaLogo from "../assets/V-Logo.png";

export default function SignUp() {
  const navigate = useNavigate();

  const [acceptConditions, setAcceptConditions] = useState(false);

  const [inputs, setInputs] = useState({
    userName: "",
    password: "",
    checkPassword: "",
    error: {},
  });

  const handleClick = () => {
    !acceptConditions ? setAcceptConditions(true) : setAcceptConditions(false);
  };

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

      {!acceptConditions ? (
        <>
          <article>
            <h2
              className={css({
                textTransform: "capitalize",
                fontWeight: "bold",
                fontSize: { base: "x-large", lg: "xx-large" },
                paddingBottom: "2%",
              })}
            >
              normas generales
            </h2>
            <p
              className={css({
                paddingBottom: "5%",
                maxWidth: { base: "auto", lg: "75ch" },
              })}
            >
              En caso de incumplir con alguna de estas reglas, los moderadores
              tienen el único poder de{" "}
              <span className={css({ color: "#FF4500" })}>
                <strong>bloquear las cuentas</strong>
              </span>{" "}
              y todos tus datos te serán entregados.
            </p>

            <ol
              className={css({
                display: "flex",
                flexFlow: "column",
                gap: "20px",
                "& li": {
                  display: "flex",
                  alignItems: "center",
                  gap: "10px",
                },
              })}
            >
              <li>
                <div
                  className={css({
                    padding: { base: "4%", lg: "2%" },
                    display: "flex",
                    alignItems: "center",
                    justifyContent: "center",
                    width: "4ch",
                    height: "4ch",
                    background: "#FFC300",
                    color: "black",
                    borderRadius: "50%",
                  })}
                >
                  1
                </div>

                <div>
                  <p className={css({ maxWidth: "75ch" })}>
                    No está permitido el contenido sexual y el contenido
                    violento tiene que ser marcado como sensible a la hora de
                    postear.
                  </p>
                </div>
              </li>

              <li>
                <div
                  className={css({
                    padding: { base: "4%", lg: "2%" },
                    display: "flex",
                    alignItems: "center",
                    justifyContent: "center",
                    width: "4ch",
                    height: "4ch",
                    background: "#FFC300",
                    color: "black",
                    borderRadius: "50%",
                  })}
                >
                  2
                </div>

                <div>
                  <p>No racismo, sexismo, homofobia, transfobia y xenofobia.</p>
                </div>
              </li>

              <li>
                <div
                  className={css({
                    padding: { base: "4%", lg: "2%" },
                    display: "flex",
                    alignItems: "center",
                    justifyContent: "center",
                    width: "4ch",
                    height: "4ch",
                    background: "#FFC300",
                    color: "black",
                    borderRadius: "50%",
                  })}
                >
                  3
                </div>

                <div>
                  <p>No incitación a la violencia de ningún tipo.</p>
                </div>
              </li>

              <li>
                <div
                  className={css({
                    padding: { base: "4%", lg: "2%" },
                    display: "flex",
                    alignItems: "center",
                    justifyContent: "center",
                    width: "4ch",
                    height: "4ch",
                    background: "#FFC300",
                    color: "black",
                    borderRadius: "50%",
                  })}
                >
                  4
                </div>

                <div>
                  <p>
                    No al acoso de ningún tipo y tampoco el doxxeo hacia otros
                    usuarios.
                  </p>
                </div>
              </li>

              <li>
                <div
                  className={css({
                    padding: { base: "4%", lg: "2%" },
                    display: "flex",
                    alignItems: "center",
                    justifyContent: "center",
                    width: "4ch",
                    height: "4ch",
                    background: "#FFC300",
                    color: "black",
                    borderRadius: "50%",
                  })}
                >
                  5
                </div>

                <div>
                  <p>No difundir información falsa o desinformación.</p>
                </div>
              </li>
            </ol>
          </article>
          <article className={css({ margin: { lg: "4% 30% 0" } })}>
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
              onClick={handleClick}
            >
              aceptar
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

            <Link to={"/SignIn"}>Iniciar Sesión</Link>
          </article>
        </>
      ) : (
        <>
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

            <input
              type="password"
              name="checkpassword"
              value={inputs.checkPassword}
              placeholder="Confirmar contraseña"
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
              className={flex({
                direction: "row",
                gap: "8px",
              })}
            >
              <input
                type="checkbox"
                id="privacidad"
                name="privacidad"
                value="privacidad"
              />
              <label htmlFor="privacidad">
                He leído y acepto la política de privacidad
              </label>
            </div>

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
                crear cuenta
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
              <Link to={"/SignIn"}>Iniciar Sesión</Link>
            </div>
          </form>
        </>
      )}
    </section>
  );
}
