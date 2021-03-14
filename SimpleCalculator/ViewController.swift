//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Gilang Ramdhani Putra on 15/03/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var panjang: UITextField!
    @IBOutlet weak var lebar: UITextField!
    @IBOutlet weak var hasil: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculate(_ sender: UIButton) {
        if let h = Double(panjang.text ?? "0"), let w = Double(lebar.text ?? "0"){
            hasil.text = String(h*w)
        }else{
            hasil.text = "Hasil tidak ditemukan"
        }
    }

    @IBAction func reset(_ sender: UIButton) {
        panjang.text = ""
        lebar.text = ""
        hasil.text = ""
    }
    
}

