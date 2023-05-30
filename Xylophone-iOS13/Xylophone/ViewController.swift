

import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func keyPressed(_
                              sender: UIButton){
        
        print(sender)
        
        playSound(soundName: sender.currentTitle!)
        print(sender.backgroundColor ?? (Any).self)
        // tells us the background color of button
        
        print(sender.titleLabel ?? (Any).self)
        // prints title of the button in console
        
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
            sender.alpha = 1.0}
            }
                                      
            func playSound(soundName: String) {
            guard let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
            else { return }
            
            
            do {
                try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
                try AVAudioSession.sharedInstance().setActive(true)
                //  enable xylophone to work while phone is silent
                
                player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                
                
                guard let player = player else { return }
                
                player.play()
                
            }
            catch let error {
                print(error.localizedDescription)
            }
        }
                                      
                                      
                                      
                                      }
                                      
