// component imports
import { useState } from "react";
import Setup from "./components/Setup";
import Welcome from "./components/Welcome";
import {BrowserRouter, Routes, Route, Link, useNavigate} from 'react-router-dom'

function App() {
  const [userID, setUserID] = useState(0);
  const updateUserID = (newID) => {
    setUserID(newID)
  }

  return (
    <div className="App">
      <h1>Soul in the Game College Basketball</h1>
      {/* <BrowserRouter> */}
        <Routes>
          <Route path="/" element={<Setup updateUserID={updateUserID}/>}/>
          <Route path="/welcome" element={<Welcome/>}/>
        </Routes>
      {/* </BrowserRouter> */}
    </div>
  );
}

export default App;