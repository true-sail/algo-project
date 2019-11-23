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

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 配列blackNumsを昇順に並び替える
        // このクラス内にあるblackNumsを使うからselfをつける
         self.blackNums.sort {$0 < $1}
        print(blackNums)
    }
    
       
    
}

