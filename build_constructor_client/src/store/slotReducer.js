const defaultState = {
    slots: []
}

const ADD_SLOT="ADD_SLOT"
const DELETE_SLOT="DELETE_SLOT"

export const slotReducer = (state = defaultState, action) => {
    switch (action.type){
        case ADD_SLOT: return {...state, slots: [...state.slots, action.payload] }
        case DELETE_SLOT: return {...state, slots: [...state.slots.filter((slot, index) =>
                index !== action.payload)]}
        default: return state
    }
}

export const addSlotAction = (payload) => ({type: ADD_SLOT, payload})
export const deleteSlotAction = (payload) => ({type: DELETE_SLOT, payload})

