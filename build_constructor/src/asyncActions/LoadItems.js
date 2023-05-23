import {loadItemsAction} from "../store/itemListReducer";

export const loadItems = () => {
    return function(dispatch){
        fetch('/admin/item/list')
            .then(response=>response.json())
            .then(json => dispatch(loadItemsAction(json)))
    }
}