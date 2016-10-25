
 
 Given a digit string, return all possible letter combinations that the number could represent.
 
 ![Phone](http://i.imgur.com/QU0bTMw.png)


```

import UIKit


let mapping: [String] = [
    "0",
    "1",
    "abc",
    "def",
    "ghi",
    "jkl",
    "mno",
    "pqrs",
    "tuv",
    "wxyz"
]

func letterCombinations(_ digits: String) -> [String] {
    var ans: [String] = []
    ans.append("")
    for i in 0 ..< digits.characters.count {
        
        var arrayFromDigits = digits.characters.map{String($0)}
        guard let intValue: Int = Int(arrayFromDigits[i]) else { print("Could not convert to Int"); break }
        
        while ans.first?.characters.count == i {
            let temp: String = ans.removeFirst()
            for char in mapping[intValue].characters {
                ans.append("\(temp)\(char)")
            }
        }
    }
    return ans
}


letterCombinations("23l")

```
