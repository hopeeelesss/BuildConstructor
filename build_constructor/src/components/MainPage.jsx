import {Component} from "react";
import AppFooter from "./AppFooter";
import AppHeader from "./AppHeader";
import HeroPanel from "./HeroPanel";
import {StatsPanel} from "./StatsPanel";
import {ItemList} from "./ItemList";
import '../css/MainPage.css'

export default class MainPage extends Component{

    render() {
        return(
            <div className='mainPage'>
                <AppHeader/>
                    <main>
                        <HeroPanel/>
                        <ItemList/>
                    </main>
                <AppFooter/>
            </div>
        )
    }
}