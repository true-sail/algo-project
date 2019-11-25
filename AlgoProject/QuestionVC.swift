//
//  QuestionVC.swift
//  AlgoProject
//
//  Created by 家田真帆 on 2019/11/23.
//  Copyright © 2019 家田真帆. All rights reserved.
//

import UIKit

var score = 100

class QuestionVC: UIViewController {
    var blackNums: Array<Int> = []
    var myCards: Array<Int> = []
    var answer: Int = 12
    
    
    var isTrue1 = false
    var isTrue2 = false
    var isTrue3 = false
    var isTrue4 = false
    
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    
    @IBOutlet weak var myCardsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
              
        // 配列blackNumsを昇順に並び替える
        // このクラス内にあるblackNumsを使うからselfをつける
         self.blackNums.sort {$0 < $1}
        print("blackNumsの数")
        print(blackNums)
       
        self.myCards.sort {$0 < $1}
        print(myCards)
        print("myCardsの数")

        label1.text = "\(blackNums[0])"
        label2.text = "\(blackNums[1])"
        label3.text = "\(blackNums[2])"
        label4.text = "\(blackNums[3])"

        label1.backgroundColor = .black
        label2.backgroundColor = .black
        label3.backgroundColor = .black
        label4.backgroundColor = .black
       
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        myCardsLabel.text = "\(myCards)です。"
        
        
        isTrue1 = UserDefaults.standard.bool(forKey: "card1")
        isTrue2 = UserDefaults.standard.bool(forKey: "card2")
        isTrue3 = UserDefaults.standard.bool(forKey: "card3")
        isTrue4 = UserDefaults.standard.bool(forKey: "card4")
        
        if isTrue1 {
            label1.textColor = .white
        }
        if isTrue2 {
            label2.textColor = .white
        }
        if isTrue3 {
            label3.textColor = .white
        }
        if isTrue4 {
            label4.textColor = .white
        }
        
        switch answer {
        case blackNums[0]:
            label1.textColor = .white
            isTrue1 = true
            UserDefaults.standard.set(self.isTrue1, forKey: "card1")
        case blackNums[1]:
            label2.textColor = .white
            isTrue2 = true
            UserDefaults.standard.set(self.isTrue2, forKey: "card2")
        case blackNums[2]:
            label3.textColor = .white
            isTrue3 = true
            UserDefaults.standard.set(self.isTrue3, forKey: "card3")
        case blackNums[3]:
            label4.textColor = .white
            isTrue4 = true
            UserDefaults.standard.set(self.isTrue4, forKey: "card4")
        default:
            print("ハズレ")
        }
        
        if isTrue1 == true && isTrue2 == true && isTrue3 == true && isTrue4 == true {
            performSegue(withIdentifier: "toResult", sender: score)
        }
        
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
        
        var cardNum: Int
        
        AVC.cardNum = sender as! Int
        AVC.blackNums = blackNums as! Array<Int>
        AVC.myCards = myCards as! Array<Int>
      } else if segue.identifier == "toResult" {
        let RVC = segue.destination as! ResultVC
        RVC.score = sender as! Int
        }
    }

}
