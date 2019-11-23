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
        
        var card1 = label1.text
        var card2 = label2.text
        var card3 = label3.text
        var card4 = label4.text
        
        label1.backgroundColor = .black
        label2.backgroundColor = .black
        label3.backgroundColor = .black
        label4.backgroundColor = .black
       
    }
    
       
    
}

