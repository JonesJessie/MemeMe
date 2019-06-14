//
//  DetailsVC.swift
//  MemeMe 1.0
//
//  Created by Mac User on 2/25/19.
//  Copyright © 2019 Me. All rights reserved.
//

import Foundation
import UIKit
class DetailsVC: UIViewController{
    
    @IBOutlet weak var detailsImage: UIImageView!
    
    var meme : Meme!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = true
        self.detailsImage!.image = meme.memedImage
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }
            }
    

