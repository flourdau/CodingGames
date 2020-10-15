#include <iostream>
#include <string>
#include <vector>
#include <algorithm>

using namespace std;

int main()
{
    int index, max; // #Norminette
  
    while (1) {
        index = 0;
        max = -1;
        
        for (int i = 0; i < 8; i++) {
            int mountainH; // represents the height of one mountain.
            cin >> mountainH; cin.ignore();
            
            if (mountainH > max) {
                max = mountainH;
                index = i;
            }
        }

        cout << index << endl; // The index of the mountain to fire on.
    }
}