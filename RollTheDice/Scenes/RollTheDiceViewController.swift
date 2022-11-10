//
//  ViewController.swift
//  RollTheDice
//
//  Created by Raul Ribeiro on 10/11/22.
//

import UIKit

class RollTheDiceViewController: UIViewController {

    
    @IBOutlet weak var oldNumberLabel: UILabel!
    @IBOutlet weak var lastNumberLabel: UILabel!
    
    var game: RollTheDice? {
        didSet {
            guard isViewLoaded, let game = game else { return }
            updateView(for: game)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let game = game {
            updateView(for: game)
        }
    }
    
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        game?.execute()
    }
    
    func updateView(for game: RollTheDice) {
        oldNumberLabel.text = String(describing: game.oldNumberValue)
        lastNumberLabel.text = String(describing: game.lastNumberValue)
    }
    


}

