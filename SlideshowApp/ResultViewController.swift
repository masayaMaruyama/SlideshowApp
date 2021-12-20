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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //UIImage表示
        photo2.image = UIImage (named: "ra-0")
        
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
