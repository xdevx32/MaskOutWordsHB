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
        
        var text: String = "We love coding in PHP!\nThis makes us really productive !"
        
        var words: [String] = ["PHP" , "productive"]
        
        var modifiedText = maskOutWords(text,words: words)
        
        println(modifiedText)

    }


    func maskOutWords(var text:String,words:[String]) -> String {
       
        var newLineSymbol: String = "\n"
        
         if text.rangeOfString(newLineSymbol) != nil{
            
            
            var myStringArr = text.componentsSeparatedByString(newLineSymbol)
            
            newLineSymbol = "\\n"
            
            text = myStringArr[0] + newLineSymbol + myStringArr[1]
            
        }
        var numberOfWords = countElements(words)
        
        for index in 0...numberOfWords-1{
            
            var wordLength = countElements(words[index])
            
            var stars: String = ""
            
            for index in 1...wordLength {
                stars += "*"
            }
            text = text.stringByReplacingOccurrencesOfString(words[index], withString: stars, options: NSStringCompareOptions.LiteralSearch, range: nil)
            
        }
        
        return text
    }

}

