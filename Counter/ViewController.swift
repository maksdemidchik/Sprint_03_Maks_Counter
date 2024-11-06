//
//  ViewController.swift
//  Counter
//
//  Created by Maxim on 04.11.2024.
//

import UIKit
import Foundation
class ViewController: UIViewController {

    @IBOutlet weak var countNotification: UITextView!
    @IBOutlet weak var count: UILabel!
    var x=0
    func data()->String{
        let data=DateFormatter()
        data.dateFormat="dd.MM.yyyy HH:mm:ss"
        return data.string(from: Date())
    }
    func update(string:String){
        count.text="Значения счетчика:"+"\(x)"
        countNotification.text+=("\n\(data()):"+string)
    }
    @IBAction func plus(_ sender: Any) {
        x+=1
        update(string:"значение изменено на +1")
    }
    
    @IBAction func resettingTheCounter(_ sender: Any) {
        x=0
        update(string:"значение сброшено")
    }
    
    @IBAction func minus(_ sender: Any) {
        if x-1>=0{
            x-=1
            update(string: "значение изменено на -1")
        }
        else{
            update(string: "попытка уменьшить значение счётчика ниже 0")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countNotification.isScrollEnabled=true
        countNotification.isEditable=false
        countNotification.text="История изменений:"
        count.text="Значения счетчика:0"
        // Do any additional setup after loading the view.
    }
    
}

