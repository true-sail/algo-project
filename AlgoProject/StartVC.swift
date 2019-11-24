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
    
    var blackNums = [12]
    var myCards = [12]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       
    }

    fileprivate func getArray() {
        print(blackNums.count)
        while blackNums.count < 8 {
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
//
//    fileprivate func getMyArray() {
//
////            let myNums = arc4random_uniform(UInt32(blackNums.count))
//
//            for i in 0...3 {
//                myCards.append(Int(hisNums[i]))
//
//            if myCards[0] == 12 {
//                myCards.removeFirst()
//            }
//        }
            
//            // 重複している数字を削除
//            let orderedSet2: NSOrderedSet = NSOrderedSet(array: myCards)
//
//            // 再度Arrayに戻す
//            myCards = orderedSet2.array as! Array<Int>
//
         
        
    
    @IBAction func didStartGameButton(_ sender: UIButton) {
        
        // ユーザーデフォルトをリセット
        if let bundleId = Bundle.main.bundleIdentifier {
            UserDefaults.standard.removePersistentDomain(forName: bundleId)
        }
        
        while blackNums.count < 8 {
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
        print("blackNumsの数")
        print(blackNums)
        
        for i in 1...4 {
        myCards.append(blackNums[i])
            if myCards[0] == 12 {
               myCards.removeFirst()
           }
        blackNums.remove(at: i)
        }
    
        
//        for i in 0...3 {
//                       myCards.append(Int(blackNums[i]))
//
//                   if myCards[0] == 12 {
//                       myCards.removeFirst()
//                   }
//        }
        
      
        
        
        print("新しいblackNumsの数字")
        print(blackNums)
        print("myCardsの数字")
        print(myCards)
         
        performSegue(withIdentifier: "toQuestion", sender: blackNums)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // 矢印の名前がtoNextの場合
        if segue.identifier == "toQuestion" {
            // QuestionVCのプログラムを取得
            let QVC = segue.destination as! QuestionVC
            // 送る値を設定
            QVC.blackNums = sender as! Array<Int>
            QVC.myCards = myCards 
            
          }
      }

}
