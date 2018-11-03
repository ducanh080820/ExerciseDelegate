//
//  ViewController3.swift
//  ExerciseDelegate
//
//  Created by Trần Đức Anh on 11/1/18.
//  Copyright © 2018 Trần Đức Anh. All rights reserved.
//

import UIKit

protocol ViewController3Delegate:class {
    func passData(string: String)
}


class ViewController3: UIViewController {

    @IBOutlet weak var textField3: UITextField!
    
    var delegate: ViewController3Delegate?
    var dataTextField: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if dataTextField != nil {
            textField3.text = dataTextField
        }
        
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        dataTextField = textField3.text
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func done(_ sender: Any) {
        delegate?.passData(string: textField3.text!)
        navigationController?.popViewController(animated: true)
    }

}
