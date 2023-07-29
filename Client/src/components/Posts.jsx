import profilePic from "../assets/fotoperfil3.png";
import profilePicPost from "../assets/certificadoHenry.png";
import { css } from "../../styled-system/css";
import { flex } from "../../styled-system/patterns";
import { IconSend, IconMessageCircle2, IconShare } from "@tabler/icons-react";
import { Link } from "react-router-dom";

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
          <Link>
            <img
              src={profilePic}
              alt="user account pic"
              className={css({
                width: "100%",
                height: "auto",
                maxWidth: { base: "46px", lg: "52px" },
                borderRadius: "5px",
              })}
            />
          </Link>

          <Link>
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
          </Link>
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
        <p
          className={css({
            maxWidth: { base: "300px", lg: "500px" },
            wordWrap: "break-word",
          })}
        >
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero fugit
          commodi rerum, laboriosam vero recusandae sint veritatis quis, tenetur
          quo totam, quae culpa suscipit nisi et est. Veritatis, dolores atque?
        </p>

        <img
          src={profilePicPost}
          alt="account pic post"
          className={css({
            width: "100%",
            height: "auto",
            maxWidth: { base: "290px", lg: "450px" },
          })}
        />
      </article>

      <div
        className={css({
          paddingTop: "20px",
          display: "flex",
          alignItems: "center",
          justifyContent: { base: "start" },
          gap: "15px",
        })}
      >
        <button className={css({ cursor: "pointer" })}>
          <IconSend color="white" />
        </button>

        <div
          className={flex({ align: "center", justify: "center", gap: "8px" })}
        >
          <button className={css({ cursor: "pointer" })}>
            <IconMessageCircle2 color="white" />
          </button>
          <p className={css({ cursor: "default" })}>300</p>
        </div>

        <button className={css({ cursor: "pointer" })}>
          <IconShare color="white" />
        </button>
      </div>
    </section>
  );
}
