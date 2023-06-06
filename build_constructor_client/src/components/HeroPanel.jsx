import {useDispatch, useSelector} from "react-redux";
import {loadHeroes} from "../asyncActions/LoadHeroes";
import {useEffect, useState} from "react";
import {lockHeroAction} from "../store/lockHeroReducer";
import {Hero, Stats} from "../css/Hero.css"
import {} from "../css/Design.css"
import {StatsPanel} from "./StatsPanel";

export default function HeroPanel() {
    const dispatch = useDispatch()

    const heroes=useSelector(state => state.heroes.heroes)

    const heroLocked=useSelector(state => state.heroLocked.heroLocked)

    const options= heroes.map(hero =>
        <option key={hero.heroId}>{hero.name}</option>
    );

    useEffect(() => {
        dispatch(loadHeroes())
    }, []);

    return (
        <div className="HeroPanel">
            <select onChange={ (event) =>
                    dispatch(lockHeroAction(heroes.filter(hero => hero.name===event.target.value)))}>
                <option disabled>Выберите героя</option>
                {options}
            </select>
            <div className="Hero">
                <div className="Stats">
                    <img src={"heroes/"+ heroLocked.map(hero => hero.name) + ".png"}/>
                    <StatsPanel/>
                </div>
                {heroLocked.length > 0 ? heroLocked.map(hero => hero.abilities.map(ability =>
                    <div className="HeroInfoPanel">
                        <img src={"abilities/"+ ability.name + ".png"}/>
                    </div>)) : <div className="works not"></div>}
            </div>
        </div>
    )
}