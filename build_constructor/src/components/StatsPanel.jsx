import {useDispatch, useSelector} from "react-redux";
import {
    countAgility,
    countIntelligence,
    countMovespeed,
    countStrength
} from "../asyncActions/CountStatsActions";
import {HeroStats, Info} from "../css/Stats.css"

export function StatsPanel(){
    const dispatch = useDispatch()

    const heroLocked=useSelector(state => state.heroLocked.heroLocked)
    const slots=useSelector(state => state.slots.slots)

    return(
        <div className="HeroStats">
            {/*<img src={"background.jpg"}/>*/}
            <div className="Info">
                <img src={"icons/hero_strength.png"}/>
                {countStrength(heroLocked, slots)}
            </div>
            <div className="Info">
                <img src={"icons/hero_agility.png"}/>
                {countAgility(heroLocked, slots)}
            </div>
            <div className="Info">
                <img src={"icons/hero_intelligence.png"}/>
                {countIntelligence(heroLocked, slots)}
            </div>
            <div className="Info">
                <img src={"icons/icon_movement_speed.png"}/>
                {countMovespeed(heroLocked, slots)}
            </div>
        </div>
    )
}