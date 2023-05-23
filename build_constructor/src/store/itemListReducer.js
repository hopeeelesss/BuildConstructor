const defaultState ={
    items: []
}

const LOAD_ITEMS="LOAD_ITEMS"

export const itemListReducer = (state = defaultState, action) =>{
    switch (action.type){
        case LOAD_ITEMS: return {...state, items: [...action.payload]}
        default: return state
    }
}

export const loadItemsAction = (payload) => ({type: LOAD_ITEMS, payload})