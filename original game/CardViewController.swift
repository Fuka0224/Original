//
//  CardViewController.swift
//  oliginal game
//
//  Created by kaoru akiba on 2017/05/21.
//  Copyright © 2017年 kaoru akiba. All rights reserved.
//

import UIKit


class CardViewController: UIViewController {
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
    let saveData: UserDefaults = UserDefaults.standard
    var numbers = UserDefaults.standard.array(forKey:"suuji") as? [Int] ?? [Int]()
    var attackNumber = UserDefaults.standard.array(forKey: "attack")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        label5.text = String(numbers[0])
        label6.text = String(numbers[1])
        label7.text = String(numbers[2])
        label8.text = String(numbers[3])
        
        number1 = numbers[4]
        number2 = numbers[5]
        number3 = numbers[6]
        number4 = numbers[7]
        
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
