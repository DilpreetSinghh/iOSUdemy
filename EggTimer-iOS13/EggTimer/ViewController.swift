// Completed by Dilpreet Singh
// Completed on 31 May 2023
// Code wriiten by Dilpreeet Singh
// Project Given by Angela

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBAction func hardnessButton(_ sender: UIButton) {
        
        
        
        
        let hardness = sender.currentTitle
        let eggTimes : [String : Int] = ["Soft" : 1, "Medium": 7, "Hard" : 12]
        progressBar.progress = 0.0
        
        
        
        func Timer(eggHardness: String){
            var timeLeft : Float = Float(6*(eggTimes[eggHardness] ?? 0))
            let totalTime : Float = timeLeft
            
            for _ in 0...Int(timeLeft) {
                var percentageProgress =  Float(timeLeft)/Float(totalTime)
                print(percentageProgress)
                    print("\(timeLeft) seconds left")
                    timeLeft-=1
                    progressBar.progress = percentageProgress
                }
                titleLabel.text = "Your Eggs are ready!"
                
            }
            
            switch hardness{
            case "Soft":
                Timer(eggHardness: "Soft")
            case "Medium":
                Timer(eggHardness: "Medium")
            case "Hard":
                Timer(eggHardness: "Hard")
            default:
                print("Error")
            }
    }
}
