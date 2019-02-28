//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by Nakajima Mizuki on 2019/02/26.
//  Copyright © 2019 Nakajima Mizuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate {
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    // 文字列保存用の変数
    var nameset: String!
    
    @IBOutlet weak var inputed_character: UITextField!
    // TextFieldから文字を取得してnamesetに代入する

    
    //「次へ」を押したときの動き
    @IBAction func handle(_ sender: Any) {
        //「次へ」が押されたら遷移先のLabelの表示をnamesetの値に変える

    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているnameViewにnameの値を代入して渡す
        resultViewController.nameView = inputed_character.text!
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
     // 他の画面から segue を使って戻ってきた時に呼ばれる
    }
}

