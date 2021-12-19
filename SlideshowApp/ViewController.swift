//
//  ViewController.swift
//  SlideshowApp
//
//  Created by jobs steve on 2021/12/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photo1: UIImageView!
    var photoNumber = 0
    
    var timer: Timer!
    var timer_sec: Float = 0
    
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var forwardButton: UIButton!
    
    
    @IBOutlet var tapGes: UITapGestureRecognizer!
    func tapAction(_ sender: Any) {
        }
    
    var nowIndex:Int = 0
      var imageArray:[UIImage] = [
           UIImage(named: "ra-11")!,
           UIImage(named: "cha-11")!,
           UIImage(named: "gyo-11")!
]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

    
    @IBAction func backaButton(_ sender: Any) {
        
        if photoNumber == 0 {
            photoNumber = 2
            photo1.image = UIImage(named: "gyo-11")
        } else if photoNumber == 2 {
            photoNumber -= 1
            photo1.image = UIImage(named: "cha-11")
        } else if photoNumber == 1 {
            photoNumber -= 1
            photo1.image = UIImage(named: "ra-11")
        }
        
    }
    
    @IBAction func forwardButton(_ sender: UIButton) {
        
        if photoNumber < 1 {
            photoNumber += 1
            photo1.image = UIImage(named: "ra-11")
        } else if photoNumber < 2 {
            photoNumber += 1
            photo1.image = UIImage(named: "cha-11")
        } else if photoNumber < 3 {
            photoNumber -= 2
            photo1.image = UIImage(named: "gyo-11")
        }
        
    }
        
    @IBAction func playButton(_ sender: Any) {
        // 再生中か停止しているかを判定
               if (timer == nil) {
                   timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
                   playButton.setTitle("stop", for: .normal)
                backButton.isEnabled = false
                backButton.isHidden = true
                forwardButton.isEnabled = false
                forwardButton.isHidden = true
                tapGes.isEnabled = false

               } else {
                   timer.invalidate()
                   timer = nil
                   playButton.setTitle("play", for: .normal)
                backButton.isEnabled = true
                backButton.isHidden = false
                forwardButton.isEnabled = true
                forwardButton.isHidden = false
                tapGes.isEnabled = true
               }
           }

           @objc func changeImage() {
               nowIndex += 1

               // indexが表示予定の画像の数と同じ場合
               if (nowIndex == imageArray.count) {
                   // indexを一番最初の数字に戻す
                   nowIndex = 0
               }
               // indexの画像をstoryboardの画像にセットする
               photo1.image = imageArray[nowIndex]
           }
        
        



    
@IBAction func unwind(_ segue:UIStoryboardSegue) {
    }

}
