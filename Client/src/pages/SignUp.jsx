import { css } from "../../styled-system/css";
import { flex } from "../../styled-system/patterns";
import { Link } from "react-router-dom";

export default function SignUp() {
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
      <h2>Vita Nova Logo</h2>

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
                No está permitido el contenido sexual y el contenido violento
                tiene que ser marcado como sensible a la hora de postear.
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
