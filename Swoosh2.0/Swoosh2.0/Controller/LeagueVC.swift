//
//  LeagueVCViewController.swift
//  Swoosh2.0
//
//  Created by Steven McGrath on 9/4/18.
//  Copyright © 2018 Steven McGrath. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    var player: Player!

    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var menButton: UIButton!
    @IBOutlet weak var womenButton: UIButton!
    @IBOutlet weak var coedButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue) {
        
    }
    
    @IBAction func onMenTapped(_ sender: UIButton) {
        menButton.layer.borderColor = #colorLiteral(red: 0.9981321692, green: 1, blue: 0, alpha: 1)
        womenButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        coedButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

        select(league: "men")
    }
    
    @IBAction func onWomenTapped(_ sender: UIButton) {
        womenButton.layer.borderColor = #colorLiteral(red: 0.9981321692, green: 1, blue: 0, alpha: 1)
        menButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        coedButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

        select(league: "women")
    }
    
    @IBAction func onCoedTapped(_ sender: UIButton) {
        coedButton.layer.borderColor = #colorLiteral(red: 0.9981321692, green: 1, blue: 0, alpha: 1)
        menButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        womenButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

        select(league: "coed")
    }
    
    @IBAction func onNextTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "segueLeagueToSkill", sender: self)
    }
    
    private func select(league: String) {
        player.preferredLeague = league
        nextButton.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
}
