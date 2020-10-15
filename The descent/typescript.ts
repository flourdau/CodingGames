/**
 * https://www.typescriptlang.org/
 **/

function find_highest(array: number[], size: number): number {
    let top: number = 0;
    let index: number = 0;
    
    for (let i = 0; i < size; i++) {
        if (array[i] > top) {
            top = array[i];
            index = i;
        }
    }
    
    return index;
}


let tab: number[];
let index: number;    

// game loop
while (true) {
    tab = []
    
    for (let i = 0; i < 8; i++) {
        const mountainH: number = parseInt(readline(), 10); // represents the height of one mountain.
        tab.push(mountainH)
    }
    // To debug: console.error('Debug messages...');

    index = find_highest(tab, 8);
    console.log(index);
}