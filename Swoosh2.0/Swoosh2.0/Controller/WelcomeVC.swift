//
//  ViewController.swift
//  Swoosh2.0
//
//  Created by Steven McGrath on 9/4/18.
//  Copyright © 2018 Steven McGrath. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onGetStartedTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "segueWelcomeToLeague", sender: self)
    }
    
    @IBAction func unwindFromLeagueVC(unwindSegue: UIStoryboardSegue) {
        
    }
    
}

