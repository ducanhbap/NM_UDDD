//
//  ViewController.swift
//  Project1
//
//  Created by Hương Thoa on 11/11/18.
//  Copyright © 2018 Hương Thoa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: UI Elments
    @IBOutlet weak var lblQuote: UILabel!
    // Cách đặt tên khác: quoteLabel
    //   Hungar notation: camelCase
    
    // MARK: Data model
    var quotes = [String]()
    var selectedIndex: Int = -1 // Fix tạm. Cần viết hàm iInt
    
    // MARK: Events
    // Cách dặt tên khác: actionButtonTapped
    @IBAction func btnAction_Tapped(_ sender: UIButton) {
//        lblQuote.text = "Út Yêu Bắp Lắm"
        selectedIndex = Int(arc4random_uniform(3)) // Sinh ra 1 số ngẫu nhiên trong khoảng 0-2 không sinh ra số 3
        // có lỗi có nhiều lúc sinh ra câu nói giống nhau vì miền giá trị nhỏ
        
        lblQuote.text = quotes[selectedIndex]
    }
    
    
    // MARK: Xử lí dành cho ViewControler riêng
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Khi màn hình vừa được tạo ra xong
        // Nạp dữ liệu lên
        // Trước mắt code cứng
        quotes.append("em oi anh muon di cung em di het doan duong doi")
        quotes.append("cau noi 01")
        quotes.append("cau noi 02")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }


}
