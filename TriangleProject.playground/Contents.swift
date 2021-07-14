import UIKit


func Triangle(){
    var j = 0
    var pattern = String()
    for i in 0...6
    {
        if(i == 6){
            for _ in 0...7 - i
            {
                pattern += "  "
            }

            for j in 0...i
            {
                if(j % 3 == 0){
                    pattern += "   X"
                }else{
                    pattern += " "
                }
               
            }
            j = i - 1

            while j >= 0
            {
                if(j % 3 == 0){
                pattern += "  X"
                }else{
                    pattern += " "
                }
               
                j -= 1
            }
            pattern += "\n"
        }
        else {
        for _ in 0...7 - i
        {
            pattern += "  "
        }

        for j in 0...i
        {
            if(j == 1){
                pattern += " X"
            }else{
                pattern += "   "
            }
        }
        j = i - 1

        while j >= 0
        {
            if(j == 1){
            pattern += " X"
            }else{
                pattern += " "
            }
            j -= 1
        }
        pattern += "\n"
    }
    }
    print(pattern)
}

Triangle()
