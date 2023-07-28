import Posts from "../components/Posts";
import { css } from "../../styled-system/css";

export default function LandingPage() {
  return (
    <section
      className={css({
        padding: { base: "5%" },
        display: "flex",
        flexFlow: "column wrap",
        gap: "50px",
      })}
    >
      <Posts></Posts>
      <Posts></Posts>
    </section>
  );
}
