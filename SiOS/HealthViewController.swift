//
//  HealthViewController.swift
//  SiOS
//
//  Created by Anaïs on 06/04/2022.
//

import UIKit
import AVKit
import AVFoundation

class HealthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let player1 = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "Arret_cardiaque", ofType: "mp4")!))
        let player2 = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "Compression£_thoracique", ofType: "mp4")!))
        let player3 = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "Perte_de_connaissance", ofType:"mp4")!))
        let player4 = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "PLS", ofType:"mp4")!))
        let player5 = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "RCP", ofType: "mp4")!))
        let player6 = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "RCP_enfant", ofType: "mp4")!))
        let player7 = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "RCP_nourrisson", ofType:"mp4")!))
        let layer1 = AVPlayerLayer(player: player1)
        layer1.frame = view.bounds
        layer1.videoGravity = .resizeAspectFill
        view.layer.addSublayer(layer1)
        let layer2 = AVPlayerLayer(player: player2)
        layer2.frame = view.bounds
        layer2.videoGravity = .resizeAspectFill
        view.layer.addSublayer(layer1)
        let layer3 = AVPlayerLayer(player: player3)
        layer3.frame = view.bounds
        layer3.videoGravity = .resizeAspectFill
        view.layer.addSublayer(layer3)
        let layer4 = AVPlayerLayer(player: player4)
        layer4.frame = view.bounds
        layer4.videoGravity = .resizeAspectFill
        view.layer.addSublayer(layer4)
        let layer5 = AVPlayerLayer(player: player5)
        layer5.frame = view.bounds
        layer5.videoGravity = .resizeAspectFill
        view.layer.addSublayer(layer1)
        let layer6 = AVPlayerLayer(player: player6)
        layer6.frame = view.bounds
        layer6.videoGravity = .resizeAspectFill
        view.layer.addSublayer(layer1)
        let layer7 = AVPlayerLayer(player: player7)
        layer7.frame = view.bounds
        layer7.videoGravity = .resizeAspectFill
        view.layer.addSublayer(layer7)
        player1.play()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
