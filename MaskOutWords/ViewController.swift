//
//  ViewController.swift
//  MaskOutWords
//
//  Created by Angel Kukushev on 2/11/15.
//  Copyright (c) 2015 Angel Kukushev. All rights reserved.
//

import Cocoa
import Foundation

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var text: String = "We love coding in PHP!\\nThis makes us really productive !"
        //var words = "PHP"
        var words: [String] = ["PHP" , "productive"]
        var modifiedText = maskOutWords(text,words: words)
        
        println(modifiedText)

    }


    func maskOutWords(text:String,words:[String]) -> String {
       
        var word1 = words[0]
        var word2 = words[1]
        
        var newLineSymbol: String = "\\n"
        
         if text.rangeOfString(newLineSymbol) != nil{
             println("exists")
        
        }

        // to do: code snippet ignoring the special symbols /n
      

        var wordLength = countElements(word1)
        var wordLength2 = countElements(word2)
        var stars1: String = ""
        var stars2: String = ""
        for index in 1...wordLength {
            stars1 += "*"
        }
        for index in 1...wordLength2 {
            stars2 += "*"
        }
        
        let textWithStars = text.stringByReplacingOccurrencesOfString(word1, withString: stars1, options: NSStringCompareOptions.LiteralSearch, range: nil)
       
        let textWithStars2 = textWithStars.stringByReplacingOccurrencesOfString(word2, withString: stars2, options: NSStringCompareOptions.LiteralSearch, range: nil)
        return textWithStars2
    }

}

