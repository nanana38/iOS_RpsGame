//
//  ViewController.swift
//  [iOS] RpsGame
//
//  Created by 유현이 on 2022/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainLabel: UILabel!
    
    @IBOutlet var comImageView: UIImageView!
    @IBOutlet var myImageView: UIImageView!
    
    @IBOutlet var comLabel: UILabel!
    @IBOutlet var myLabel: UILabel!
    
    var comChoice: Rps = Rps(rawValue: Int.random(in: 0...2))!
    var mychoice: Rps = .rock
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLabel.text = "선택하세요"
        
        comImageView.image = #imageLiteral(resourceName: "ready")
        comLabel.text = "준비"
        
        myImageView.image = #imageLiteral(resourceName: "ready")
        myLabel.text = "준비"
    }

    @IBAction func rpsButton(_ sender: UIButton) {
        let title = sender.currentTitle!
        switch title {
        case "바위":
            mychoice = .rock
        case "보":
            mychoice = .paper
        case "가위":
            mychoice = .scissors
        default:
            break
        }
    }
    
    @IBAction func selectButton(_ sender: UIButton) {
        switch comChoice {
        case .rock:
            comImageView.image = #imageLiteral(resourceName: "rock")
            comLabel.text = "바위"
        case .paper:
            comImageView.image = #imageLiteral(resourceName: "paper")
            comLabel.text = "보"
        case .scissors:
            comImageView.image = #imageLiteral(resourceName: "scissors")
            comLabel.text = "가위"
        }
        
        switch mychoice {
        case .rock:
            myImageView.image = #imageLiteral(resourceName: "rock")
            myLabel.text = "바위"
        case .paper:
            myImageView.image = #imageLiteral(resourceName: "paper")
            myLabel.text = "보"
        case .scissors:
            myImageView.image = #imageLiteral(resourceName: "scissors")
            myLabel.text = "가위"
        }
        
        if comChoice == mychoice {
            mainLabel.text = "비겼다"
        } else if comChoice == .rock && mychoice == .paper {
            mainLabel.text = "이겼다"
        } else if comChoice == .paper && mychoice == .scissors {
            mainLabel.text = "이겼다"
        } else if comChoice == .scissors && mychoice == .rock {
            mainLabel.text = "이겼다"
        } else {
            mainLabel.text = "졌다"
        }
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        mainLabel.text = "선택하세요"
        
        comImageView.image = #imageLiteral(resourceName: "ready")
        comLabel.text = "준비"
        
        myImageView.image = #imageLiteral(resourceName: "ready")
        myLabel.text = "준비"
        
        comChoice = Rps(rawValue: Int.random(in: 0...2))!
    }
}

