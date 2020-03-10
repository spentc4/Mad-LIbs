//
//  ViewController.swift
//  Mad LIbs
//
//  Created by Spencer Curran on 2/7/20.
//  Copyright © 2020 Spencer Curran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var paragraphGenerator: String = "Me and my friends went to the store and bought some <nounEnter>. The <nounEnter> we bought is really <adjectiveEnter> and fun ! After this purchase we <adverbEnter> ran to McDonalds and got some <foodEnter> but they were fresh out ! So we went in to find the manager and <pastEnter> right up to him and <adverbEnter> punched him in the face and took our business elsewhere."
    
    
    
    
    
    @IBOutlet weak var nounEnter: UITextField!
    @IBOutlet weak var adjectiveEnter: UITextField!
    @IBOutlet weak var adverbEnter: UITextField!
    @IBOutlet weak var foodEnter: UITextField!
    @IBOutlet weak var pastEnter: UITextField!
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func madLib(_ sender: Any) {
        textField.text = paragraphGenerator.replacingOccurrences(of: "<nounEnter>", with: nounEnter.text!)
        textField.text = textField.text?.replacingOccurrences(of: "<adjectiveEnter>", with: adjectiveEnter.text!)
        textField.text = textField.text?.replacingOccurrences(of: "<adverbEnter>", with: adverbEnter.text!)
        textField.text = textField.text?.replacingOccurrences(of: "<foodEnter>", with: foodEnter.text!)
        textField.text = textField.text?.replacingOccurrences(of: "<pastEnter>", with: pastEnter.text!)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

