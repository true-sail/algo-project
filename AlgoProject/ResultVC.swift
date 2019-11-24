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
        
        if 700 <= score {
            commentLabel.text = "天才！"
            commentLabel.textColor = .orange
        } else if 400 <= score && score < 700 {
            commentLabel.text = "すごい！"
            commentLabel.textColor = .yellow
        } else if 100 <= score && score < 400 {
            commentLabel.text = "まあまあだね"
            commentLabel.textColor = .green
        } else if  score < 0 {
            commentLabel.text = "悲惨だね..."
            commentLabel.textColor = .purple
        }
    }
    

    

}
