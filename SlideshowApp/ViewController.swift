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
        playButton.setTitle("停止", for: .normal)
    }

func tapAction(_ sender: Any) {
    }
    
func unwind(_ segue:UIStoryboardSegue) {
    }
    
}
