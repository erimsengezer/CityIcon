//
//  ViewController.swift
//  CityIcon
//
//  Created by Erim Şengezer on 2.07.2019.
//  Copyright © 2019 Erim Şengezer. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
  
    var landmarkNames = [String]()
    var landmarkImage = [UIImage]()

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        landmarkNames.append("Colleseum")
        landmarkNames.append("Great Wall")
        landmarkNames.append("Kremlin")
        landmarkNames.append("Stonehenge")
        landmarkNames.append("Tac Mahal")
        
        landmarkImage.append(UIImage(named: "collesium.jpg")!)
        landmarkImage.append(UIImage(named: "greatWall.jpg")!)
        landmarkImage.append(UIImage(named: "kremlin.jpg")!)
        landmarkImage.append(UIImage(named: "stonehenge.jpg")!)
        landmarkImage.append(UIImage(named: "tacmahal.jpg")!)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            landmarkNames.remove(at: indexPath.row)
            landmarkImage.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = landmarkNames[indexPath.row]
        return cell
    }


}

