/**
 * https://golang.org/
 **/

package main

import "fmt"


func find_highest(array [8]int) int {
    var top = 0
    var index = 0
    
    for i := 0; i < 8; i++ {
        if array[i] > top {
            top = array[i]
            index = i
        }
    }
    
    return index
}

func main() {
    for {
        var tab [8]int
        
        for i := 0; i < 8; i++ {
            var mountainH int  // mountainH: represents the height of one mountain.
            fmt.Scan(&mountainH)
            tab[i] = mountainH  // tab = append(tab, mountainH)
        }
        // fmt.Fprintln(os.Stderr, "Debug messages...")
      
        fmt.Println(find_highest(tab)) // The index of the mountain to fire on.
    }
}