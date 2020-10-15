/**
 * https://developer.mozilla.org/en-US/docs/Web/JavaScript
 **/

function find_highest(array) {
    let top = 0;
    let index = 0;
    
    for (let i = 0; i < 8; i++) {
        if (array[i] > top) {
            console.error(array[i]);
        
            top = array[i];
            index = i;
            
        }
    }
    
    return index;
}


let tab;
let index;

// game loop
while (true) {
    tab = [];

    for (let i = 0; i < 8; i++) {
        const mountainH = parseInt(readline(), 10); // represents the height of one mountain.
        tab.push(mountainH);
    }
    // console.log(tab.indexOf(Math.max.apply(0, tab)))
    // console.error('Debug messages...');
    
    index = find_highest(tab);
    console.log(index);  // The index of the mountain to fire on.
}
