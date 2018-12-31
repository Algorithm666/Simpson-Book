//
//  detailsVC.swift
//  Simpson Book
//
//  Created by Yusif Huseynov on 1/1/19.
//  Copyright © 2019 Yusif Huseynov. All rights reserved.
//

import UIKit

class detailsVC: UIViewController {

    var selectedSimpson = Simpsons()
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var workLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedSimpson.name
        workLabel.text = selectedSimpson.occupation
        imageView.image = selectedSimpson.image
        
        
        
        // Do any additional setup after loading the view.
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
