//
//  ViewController.swift
//  AlgoProject
//
//  Created by 家田真帆 on 2019/11/23.
//  Copyright © 2019 家田真帆. All rights reserved.
//

import UIKit

class StartVC: UIViewController {

    let blackCards = [0,1,2,3,4,5,6,7,8,9,10,11]
    
    let whiteCards = [0,1,2,3,4,5,6,7,8,9,10,11]
    
    var blackNums = [12]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func didStartGameButton(_ sender: UIButton) {
    
        var count = 0
        
        while count <= 3 {
            let randomB = arc4random_uniform(UInt32(blackCards.count))
        
       print(randomB)
            blackNums.append(Int(randomB))
            if blackNums[0] == 12 {
                blackNums.removeFirst()
            }
            print(blackNums)
            count += 1
        }
        
        if blackNums[0] == blackNums[1] || blackNums[0] == blackNums[2] || blackNums[0] == blackNums[3] || blackNums[1] == blackNums[2] || blackNums[1] == blackNums[3] || blackNums[2] == blackNums[3] {
            
            blackNums = [12]
            
            var count = 0
             
             while count <= 3 {
                 let randomB = arc4random_uniform(UInt32(blackCards.count))
             
            print(randomB)
                 blackNums.append(Int(randomB))
                 if blackNums[0] == 12 {
                     blackNums.removeFirst()
                 }
                 print(blackNums)
                 count += 1
             }
            
        }
        performSegue(withIdentifier: "toQuestion", sender: blackNums)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // 矢印の名前がtoNextの場合
    
         if segue.identifier == "toQuestion" {
             
             // QuestionVCのプログラムを取得
              let QVC = segue.destination as! QuestionVC
            
              QVC.blackNums = sender as! Array<Int>
          }
      }
}

