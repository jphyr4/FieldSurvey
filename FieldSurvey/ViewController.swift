//
//  ViewController.swift
//  FieldSurvey
//
//  Created by Jacob Paul Hassler on 7/19/18.
//  Copyright © 2018 jphyr4. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myTableView: UITableView!
    
    let fieldSurvey = JSONLoader.load(fileName: "field_observations.json")
    
    let date = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        date.dateStyle = .medium
        date.timeStyle = .medium
        
        self.title = "Field Survey"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fieldSurvey.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        if let cell = cell as? TableViewCell {
            let label = fieldSurvey[indexPath.row]
            cell.myImageView.image = label.classification.image
            cell.label1.text = label.title
            cell.label2.text = date.string(from: label.date)
        }
        
        return cell
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
