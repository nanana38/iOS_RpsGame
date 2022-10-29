//
//  RPSManager.swift
//  [iOS] RpsGame
//
//  Created by 유현이 on 2022/10/29.
//

import Foundation

struct RPSManager {
    
    var comChoice: Rps = Rps(rawValue: Int.random(in: 1...3))!
    var myChoice: Rps = Rps(rawValue: Int.random(in: 1...3))!
    
    func getReady() -> Rps {
        return Rps.ready
    }
    
    func getUserRPS() -> Rps {
        return myChoice
    }
    
    func getComRPS() -> Rps {
        return comChoice
    }
    
    mutating func userGetSelected(name: String) {
        switch name {
        case "바위":
            myChoice = Rps.rock
        case "보":
            myChoice = Rps.paper
        case "가위":
            myChoice = Rps.scissors
        default:
            myChoice = Rps.rock
        }
    }
    
    func getRpsResult() -> String {
        if comChoice == myChoice {
            return "비겼다"
        } else if comChoice == .rock && myChoice == .paper {
            return "이겼다"
        } else if comChoice == .paper && myChoice == .scissors {
            return "이겼다"
        } else if comChoice == .scissors && myChoice == .rock {
            return "이겼다"
        } else {
            return "졌다"
        }
    }
    
    mutating func allReset() {
        comChoice = Rps(rawValue: Int.random(in: 1...3))!
        myChoice = Rps(rawValue: Int.random(in: 1...3))!
    }
}
