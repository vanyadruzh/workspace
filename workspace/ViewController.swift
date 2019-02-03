//
//  ViewController.swift
//  workspace
//
//  Created by Vanya Druzhinin on 25.01.19.
//  Copyright © 2019 Vanya Druzhinin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print(firstEx(name: "Vanya"))
        print(secondEx(patronymic: "Николаевич"))
        print(thirdEx(fullName: "VanyaDruzhinin"))
        print(fourthEx(something: "aynaV"))
        print(fifthEx(myString: "10000000000000"))
        print(sixthEx(password: "><MoyuSobakyZovut4tuna><"))
        print(seventhEx())
        print(eighthEx(string: "бульба"))
        print(ninthEx(arrayOfString: ["lada","sedan","baklazhan"],searchString: "da"))
        print(tenthEx(mat: ["fuck","fak"], sentence: "hello my fak"))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func firstEx(name:String)-> Int{
        let name:String = name
        let numberOfCharacters:Int = name.count
        return numberOfCharacters
    }
    
    func secondEx(patronymic:String)-> Bool{
        let patronymic:String = patronymic
        if patronymic.contains("ич") || patronymic.contains("ин"){
            return true
        }
        else{
            return false
        }
    }
    
    func thirdEx(fullName:String)-> String{
        let fullName:String = fullName
        var array:String = ""
        for ch in fullName {
            if ch >= "A" && ch <= "Z"{
                array.append(ch)
            }
        }
        array.remove(at: array.startIndex)
        let index = fullName.index(of: array[array.startIndex]) ?? array.startIndex
        let name = fullName[..<index]
        var surname = ""
        surname = fullName.replacingOccurrences(of: name, with:"")
        let resultFullName = name + " " + surname
        return resultFullName
    }
    
    func fourthEx(something:String)-> String{
        let something:String = something
        var i:Int = something.count - 1
        let endIndex:Int = 0
        var result:String = ""
        while i >= endIndex{
            let index = something.index(something.startIndex, offsetBy: i)
            result.append(String(something[index])   ) // "S"
            i = i - 1
            
        }
        return result
    }
    
    func fifthEx(myString:String)-> String{
        let myString:String = myString
        var index = 3
        let count:Int = (myString.count / 3)
        var i:Int = 0
        let character = "," as Character
        var newString = fourthEx(something: myString)
        if myString.count % 3 == 0{
            while count-1 > i{
                newString.insert(
                    character, at:
                    newString.index(newString.startIndex, offsetBy: index)
                )
                index += 4
                i = i + 1
            }
        }
        else{
            while count > i{
                newString.insert(
                    character, at:
                    newString.index(newString.startIndex, offsetBy: index)
                )
                index += 4
                i = i + 1
            }
        }
        let result = fourthEx(something: newString)
        return result
    }
    
    func sixthEx(password:String)-> String{
        let password:String = password
        var res:String = ""
        var count:Int = 0
        for ch in password {
            if ch >= "0" && ch <= "9"{
                count += 1
                res.append("a)")
                break
            }
        }
        for ch in password {
            if ch >= "A" && ch <= "Z"{
                count += 1
                res.append("b)")
                break
            }
        }
        for ch in password {
            if ch >= "a" && ch <= "z"{
                count += 1
                res.append("c)")
                break
            }
        }
        for ch in password {
            if ch == "!" || ch == "@" || ch == "#" || ch == "$" || ch == "%" || ch == "^"
                || ch == "&" || ch == "*" || ch == "(" || ch == ")" || ch == "-" || ch == "_"
                || ch == "+" || ch == "=" || ch == "±" || ch == "§" || ch == "<" || ch == ">"
                || ch == "{" || ch == "[" || ch == "}" || ch == "]" || ch == ":" || ch == ";"{
                count += 1
                res.append("d)")
                break
            }
        }
        if count == 4{
            count = 5
            res.append("e)")
        }
        let result:String = String(count) + "  " + res
        return result
    }
    
    func seventhEx()-> [Int]{
        var array = [Int].init()
        
        for _ in 0..<20 {
            array.append(Int(arc4random_uniform(20)))
        }
        print(array)
        var i:Int = 1
        while i < array.count{
            if ( i == 0 || array[i-1] <= array[i] ){
                i = i + 1
            }
            else{
                let count:Int = array[i]
                array[i] = array[i - 1]
                array[i - 1] = count
                i = i - 1
            }
        }
        print(array)
        var j:Int = 0
        while j < array.count{
            if j == array.count-1{
                break
            }
            if array[j] == array[j + 1]{
                array.remove(at: j)
                j = -1
            }
            j += 1
            
        }
        return array
    }
    
    func eighthEx(string:String)-> String{
        let string:String = string
        var result:String = ""
        for ch in string{
            if ch == "а"{result.append("a")}
            if ch == "б"{result.append("b")}
            if ch == "в"{result.append("v")}
            if ch == "г"{result.append("g")}
            if ch == "д"{result.append("d")}
            if ch == "е"{result.append("ye")}
            if ch == "ё"{result.append("yo")}
            if ch == "ж"{result.append("zh")}
            if ch == "з"{result.append("z")}
            if ch == "и"{result.append("i")}
            if ch == "й"{result.append("y")}
            if ch == "к"{result.append("k")}
            if ch == "л"{result.append("l")}
            if ch == "м"{result.append("m")}
            if ch == "н"{result.append("n")}
            if ch == "о"{result.append("o")}
            if ch == "п"{result.append("p")}
            if ch == "р"{result.append("r")}
            if ch == "с"{result.append("s")}
            if ch == "т"{result.append("t")}
            if ch == "у"{result.append("u")}
            if ch == "ф"{result.append("ph")}
            if ch == "х"{result.append("h")}
            if ch == "ц"{result.append("c")}
            if ch == "ч"{result.append("ch")}
            if ch == "ш"{result.append("sh")}
            if ch == "щ"{result.append("sh'")}
            if ch == "ъ"{result.append("")}
            if ch == "ы"{result.append("i")}
            if ch == "ь"{result.append("'")}
            if ch == "э"{result.append("e")}
            if ch == "ю"{result.append("yu")}
            if ch == "я"{result.append("ya")}
        }
        return result
    }
    
    func ninthEx(arrayOfString:[String],searchString:String)-> [String]{
        let arrayOfString:[String] = arrayOfString
        let searchString:String = searchString
        let predicate = NSPredicate(format: "SELF contains %@", searchString)
        let result:[String] = arrayOfString.filter { predicate.evaluate(with: $0) }
        return result
    }
    
    func tenthEx(mat:Set<String>, sentence:String)-> String{
        let mat:Set<String> = mat
        var sentence:String = sentence
        for i in mat{
            if sentence.contains(i){
                sentence = sentence.replacingOccurrences(of: i, with:"***")
            }
        }
        return sentence
    }
}

