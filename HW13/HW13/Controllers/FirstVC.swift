//
//  FirstVC.swift
//  HW13
//
//  Created by Роман Литвинович on 20.08.23.
//

import UIKit

final class FirstVC: UIViewController {
    @IBOutlet private var textLable: UILabel!
    @IBOutlet private var firstButton: UIButton!
    @IBOutlet private var secondButton: UIButton!
    @IBOutlet private var fourButton: UIButton!
    @IBOutlet private var thirdButton: UIButton!

    private func setupUI() {
        firstButton.layer.cornerRadius = 15
        secondButton.layer.cornerRadius = 15
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    @IBAction func goToSecondVC(_ sender: UIButton) {
        performSegue(withIdentifier: "goToSecondVC", sender: firstButton.titleLabel?.text)
    }

    @IBAction func goToThirdVC(_ sender: UIButton) {
        let vc = ThirdVC(nibName: "ThirdVC", bundle: nil)
        vc.dataString = secondButton.titleLabel?.text

        navigationController?.pushViewController(vc, animated: true)
    }

    @IBAction func goToFouthWithoutSegue() {
        let storyboard = UIStoryboard(name: "SecondStoryboard", bundle: nil)
        guard let fouthVC = storyboard.instantiateViewController(withIdentifier: "FouthVC") as? FouthVC
        else {
            return
        }

        fouthVC.dataString = thirdButton.titleLabel?.text
        present(fouthVC, animated: true)
        // navigationController?.pushViewController(fouthVC, animated: true)
    }

    @IBAction func unwindToFirstVC(_ unwindSegue: UIStoryboardSegue) {
        if unwindSegue.source is FouthVC {
            print("Fouth view controller")
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondVC",
           let secondVC = segue.destination as? SecondVC,
           let dataString = sender as? String
        {
            secondVC.dataString = dataString
            secondVC.firstVC = self
        } else if segue.identifier == "goToFiveVC",
                  let fiveVC = segue.destination as? FiveVC
        {
            fiveVC.dataString = fourButton.titleLabel?.text
        }
    }
}
