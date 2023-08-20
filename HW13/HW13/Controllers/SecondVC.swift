//
//  SecondVC.swift
//  HW13
//
//  Created by Роман Литвинович on 20.08.23.
//

import UIKit

class SecondVC: UIViewController {
    
    var dataString: String?
    weak var firstVC: FirstVC?
    
    @IBOutlet weak var backButtonAction: UIButton!
    @IBOutlet weak var textLable: UILabel!
    
    @IBOutlet weak var textView: UITextView!
    
    private func setupUI(){
        textView.layer.cornerRadius = 15
        textView.isEditable = false
        backButtonAction.layer.cornerRadius = 15
        textLable.text = dataString
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    @IBAction func backButtonAction(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
