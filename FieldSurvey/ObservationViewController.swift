//
//  ObservationViewController.swift
//  FieldSurvey
//
//  Created by Dale Musser on 7/19/18.
//  Copyright © 2018 jphyr4. All rights reserved.
//

import UIKit

class ObservationViewController: UIViewController {
    @IBOutlet weak var observationImageView: UIImageView!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    var fieldSurveys: ClassEvent?
    
    var dates = DateFormatter()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Observation"
        
        dates.timeStyle = .medium
        dates.timeStyle = .medium
        
        observationImageView.image = fieldSurveys?.classification.image
        
        label1.text = fieldSurveys?.title
        
        if let date = fieldSurveys?.date{
            label2.text = dates.string(from: date)
        } else{
            label2.text = ""
            
        }


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
