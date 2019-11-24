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

    fileprivate func getArray() {
        print(blackNums.count)
        while blackNums.count < 4 {
            let randomB = arc4random_uniform(UInt32(blackCards.count))
            
            blackNums.append(Int(randomB))
            if blackNums[0] == 12 {
                blackNums.removeFirst()
            }
        
        // 配列から重複している数字を削除
        let orderedSet: NSOrderedSet = NSOrderedSet(array: blackNums)
        
        // 再度Arrayに戻す
        blackNums = orderedSet.array as! Array<Int>
        }
    }
    
    @IBAction func didStartGameButton(_ sender: UIButton) {
        
        getArray()
        
        performSegue(withIdentifier: "toQuestion", sender: blackNums)

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // 矢印の名前がtoNextの場合
        if segue.identifier == "toQuestion" {
             // QuestionVCのプログラムを取得
              let QVC = segue.destination as! QuestionVC
            // 送る値を設定
              QVC.blackNums = sender as! Array<Int>
          }
      }

}
