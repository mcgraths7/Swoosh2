//
//  SkillVC.swift
//  Swoosh2.0
//
//  Created by Steven McGrath on 9/4/18.
//  Copyright © 2018 Steven McGrath. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    var player: Player!
    
    @IBOutlet weak var beginnerButton: UIButton!
    @IBOutlet weak var ballerButton: UIButton!
    @IBOutlet weak var finishButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let league = player.preferredLeague {
            print(league)
        }
//        print(player.preferredLeague)
        // Do any additional setup after loading the view.
    }
    @IBAction func onBeginnerTapped(_ sender: UIButton) {
        beginnerButton.layer.borderColor = #colorLiteral(red: 0.9981321692, green: 1, blue: 0, alpha: 1)
        ballerButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        select(skillLevel: "beginner")
    }
    @IBAction func onBallerTapped(_ sender: UIButton) {
        ballerButton.layer.borderColor = #colorLiteral(red: 0.9981321692, green: 1, blue: 0, alpha: 1)
        beginnerButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        select(skillLevel: "baller")
    }
    @IBAction func onFinishedTapped(_ sender: UIButton) {
        if let league = player.preferredLeague, let skill = player.skillLevel {
            print("You are joining the \(league) league as a \(skill)")

        }
    }
    
    private func select(skillLevel: String) {
        player.skillLevel = skillLevel
        finishButton.isEnabled = true
    }
    
}
