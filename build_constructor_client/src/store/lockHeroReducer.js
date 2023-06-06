const defaultState = {
    heroLocked: []
}

const LOCK_HERO="LOCK_HERO"

export const lockHeroReducer = (state=defaultState, action) =>{
    switch (action.type) {
        case LOCK_HERO: return {...state, heroLocked:[...action.payload]}
        default: return state
    }
}

export const lockHeroAction = (payload) => ({type: LOCK_HERO, payload})