import { css } from "../../styled-system/css";
import { flex } from "../../styled-system/patterns";
import { Link } from "react-router-dom";

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
        <li>Vita Nova Logo</li>

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
            </li>
          </ul>
        </li>
      </ul>
    </nav>
  );
}
