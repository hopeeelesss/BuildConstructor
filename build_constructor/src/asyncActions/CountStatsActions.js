//ATTRIBUTES
export const countStrength = (heroLocked, slots) => {
    let strength = heroLocked.length > 0 ? heroLocked.map(hero => hero.attributes.strength) : 0
    for (let i = 0; i < slots.length; i++)
        strength = Number(strength) + Number(slots[i][0].attributes.strength)
    return strength
}

export const countAgility = (heroLocked, slots) => {
    let strength = heroLocked.length > 0 ? heroLocked.map(hero => hero.attributes.agility) : 0
    for (let i = 0; i < slots.length; i++)
        strength = Number(strength) + Number(slots[i][0].attributes.agility)
    return strength
}

export const countIntelligence = (heroLocked, slots) => {
    let strength = heroLocked.length > 0 ? heroLocked.map(hero => hero.attributes.intelligence) : 0
    for (let i = 0; i < slots.length; i++)
        strength = Number(strength) + Number(slots[i][0].attributes.intelligence)
    return strength
}

export const countMovespeed = (heroLocked, slots) => {
    let strength = heroLocked.length > 0 ? heroLocked.map(hero => hero.attributes.movespeed) : 0
    for (let i = 0; i < slots.length; i++)
        strength = Number(strength) + Number(slots[i][0].attributes.movespeed)
    return strength
}

//PARAMETERS
// export const countAttackspeed = (heroLocked, slots) => {
//     let attackSpeed = heroLocked.length > 0 ? heroLocked.map(hero => hero.parameters.attackSpeed) : 0
//     for (let i = 0; i < slots.length; i++)
//         attackSpeed = Number(attackSpeed) + Number(slots[i][0].parameters.attackSpeed)
//     return attackSpeed
// }
//
// export const countDamage = (heroLocked, slots) => {
//     let damage = heroLocked.length > 0 ? heroLocked.map(hero => hero.parameters.damage) : 0
//     for (let i = 0; i < slots.length; i++)
//         damage = Number(damage) + Number(slots[i][0].parameters.damage)
//     return damage
// }
//
// export const countAttackspeed = (heroLocked, slots) => {
//     let attackSpeed = heroLocked.length > 0 ? heroLocked.map(hero => hero.parameters.attackSpeed) : 0
//     for (let i = 0; i < slots.length; i++)
//         attackSpeed = Number(attackSpeed) + Number(slots[i][0].parameters.attackSpeed)
//     return attackSpeed
// }
//
// export const countAttackspeed = (heroLocked, slots) => {
//     let attackSpeed = heroLocked.length > 0 ? heroLocked.map(hero => hero.parameters.attackSpeed) : 0
//     for (let i = 0; i < slots.length; i++)
//         attackSpeed = Number(attackSpeed) + Number(slots[i][0].parameters.attackSpeed)
//     return attackSpeed
// }
//
// export const countAttackspeed = (heroLocked, slots) => {
//     let attackSpeed = heroLocked.length > 0 ? heroLocked.map(hero => hero.parameters.attackSpeed) : 0
//     for (let i = 0; i < slots.length; i++)
//         attackSpeed = Number(attackSpeed) + Number(slots[i][0].parameters.attackSpeed)
//     return attackSpeed
// }
//
// export const countAttackspeed = (heroLocked, slots) => {
//     let attackSpeed = heroLocked.length > 0 ? heroLocked.map(hero => hero.parameters.attackSpeed) : 0
//     for (let i = 0; i < slots.length; i++)
//         attackSpeed = Number(attackSpeed) + Number(slots[i][0].parameters.attackSpeed)
//     return attackSpeed
// }
//


