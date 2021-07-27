//
//  ViewController.swift
//  SubmitValue-Back
//
//  Created by 장우전 on 2021/07/27.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var resultEmail: UILabel!
    @IBOutlet var resultUpdate: UILabel!
    @IBOutlet var resultInterval: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
        let ud = UserDefaults.standard
        
        if let email = ud.string(forKey: "email") {
            resultEmail.text = email
        }
        
        let update = ud.bool(forKey: "isUpdate")
        resultUpdate.text = update == true ? "자동갱신" : "자동갱신안함"
        
        let interval = ud.double(forKey: "interval")
        resultInterval.text = "\(Int(interval)) 분마다"
    }
}

