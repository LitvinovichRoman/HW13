//
//  ThirdVC.swift
//  HW13
//
//  Created by Роман Литвинович on 20.08.23.
//

import UIKit

class ThirdVC: UIViewController {

    var dataString: String?

    @IBOutlet weak var backButtonAction: UIButton!
    @IBOutlet weak var textLable: UILabel!
    
    @IBOutlet weak var textView: UITextView!
    
    private func setupUI(){
        textView.layer.cornerRadius = 15
        textView.isEditable = false
        textLable.text = dataString
        backButtonAction.layer.cornerRadius = 15
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    @IBAction func backButtonAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }

}
