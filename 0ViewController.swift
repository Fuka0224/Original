//
//  0 ViewController.swift
//  Oliginal game
//
//  Created by kaoru akiba on 2017/09/10.
//  Copyright © 2017年 kaoru akiba. All rights reserved.
//

import UIKit

// reduceを用いて取り除いた場合
//extension Array where Element: Equatable {
//    var unique: [Element] {
//        return reduce([]) { $0.0.contains($0.1) ? $0.0 : $0.0 + [$0.1] }
//    }
//}

class __ViewController: UIViewController {
    
    var number: Int!
    var number1: Int!
    var number2: Int!
    var number3: Int!
    var number4: Int!
    
    var number10: Int = 16
    var a: Int = 0
    var suuji = [Int]()
    let saveData: UserDefaults = UserDefaults.standard
    var numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        }

    @IBAction func reset () {
        while suuji.count < 9{
            a = Int(arc4random_uniform(UInt32(numbers.count)))
            suuji.append(numbers[a])
            suuji = suuji.unique
            print(suuji)
        }
        saveData.set(suuji, forKey: "suuji")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
