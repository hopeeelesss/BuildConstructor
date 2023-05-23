import './App.css';
import {Component} from "react";
import {Route, Routes} from "react-router-dom";
import MainPage from "./components/MainPage";

class App extends Component {
  render(){
    return (
        <Routes>
            <Route path="/" element={<MainPage/>}/>
        </Routes>
    );
  }
}

export default App;
