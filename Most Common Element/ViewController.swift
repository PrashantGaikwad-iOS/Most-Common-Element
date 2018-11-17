//
//  ViewController.swift
//  Most Common Element
//
//  Created by Prashant G on 11/15/18.
//  Copyright © 2018 MyOrg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print(getMostCommonColor(array: colorArray))
    }

    
    var colorArray = ["red", "green", "red", "black", "blue", "yellow", "red", "green", "yellow", "red", "red", "green", "green", "grey", "purple", "orange", "grey", "blue", "red", "green", "yellow", "orange", "purple", "black", "red", "blue", "green", "orange", "blue", "white", "yellow", "blue", "red", "green", "orange", "purple", "blue", "black", "red"]
    
    
    func getMostCommonColor(array: [String]) -> [String] {
        
        var topColors: [String] = []
        var colorDictionary: [String: Int] = [:]
        
        for color in array {
            if let count = colorDictionary[color] {
                colorDictionary[color] = count + 1
            } else {
                colorDictionary[color] = 1
            }
        }
        
        let highestValue = colorDictionary.values.max()
        
        for (color, _) in colorDictionary {
            if colorDictionary[color] == highestValue {
                topColors.append(color)
            }
        }
        
        return topColors
    }
    
    

}

