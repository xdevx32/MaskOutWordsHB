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
        
        var text: String = "Yesterday, I took my dog for a walk.\n It was crazy! My dog wanted only food."
        
        var words: [String] = ["yesterday", "Dog", "food", "walk"]
        
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
            text = text.stringByReplacingOccurrencesOfString(words[index], withString: stars, options: NSStringCompareOptions.CaseInsensitiveSearch, range: nil)
            
        }
        
        return text
    }

}

