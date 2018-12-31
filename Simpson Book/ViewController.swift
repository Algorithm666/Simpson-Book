//
//  ViewController.swift
//  Simpson Book
//
//  Created by Yusif Huseynov on 12/31/18.
//  Copyright © 2018 Yusif Huseynov. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toDetailsVC"{
        
            let destinaton = segue.destination as! detailsVC
            destinaton.selectedSimpson = self.chosenSimpson
            
        }
    }
    
   
    @IBOutlet weak var tableView: UITableView!
    
    var mySimpsons = [Simpsons]()
    
    var chosenSimpson = Simpsons()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        //MARK: Simpsons class
        
        let bart = Simpsons()
        bart.name = "Bart Simpson"
        bart.occupation = "Student"
        bart.image = UIImage(named: "bart.png")!
        
        let homer = Simpsons()
        homer.name = "Homer Simpson"
        homer.occupation = "Nuclear Safety Inspector"
        homer.image = UIImage(named: "homer.png")!
        
        let lisa = Simpsons()
        lisa.name = "Lisa Simpson"
        lisa.occupation = "Student"
        lisa.image = UIImage(named: "lisa.png")!
        
        let maggie = Simpsons()
        maggie.name = "Maggie Simpson"
        maggie.occupation = "Singer"
        maggie.image = UIImage(named: "maggie.png")!
        
        let marge = Simpsons()
        marge.name = "Marge Simpson"
        marge.occupation = "Housewife"
        marge.image = UIImage(named: "marge.png")!
        
        //MARK: Simpsons Array
        
        mySimpsons.append(bart)
        mySimpsons.append(homer)
        mySimpsons.append(lisa)
        mySimpsons.append(maggie)
        mySimpsons.append(marge)
        
        
    }


}

