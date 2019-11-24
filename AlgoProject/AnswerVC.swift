//
//  AnswerVC.swift
//  AlgoProject
//
//  Created by 家田真帆 on 2019/11/24.
//  Copyright © 2019 家田真帆. All rights reserved.
//

import UIKit

class AnswerVC: UIViewController {
    // 飛んできた値を受け取る
    var cardNum = Int()
    var blackNums: Array<Int> = []
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("-------------------")
        print(blackNums)
        print("-------------------")
        print(cardNum)
        
        // 数字のキーボード
        self.textField.keyboardType = UIKeyboardType.numberPad
        
    }
    
    

    @IBAction func didClickAnswerButton(_ sender: UIButton) {
       
        let answer = Int(textField.text!)
        print(answer!)
        
        if cardNum == answer {
            performSegue(withIdentifier: "backToQuestion", sender: answer)
        } else {
            score -= 50
            performSegue(withIdentifier: "backToQuestion", sender: 12)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "backToQuestion" {
            let QVC = segue.destination as! QuestionVC
            
            QVC.answer = sender as! Int
            // 送る値を設定
              QVC.blackNums = blackNums as! Array<Int>
          }
      }

}


