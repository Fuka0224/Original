//
//  AttackViewController.swift
//  Oliginal game
//
//  Created by kaoru akiba on 2017/06/18.
//  Copyright © 2017年 kaoru akiba. All rights reserved.
//

import UIKit


class AttackViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet var picker: UIPickerView!
    
    var number10 : Int! = 0
   
    
    // 選択肢
    let dataList = ["0", "1", "2", "3", "4","5","6","7","8","9","10","11","12","13","14","15"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ピッカーの作成
        //let picker = UIPickerView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 100))
        //picker.center = self.view.center
        
        // プロトコルの設定
        picker.delegate = self
        picker.dataSource = self
        
        // はじめに表示する項目を指定
        picker.selectRow(0, inComponent: 0, animated: true)
        
        // 画面にピッカーを追加
        //self.view.addSubview(picker)
    }
    
    // UIPickerViewDataSource
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        // 表示する列数
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        // アイテム表示個数を返す
        return dataList.count
    }
    
    // UIPickerViewDelegate
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        // 表示する文字列を返す
        return dataList[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // 選択時の処理
        
        number10 = Int(dataList[row])
        print(number10)
        
    }

//    override func prepare(for segue:UIStoryboardSegue, sender: Any?) {
//        
//        let ViewController: CardViewController = segue.destination as! ViewController
//        ViewController.number10 = self.number10
//    }
}
