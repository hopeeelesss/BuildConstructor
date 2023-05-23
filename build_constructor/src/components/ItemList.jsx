import {useDispatch, useSelector} from "react-redux";
import {useEffect} from "react";
import {loadHeroes} from "../asyncActions/LoadHeroes";
import {loadItems} from "../asyncActions/LoadItems";
import {lockHeroAction} from "../store/lockHeroReducer";
import {addSlotAction, deleteSlotAction} from "../store/slotReducer";
import {item, deleteBtn} from "../css/Items.css"

export function ItemList(){
    const dispatch = useDispatch()

    const items = useSelector(state => state.items.items)
    const slots = useSelector(state => state.slots.slots)

    const options= items.map(item =>
        <option key={item.itemId}>{item.name}</option>
    );

    useEffect(() => {
        dispatch(loadItems())
    }, []);

    return(
        <div>
            <select onChange={ (event) =>
                dispatch(addSlotAction(items.filter
                    (item => item.name===event.target.value)))}>
                <option disabled>Выберите предмет</option>
                {options}
            </select>
            <div className="slots">
                {slots.map((slot, index) => slot.map(slotitem =>
                    <div className="item">
                        <img src={"items/" + slotitem.name + ".jpg"} alt={slotitem.name}/>
                        <button className="deleteBtn" onClick={()=>
                            dispatch(deleteSlotAction(index))}><b>X</b></button>
                    </div>))}
            </div>
            {/*<img src="items/Iron_Branch.jpg"/>*/}
        </div>
    )
}