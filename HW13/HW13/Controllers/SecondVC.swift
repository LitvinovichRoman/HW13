//
//  SecondVC.swift
//  HW13
//
//  Created by Роман Литвинович on 20.08.23.
//

import UIKit

final class SecondVC: UIViewController {
    var dataString: String?
    weak var firstVC: FirstVC?
    
    @IBOutlet private var backButtonAction: UIButton!
    @IBOutlet private var textLable: UILabel!
    @IBOutlet private var textView: UITextView!
    
    private func setupUI() {
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
