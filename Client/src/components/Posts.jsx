import profilePic from "../assets/fotoperfil3.png";
import profilePicPost from "../assets/certificadoHenry.png";
import { css } from "../../styled-system/css";
import { flex } from "../../styled-system/patterns";
import { IconSend, IconMessageCircle2, IconShare } from "@tabler/icons-react";

export default function Posts() {
  return (
    <section>
      <ul
        className={css({
          display: "flex",
          alignItems: "center",
          justifyContent: "space-between",
          paddingBottom: "10px",
        })}
      >
        <li
          className={flex({
            align: "center",
            justify: "space-between",
            gap: "15px",
          })}
        >
          <img
            src={profilePic}
            alt="user account pic"
            className={css({
              width: "100%",
              height: "auto",
              maxWidth: "46px",
              borderRadius: "5px",
            })}
          />

          <div
            className={flex({
              direction: "column",
              align: "center",
              justify: "center",
            })}
          >
            <p
              className={css({
                textTransform: "capitalize",
              })}
            >
              gino tapia
            </p>
            <p className={css({ color: "#9BAEC8" })}>@ginotapia</p>
          </div>
        </li>

        <li>
          <button
            className={css({
              padding: "4px",
              border: "1px solid #2A9D8F",
              borderRadius: "4px",
              color: "#2A9D8F",
              textTransform: "capitalize",
              cursor: "pointer",
            })}
          >
            se su amigo
          </button>
        </li>
      </ul>

      <article
        className={flex({
          direction: "column",
          align: "center",
          justify: "center",
          gap: "10px",
        })}
      >
        <p>Totalmente agradecido por mi nuevo certificado de soyhenry</p>

        <img
          src={profilePicPost}
          alt="account pic post"
          className={css({ width: "100%", height: "auto", maxWidth: "290px" })}
        />
      </article>

      <div
        className={css({
          paddingTop: "20px",
          display: "flex",
          alignItems: "center",
          justifyContent: "start",
          gap: "15px",
        })}
      >
        <button>
          <IconSend color="white" />
        </button>

        <div
          className={flex({ align: "center", justify: "center", gap: "8px" })}
        >
          <button>
            <IconMessageCircle2 color="white" />
          </button>
          <p>300</p>
        </div>

        <button>
          <IconShare color="white" />
        </button>
      </div>
    </section>
  );
}
