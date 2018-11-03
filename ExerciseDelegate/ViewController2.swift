//
//  ViewController2.swift
//  ExerciseDelegate
//
//  Created by Trần Đức Anh on 11/1/18.
//  Copyright © 2018 Trần Đức Anh. All rights reserved.
//

import UIKit


class ViewController2: UIViewController, ViewController3Delegate {
    
    func passData(string: String) {
        textFieldVC2.text = string
    }
    
    @IBOutlet weak var textFieldVC2: UITextField!
    
    var dataTextField: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if dataTextField != nil {
            textFieldVC2.text = dataTextField
        }
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let VC3 = segue.destination as? ViewController3 {
            VC3.delegate = self
            VC3.dataTextField = textFieldVC2.text
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
