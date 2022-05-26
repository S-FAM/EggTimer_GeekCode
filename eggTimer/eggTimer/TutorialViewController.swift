//
//  TutorialViewController.swift
//  eggTimer
//
//  Created by hyeonseok on 2022/05/18.
//

import UIKit

class TutorialViewController: UIViewController {

    @IBOutlet weak var dismissBtn: UIButton!
    // TODO: 더이상보지않기

    override func viewDidLoad() {
        super.viewDidLoad()
        Constants.isCheckTutorial = true
        dismissBtn.setTitle("", for: .normal)
        // Do any additional setup after loading the view.
    }

    @IBAction func dismissBtn(_ sender: Any) {
        dismissViewController()
        print("dismiss Clicked")
    }
    
    
     func dismissViewController() {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
