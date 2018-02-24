//
//  MainViewController.swift
//  LazyMan-iOS
//
//  Created by Nick Thompson on 2/18/18.
//  Copyright © 2018 Nick Thompson. All rights reserved.
//

import UIKit
import FSCalendar

class MainViewController: UIViewController {

    @IBOutlet weak var leagueControl: UISegmentedControl!
    @IBOutlet weak var settingsButton: UIBarButtonItem!
    @IBOutlet weak var calendar: FSCalendar!
    @IBOutlet weak var calendarHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.calendar.select(Date(), scrollToDate: false)
        
        self.calendar.scope = .week
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
    
    func calendar(_ calendar: FSCalendar, boundingRectWillChange bounds: CGRect, animated: Bool) {
        self.calendarHeight.constant = bounds.height
        self.view.layoutIfNeeded()
    }

    @IBAction func test(_ sender: Any) {
        
        if calendar.scope == .month {
            self.calendar.setScope(.week, animated: true)
        }
        else {
            self.calendar.setScope(.month, animated: true)
        }
    }
}
