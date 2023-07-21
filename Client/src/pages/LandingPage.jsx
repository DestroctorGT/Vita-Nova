import { css } from "../../styled-system/css";

export default function LandingPage() {
  return (
    <div>
      <h1>Landing Page</h1>
      <p className={css({ fontSize: "2xl", fontWeight: "bold" })}>
        This is the Landing page.
      </p>
    </div>
  );
}
