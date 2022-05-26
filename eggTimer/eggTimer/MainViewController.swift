//
//  MainViewController.swift
//  eggTimer
//
//  Created by hyeonseok on 2022/05/17.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var selectBtnView: UIView!
    @IBOutlet weak var lastRecordView: UIView!
    
    @IBOutlet weak var selectRareBtn: UIButton!
    @IBOutlet weak var selectWelldoneBtn: UIButton!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        selectRareBtn.setTitle("", for: .normal)
        lastRecordView.layer.cornerRadius = 25
        statusLabel.text = "조리시간을 선택하세요"
        
    }
    
    @IBAction func rareBtn(_ sender: Any) {
        print("반숙선택")
        Constants.selectedSeconds = selectType.rareType.rawValue
        print("selectedSeconds: ",Constants.selectedSeconds)
    }
    
    @IBAction func welldoneBtn(_ sender: Any) {
        print("완숙선택")
        Constants.selectedSeconds = selectType.welldoneType.rawValue
        print("selectedSeconds: ",Constants.selectedSeconds)
    }
    
    
    
    
    func movePresent() {
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "123") else {return}
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
