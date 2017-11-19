//
//  ViewController.swift
//  oliginal game
//
//  Created by kaoru akiba on 2017/05/21.
//  Copyright © 2017年 kaoru akiba. All rights reserved.
//
//test
import UIKit

// reduceを用いて取り除いた場合
extension Array where Element: Equatable {
    var unique: [Element] {
        return reduce([]) { $0.0.contains($0.1) ? $0.0 : $0.0 + [$0.1] }
        
    }
}

class ViewController: UIViewController {
    @IBOutlet var label1: UILabel!//相手左から１番目
    @IBOutlet var label2: UILabel!//相手左から２番目
    @IBOutlet var label3: UILabel!//相手左から３番目
    @IBOutlet var label4: UILabel!//相手左から４番目
    @IBOutlet var label5: UILabel!//自分左から１番目
    @IBOutlet var label6: UILabel!//自分左から２番目
    @IBOutlet var label7: UILabel!//自分左から３番目
    @IBOutlet var label8: UILabel!//自分左から４番目
    
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
        // Do any additional setup after loading the view, typically from a nib.
        
        if saveData.object(forKey: "suuji") != nil{
            suuji = saveData.object(forKey: "suuji") as! [Int]
        }else{
            while suuji.count < 9{
                a = Int(arc4random_uniform(UInt32(numbers.count)))
                suuji.append(numbers[a])
                suuji = suuji.unique
                print(suuji)
            }
            saveData.set(suuji, forKey: "suuji")
        }
        
        
        label5.text = String(suuji[0])
        label6.text = String(suuji[1])
        label7.text = String(suuji[2])
        label8.text = String(suuji[3])
        
        number1 = suuji[4]
        number2 = suuji[5]
        number3 = suuji[6]
        number4 = suuji[7]
        
        print(number10)
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if saveData.object(forKey: "1") != nil{
            label1.text = String(number1)
        }else if saveData.object(forKey: "2") != nil{
            label2.text = String(number2)
        }else if saveData.object(forKey: "3") != nil{
            label3.text = String(number3)
        }else if saveData.object(forKey: "4") != nil{
            label4.text = String(number4)
        }
        if number1 == number10 {
            saveData.set(number1,forKey: "1")
            aleart()
            label1.text = String(number1)
        }else if number2 == number10 {
            saveData.set(number2,forKey: "2")
            aleart()
             label2.text = String(number2)
        }else if number3 == number10 {
            saveData.set(number3,forKey: "3")
            aleart()
             label3.text = String(number3)
        }else if number4 == number10 {
            saveData.set(number4,forKey: "4")
            aleart()
             label4.text = String(number4)
        }else if number10 == 16 {
            number10 = 16
            
        }else{
            //alertを出す
            let alert: UIAlertController = UIAlertController(title: "不正解...", message: "",preferredStyle: .alert)
            
            //OKボタン
            alert.addAction(
                UIAlertAction(
                    title: "次へ",
                    style: .default,
                    handler: {action in
                        
                    }
                )
                
            )
            present(alert, animated: true, completion: nil)
        }
        
        if saveData.object(forKey: "suuji") != nil{
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func hint () {
        
    }
    
    @IBAction func attack () {
        
    }
    func aleart () {
        //alertを出す
        let alert: UIAlertController = UIAlertController(title: "正解!", message: "",preferredStyle: .alert)
        
        //OKボタン
        alert.addAction(
            UIAlertAction(
                title: "次へ",
                style: .default,
                handler: {action in
                    
                }
            )
            
        )
        present(alert, animated: true, completion: nil)
        
    }
    
    
}
