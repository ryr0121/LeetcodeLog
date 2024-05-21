class Solution {
    func romanToInt(_ s: String) -> Int {
        let romans = ["I", "V", "X", "L", "C", "D", "M"]
        let input = s.map{String($0)}
        print(input)
        var res = 0
        for i in 0..<input.count-1 {
            let l = getNumOfRoman(input[i])
            let r = getNumOfRoman(input[i+1])
            res += (l >= r) ? l : (-1)*l
        }
        res += getNumOfRoman(input[input.count-1])
        return res
    }
    
    func getNumOfRoman(_ roman: String) -> Int {
        switch roman {
            case "I": return 1
            case "V": return 5
            case "X": return 10
            case "L": return 50
            case "C": return 100
            case "D": return 500
            case "M": return 1000
            default: return 0
        }
    }
}