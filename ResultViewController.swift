//
//  ResultViewController.swift
//  SecondKadaiApp
//
//  Created by Nakajima Mizuki on 2019/02/26.
//  Copyright © 2019 Nakajima Mizuki. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    // 2画面目のLabelをViewControllerにIBOutletとして接続しておく
    @IBOutlet weak var label: UILabel!
    
    // 入力した名前を受け取るためのプロパティ（変数）を宣言しておく
    var nameView : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    // 1画面目のViewControllerから遷移するときにprepareForSegueで
    //nameViewには入力された名前が入っている
        label.text = "こんにちは \(String(describing: nameView!)) さん"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
