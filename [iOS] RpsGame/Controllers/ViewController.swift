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
    
    var rpsManager = RPSManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    func configureUI() {
        comImageView.image = rpsManager.getReady().rpsInfo.image
        myImageView.image = rpsManager.getReady().rpsInfo.image
        
        comLabel.text = rpsManager.getReady().rpsInfo.name
        myLabel.text = rpsManager.getReady().rpsInfo.name
        
    }

    @IBAction func rpsButton(_ sender: UIButton) {
        guard let title = sender.currentTitle else { return }
        print(title)
        rpsManager.userGetSelected(name: title)
    }
    
    @IBAction func selectButton(_ sender: UIButton) {

        comImageView.image = rpsManager.getComRPS().rpsInfo.image
        comLabel.text = rpsManager.getComRPS().rpsInfo.name

        myImageView.image = rpsManager.getUserRPS().rpsInfo.image
        myLabel.text = rpsManager.getUserRPS().rpsInfo.name
        
        mainLabel.text = rpsManager.getRpsResult()
        

    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        
        comImageView.image = rpsManager.getReady().rpsInfo.image
        comLabel.text = rpsManager.getReady().rpsInfo.name
        
        myImageView.image = rpsManager.getReady().rpsInfo.image
        myLabel.text = rpsManager.getReady().rpsInfo.name
    
        mainLabel.text = "선택하세요"
        
        rpsManager.allReset()

    }
}

