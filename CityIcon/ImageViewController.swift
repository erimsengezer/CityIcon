//
//  ImageViewController.swift
//  CityIcon
//
//  Created by Erim Şengezer on 2.07.2019.
//  Copyright © 2019 Erim Şengezer. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var landmarkName = ""
    var landmarkImg = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = landmarkImg
        nameLabel.text = landmarkName
        
    }
    

}
