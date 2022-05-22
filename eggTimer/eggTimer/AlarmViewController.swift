//
//  AlarmViewController.swift
//  eggTimer
//
//  Created by hyeonseok on 2022/05/18.
//

import UIKit

class AlarmViewController: UIViewController {

    var timeRemaining: Int = 10
    var timer: Timer!
    var seconds: Int = 0
    var minutes: Int = 0
    var customRecord: Int = 0
    
    @IBOutlet weak var remainTimeLbl: UILabel!
    @IBOutlet weak var playPauseImage: UIImageView!
    
    @IBOutlet weak var playPauseBtn: UIButton!
    @IBOutlet weak var resetBtn: UIButton!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        if !Constants.isCheckTutorial {
            moveTutorialView()
        }

        updateRemainTime()
        print("remainTimeLbl.text : ",remainTimeLbl.text)

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        playPauseBtn.setTitle("", for: .normal)
        resetBtn.setTitle("", for: .normal)

        self.playPauseImage.image = UIImage(systemName: "play.circle.fill")
        self.playPauseImage.tintColor = UIColor.customDeepYellow()
        //        image?.withTintColor(UIColor(red: 245, green: 167, blue: 58, alpha: 1))
                // Do any additional setup after loading the view.
    }
    
    @IBAction func playTapped(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(operateTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseTapped(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func resetTapped(_ sender: Any) {
        timer.invalidate()
        timeRemaining = 10
        remainTimeLbl.text = "\(timeRemaining)"

    }

    @objc func operateTimer() {
        if timeRemaining > 0 {
            timeRemaining -= 1
        } else {
            timer.invalidate()
            timeRemaining = 10
        }
        remainTimeLbl.text = "\(timeRemaining)"
    }
    

    func updateRemainTime() {
    
        if Constants.selectedSeconds == selectType.rareType.rawValue {
            timeRemaining = selectType.rareType.rawValue
            remainTimeLbl.text = String(timeRemaining)

        } else if Constants.selectedSeconds == selectType.welldoneType.rawValue {
            timeRemaining = selectType.welldoneType.rawValue
            remainTimeLbl.text = String(timeRemaining)

        } else  if customRecord != 0 {
            timeRemaining = customRecord
            remainTimeLbl.text = String(timeRemaining)

        }
        
    }
    
    func moveTutorialView() {
        print("tutorial View Check")
        let VC = TutorialViewController(nibName: "TutorialViewController", bundle: nil)
            present(VC, animated: true, completion: nil)
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



