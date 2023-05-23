import {loadHeroesAction} from "../store/heroesReducer";

export const loadHeroes = () => {
    return function(dispatch){
        fetch('/admin/hero/list')
            .then(response=>response.json())
            .then(json => dispatch(loadHeroesAction(json)))
    }
}