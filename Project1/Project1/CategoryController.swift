//
//  CategoryController.swift
//  Project1
//
//  Created by Hương Thoa on 12/14/18.
//  Copyright © 2018 Hương Thoa. All rights reserved.
//

import UIKit

class CategoryController : UIViewController{
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SegueCatToQute"{
            let destinationController = segue.destination as! ViewController
            destinationController.quoteType = 0
        }
    }

}
