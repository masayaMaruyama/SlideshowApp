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
    
    //timer用変数
    var timer: Timer!
    var timer_sec: Float = 0
    
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var forwardButton: UIButton!
    
    //画像をタップすると画面を遷移
    @IBOutlet var tapGes: UITapGestureRecognizer!
    func tapAction(_ sender: Any) {
        }
    
    var imageArray:[UIImage] = [
           UIImage(named: "ra-0")!,
           UIImage(named: "cha-1")!,
           UIImage(named: "gyo-2")!
]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photo1.image = imageArray[0]
    }
    
    @IBAction func forwardButton(_ sender: UIButton) {
        if photoNumber == (imageArray.count - 1){
            photoNumber -= (imageArray.count - 1)
        }else{
            photoNumber += 1
        }
        photo1.image = imageArray[photoNumber]
    }
    @IBAction func backaButton(_ sender: Any) {
        if photoNumber == 0 {
            photoNumber = (imageArray.count - 1)
        }else{
            photoNumber -= 1
        }
        photo1.image = imageArray[photoNumber]
    }
    
    //playButton
    @IBAction func playButton(_ sender: Any) {
        // 再生中か停止しているかを判定
               if (timer == nil) {
                   timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
                   playButton.setTitle("stop", for: .normal)
                //button無効
                (backButton.isEnabled,backButton.isHidden) = (false,true)
                (forwardButton.isEnabled,forwardButton.isHidden) = (false,true)
                tapGes.isEnabled = false
               } else {
                   timer.invalidate()
                   timer = nil
                   playButton.setTitle("play", for: .normal)
                //button有効
                ( backButton.isEnabled,forwardButton.isEnabled,tapGes.isEnabled ) = ( true , true , true )
                ( backButton.isHidden,forwardButton.isHidden ) = ( false , false )
               }
           }

           @objc func changeImage() {
            photoNumber += 1
               // photoNumber.0〜max.repeat
               if (photoNumber == imageArray.count) {
                photoNumber = 0
               }
               // photoNumberの画像を表示
               photo1.image = imageArray[photoNumber]
           }
        
//帰りのsegue
@IBAction func unwind(_ segue:UIStoryboardSegue) {
    }

}
