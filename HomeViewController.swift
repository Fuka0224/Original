//
//  0 HomeViewController.swift
//  Oliginal game
//
//  Created by kaoru akiba on 2017/09/10.
//  Copyright © 2017年 kaoru akiba. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    

    var a: Int = 0
    var suuji =  [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
    var attackNumber = 100
    let saveData: UserDefaults = UserDefaults.standard
    

    override func viewDidLoad() {
        super.viewDidLoad()
        suuji = suuji.shuffled()
        saveData.set(attackNumber, forKey: "attack")
        cutArray()
        saveData.set(suuji, forKey:"suuji")
        print(suuji)
        

        
        
        }

@IBAction func reset () {
    suuji = suuji.shuffled()
    saveData.set(attackNumber, forKey: "attack")
    cutArray()
    saveData.set(suuji, forKey:"suuji")

}

    func cutArray() {
        var x = 0
        repeat {
        suuji.removeLast()
            x = x + 1
    }while (x < 8)
    }

}

extension MutableCollection{
    mutating func shuffle(){
        let c = count
        guard c > 1 else { return }
        for (firstUnshuffled, unshuffledCount) in zip (indices, stride(from: c, to: 1, by: -1)){
            let d: IndexDistance = numericCast(arc4random_uniform(numericCast(unshuffledCount)))
            let i = index(firstUnshuffled, offsetBy: d)
            swapAt(firstUnshuffled, i)
        }
    }
}

extension Sequence {
    func shuffled() -> [Element] {
        var result = Array(self)
        result.shuffle()
        return result
    }
}
