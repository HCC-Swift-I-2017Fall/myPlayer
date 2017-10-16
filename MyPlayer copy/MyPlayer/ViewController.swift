//
//  ViewController.swift
//  MyPlayer
//
//  Created by Douglas Bump on 8/19/17.
//  Copyright © 2017 Douglas Bump. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {
  let avPlayerViewController = AVPlayerViewController()
  var avPlayer: AVPlayer?
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    answerLabel1.isHidden = true
    let movieUrl: NSURL? = NSURL(string: "http://sophia.hccs.edu/~douglas.bump/0409/fereview1/1.mp4")
    if let url = movieUrl {
      self.avPlayer = AVPlayer(url: url as URL)
      self.avPlayerViewController.player = self.avPlayer
    }
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func PlayButtonTapped(_ sender: UIButton) {
    
    self.present(self.avPlayerViewController, animated: true){
    ()-> Void in self.avPlayerViewController.player?.play()
    }
  }

    @IBAction func showAnswer1(_ sender: UIButton) {
        answerLabel1.isHidden  = false
    }
    @IBOutlet weak var answerLabel1: UILabel!
    

}

