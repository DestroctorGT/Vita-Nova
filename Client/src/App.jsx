import { Routes, Route } from "react-router-dom";
import LandingPage from "./pages/LandingPage";
import Nav from "./components/Nav";

function App() {
  return (
    <>
      <Nav></Nav>
      <Routes>
        <Route path="/" element={<LandingPage />}></Route>
      </Routes>
    </>
  );
}

export default App;
