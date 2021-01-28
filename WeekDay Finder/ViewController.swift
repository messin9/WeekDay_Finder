//
//  ViewController.swift
//  WeekDay Finder
//
//  Created by Алексей on 02.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var MonthTF: UITextField!
    @IBOutlet weak var DateTF: UITextField!
    @IBOutlet weak var YearTF: UITextField!
    @IBOutlet weak var ResultLabel: UILabel!
    
    @IBAction func FindDay(_ sender: UIButton) {
        
        guard let month = MonthTF.text, let day = DateTF.text, let year = YearTF.text else {return}
        
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.month = Int(month)
        dateComponents.day = Int(day)
        dateComponents.year = Int(year)
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ru_RU")
        dateFormatter.dateFormat = "EEEE"
        
        guard let date = calendar.date(from: dateComponents) else {return}
        
        let weekday = dateFormatter.string(from: date)
        let capitalizedWeekday = weekday.capitalized
        
        ResultLabel.text = capitalizedWeekday
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}


