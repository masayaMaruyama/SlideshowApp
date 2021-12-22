//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by jobs steve on 2021/12/14.
//

import UIKit

class ResultViewController: UIViewController {
    //UIImage Outlet 接続
    @IBOutlet weak var photo2: UIImageView!
    
    var x:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //UIImage表示
        let imageArray:[UIImage] = [
            UIImage(named: "ra-0")!,
            UIImage(named: "cha-1")!,
            UIImage(named: "gyo-2")!
        ]
        
        photo2.image = imageArray[x]
        
        
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
