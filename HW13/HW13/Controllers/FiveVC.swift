//
//  FiveVC.swift
//  HW13
//
//  Created by Роман Литвинович on 20.08.23.
//

import UIKit

final class FiveVC: UIViewController {
    var dataString: String?

    @IBOutlet private var backButtonAction: UIButton!
    @IBOutlet private var textLable: UILabel!
    @IBOutlet private var textView: UITextView!

    private func setupUI() {
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
