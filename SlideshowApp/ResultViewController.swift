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
    
    var image: UIImage! //画像そのもの　の受け取り
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photo2.image = image
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
