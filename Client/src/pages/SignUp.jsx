import { css } from "../../styled-system/css";
import { flex } from "../../styled-system/patterns";
import { Link } from "react-router-dom";

export default function SignUp() {
  return (
    <section
      className={flex({
        margin: "12% 2%",
        padding: "2%",
        direction: "column",
        justify: "center",
        gap: "25px",
      })}
    >
      <h2>Vita Nova Logo</h2>

      <article>
        <h2
          className={css({
            textTransform: "capitalize",
            fontWeight: "bold",
            fontSize: "20px",
            paddingBottom: "2%",
          })}
        >
          normas generales
        </h2>
        <p className={css({ paddingBottom: "5%" })}>
          En caso de incumplir con alguna de estas reglas, los moderadores
          tienen el único poder de bloquear las cuentas y todos tus datos te
          serán entregados.
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
                padding: "4%",
                display: "flex",
                alignItems: "center",
                justifyContent: "center",
                width: "4ch",
                height: "4ch",
                background: "#FFC300",
                borderRadius: "50%",
              })}
            >
              1
            </div>

            <div>
              No está permitido el contenido sexual y el contenido violento
              tiene que ser marcado como sensible a la hora de postear.
            </div>
          </li>

          <li>
            <div
              className={css({
                padding: "4%",
                display: "flex",
                alignItems: "center",
                justifyContent: "center",
                width: "4ch",
                height: "4ch",
                background: "#FFC300",
                borderRadius: "50%",
              })}
            >
              2
            </div>

            <div>No racismo, sexismo, homofobia, transfobia y xenofobia</div>
          </li>

          <li>
            <div
              className={css({
                padding: "4%",
                display: "flex",
                alignItems: "center",
                justifyContent: "center",
                width: "4ch",
                height: "4ch",
                background: "#FFC300",
                borderRadius: "50%",
              })}
            >
              3
            </div>

            <div>No incitación a la violencia de ningún tipo.</div>
          </li>

          <li>
            <div
              className={css({
                padding: "4%",
                display: "flex",
                alignItems: "center",
                justifyContent: "center",
                width: "4ch",
                height: "4ch",
                background: "#FFC300",
                borderRadius: "50%",
              })}
            >
              4
            </div>

            <div>
              No al acoso de ningún tipo y tampoco el doxxeo hacia otros
              usuarios
            </div>
          </li>

          <li>
            <div
              className={css({
                padding: "4%",
                display: "flex",
                alignItems: "center",
                justifyContent: "center",
                width: "4ch",
                height: "4ch",
                background: "#FFC300",
                borderRadius: "50%",
              })}
            >
              5
            </div>

            <div>No difundir información falsa o desinformación</div>
          </li>
        </ol>
      </article>

      <article>
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
        >
          cancelar
        </button>

        <Link to={"/SignIn"}>Iniciar Sesión</Link>
      </article>
    </section>
  );
}
