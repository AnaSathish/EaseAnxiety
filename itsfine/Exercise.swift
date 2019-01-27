//
//  exercise.swift
//  itsfine
//
//  Created by Angel Grablev on 1/26/19.
//  Copyright © 2019 katohaven. All rights reserved.
//

import UIKit

class Exercise: UIViewController {
    
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var backBTN: UIButton!
    
    @IBOutlet weak var thing: UILabel!
    
    var time = 0
    var number = 0
    //var inivisible_timer = 0
    //timer
    var timer = Timer()
    
    @IBAction func start(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Exercise.action), userInfo: nil, repeats: true)
        thing.text = "Breathe In"
        
    }
    
    @IBAction func reset(_ sender: Any) {
        time = 0
        lbl.text = ("0")
        thing.text = "Relax"
    }
    
    @IBAction func pause(_ sender: Any) {
         timer.invalidate()
    }
    @objc func action()
    {
        if (time < 4){
            time += 1
        }
        else {
            time = 1
            number += 1
            if (number == 0){
                thing.text = "Breathe In"
            }
            if (number == 1 || number == 3) {
                thing.text = "Hold"
            }
            if (number == 2){
                thing.text = "Breathe Out"
            }
        }
        if (number == 3){
            number = -1
        }
        lbl.text = String(time)
    }
    
    
    

    @IBAction func backBTNTUI(_ sender: Any) {
        dismiss(animated: true, completion:nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
