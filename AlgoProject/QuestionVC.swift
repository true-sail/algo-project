//
//  QuestionVC.swift
//  AlgoProject
//
//  Created by 家田真帆 on 2019/11/23.
//  Copyright © 2019 家田真帆. All rights reserved.
//

import UIKit

class QuestionVC: UIViewController {
    var blackNums: Array<Int> = []
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 配列blackNumsを昇順に並び替える
        // このクラス内にあるblackNumsを使うからselfをつける
         self.blackNums.sort {$0 < $1}
        print(blackNums)

        label1.text = "\(blackNums[0])"
        label2.text = "\(blackNums[1])"
        label3.text = "\(blackNums[2])"
        label4.text = "\(blackNums[3])"
//
//        label1.backgroundColor = .black
//        label2.backgroundColor = .black
//        label3.backgroundColor = .black
//        label4.backgroundColor = .black
       
    }
    

    @IBAction func didChooseCard1(_ sender: UIButton) {
        performSegue(withIdentifier: "toAnswer", sender: blackNums[0])
    }
    
    @IBAction func didChooseCard2(_ sender: UIButton) {
        performSegue(withIdentifier: "toAnswer", sender: blackNums[1])
    }
    
    @IBAction func didChooseCard3(_ sender: UIButton) {
        performSegue(withIdentifier: "toAnswer", sender: blackNums[2])
    }
    
    @IBAction func didChooseCard4(_ sender: UIButton) {
        performSegue(withIdentifier: "toAnswer", sender: blackNums[3])
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       // 矢印の名前がtoNextの場合
      if segue.identifier == "toAnswer" {
           // QuestionVCのプログラムを取得
            let AVC = segue.destination as! AnswerVC
        
        var answer: Int
        
        AVC.answer = sender as! Int
        }
    }

}
