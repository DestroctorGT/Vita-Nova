import { css } from "../../styled-system/css";
import { flex } from "../../styled-system/patterns";
import { Link } from "react-router-dom";
import VitaNovaLogo from "../assets/V-Logo.png";

export default function Nav() {
  return (
    <nav>
      <ul
        className={css({
          padding: { base: "2.5%", lg: "1%" },
          display: "flex",
          alignItems: "center",
          justifyContent: "space-between",
          borderBottom: "1px solid #FFF",
        })}
      >
        <img
          src={VitaNovaLogo}
          alt="Vita Nova company logo"
          className={css({
            width: "100%",
            height: "auto",
            maxWidth: "80px",
          })}
        />

        <li>
          <ul
            className={flex({
              align: "center",
              justify: "space-between",
              gap: "10px",
            })}
          >
            <li>
              <Link to={"/SignUp"}>
                <button
                  className={css({
                    padding: "4px",
                    color: "#000814",
                    backgroundColor: "#FFD60A",
                    borderRadius: "10px",
                    textTransform: "capitalize",
                    cursor: "pointer",
                  })}
                >
                  crear cuenta
                </button>
              </Link>
            </li>
            <li>
              <Link to={"/SignIn"}>
                <button
                  className={css({
                    padding: "4px",
                    border: "1px solid #FFD60A",
                    borderRadius: "10px",
                    color: "#FFD60A",
                    textTransform: "capitalize",
                    cursor: "pointer",
                  })}
                >
                  iniciar sesión
                </button>
              </Link>
            </li>
          </ul>
        </li>
      </ul>
    </nav>
  );
}
