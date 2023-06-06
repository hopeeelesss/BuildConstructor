const defaultState = {
    heroes: []
}

const LOAD_HEROES="LOAD_HEROES"

export const heroesReducer=(state = defaultState, action)=>{
    switch (action.type){
        case LOAD_HEROES: return {...state, heroes: [...state.heroes, ...action.payload]}
        default: return state
    }
}

export const loadHeroesAction = (payload) => ({type: LOAD_HEROES, payload})