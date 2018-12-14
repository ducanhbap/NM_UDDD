//
//  CategoryController.swift
//  Project1
//
//  Created by Hương Thoa on 12/14/18.
//  Copyright © 2018 Hương Thoa. All rights reserved.
//

import UIKit

class CategoryController : UIViewController{
    //MARK: UI Events
   var type = -1
    @IBAction func categoryChoice_Tapped(_ sender: UIButton) {
        type = sender.tag
        
        performSegue(withIdentifier: "SegueCatToQuote", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SegueCatToQute"{
            let destinationController = segue.destination as! ViewController
            destinationController.quoteType = type
        }
    }

}
