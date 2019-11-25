//
//  ResultVC.swift
//  AlgoProject
//
//  Created by 家田真帆 on 2019/11/24.
//  Copyright © 2019 家田真帆. All rights reserved.
//

import UIKit

class ResultVC: UIViewController {
var score: Int = 0
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var commentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = "\(score)"
        
        if score == 100 {
            commentLabel.text = "人間の域を超えていますね..."
            commentLabel.textColor = .red
        } else if 70 <= score {
            commentLabel.text = "天才！"
            commentLabel.textColor = .orange
        } else if 50 <= score && score < 70 {
            commentLabel.text = "すごい！"
            commentLabel.textColor = .orange
        } else if 10 <= score && score < 50 {
            commentLabel.text = "まあまあだね"
            commentLabel.textColor = .blue
        } else if  score < 0 {
            commentLabel.text = "悲惨だね..."
            commentLabel.textColor = .purple
        }
    }
    

    

}
