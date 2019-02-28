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
    
    @IBOutlet weak var inputed_character: UITextField!
    
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

