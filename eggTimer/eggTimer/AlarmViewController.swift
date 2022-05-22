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
    var isStartAlarm: Bool = false
    
    @IBOutlet weak var remainTimeLbl: UILabel!
    @IBOutlet weak var playPauseImage: UIImageView!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        moveTutorialView()

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let image =  UIImage(named: "pause.circle.fill")
        self.playPauseImage.image = image
        image?.withTintColor(<#T##color: UIColor##UIColor#>)
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
    

    
    
    func moveTutorialView() {
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
