import { Routes, Route, useLocation } from "react-router-dom";
import LandingPage from "./pages/LandingPage";
import SignUp from "./pages/SignUp";
import Nav from "./components/Nav";

function App() {
  const { pathname } = useLocation();
  return (
    <>
      {pathname === "/" ? <Nav></Nav> : null}

      <Routes>
        <Route path="/" element={<LandingPage />}></Route>
        <Route path="/SignUp" element={<SignUp />}></Route>
      </Routes>
    </>
  );
}

export default App;
