import React from 'react';
import './App.css';
import {BrowserRouter,Redirect}  from "react-router-dom"
import {MyRouter,router} from "./routers"
function App() {
  return (
      <BrowserRouter>
      <MyRouter route={router}>
        <Redirect exact from="/" to="/home" />
      </MyRouter>
      </BrowserRouter>
     
   );
}

export default App;
