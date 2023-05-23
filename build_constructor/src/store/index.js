import {applyMiddleware, combineReducers, createStore} from "redux";
import {composeWithDevTools} from "redux-devtools-extension";
import thunk from "redux-thunk";
import {heroesReducer} from "./heroesReducer";
import {lockHeroReducer} from "./lockHeroReducer";
import {itemListReducer} from "./itemListReducer";
import {slotReducer} from "./slotReducer";

const rootReducer=combineReducers({
    heroes: heroesReducer,
    heroLocked: lockHeroReducer,
    items: itemListReducer,
    slots: slotReducer
})
export const store = createStore(rootReducer, composeWithDevTools(applyMiddleware(thunk)))
