//
//  SettingsViewController.swift
//  LazyMan-iOS
//
//  Created by Nick Thompson on 4/26/18.
//  Copyright © 2018 Nick Thompson. All rights reserved.
//

import UIKit

class SettingsViewController: UITableViewController
{

    @IBOutlet weak var defaultLeagueControl: UISegmentedControl!
    @IBOutlet weak var defaultQualityControl: UISegmentedControl!
    @IBOutlet weak var defaultCDNControl: UISegmentedControl!
    @IBOutlet weak var favoriteNHLTeamLabel: UILabel!
    @IBOutlet weak var favoriteMLBTeamLabel: UILabel!
    @IBOutlet weak var hostWarningsSwitch: UISwitch!
    @IBOutlet weak var versionUpdatesSwitch: UISwitch!
    @IBOutlet weak var betaUpdatesSwitch: UISwitch!
    @IBOutlet weak var betaUpdatesLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.defaultLeagueControl.selectedSegmentIndex = SettingsManager.shared.defaultLeague == .NHL ? 0 : 1
        self.defaultQualityControl.selectedSegmentIndex = SettingsManager.shared.defaultQuality
        self.defaultCDNControl.selectedSegmentIndex = SettingsManager.shared.defaultCDN == .Akamai ? 0 : 1
    }
    
    // MARK: - IBActions
    
    @IBAction private func donePressed(_ sender: Any)
    {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction private func githubPressed(_ sender: Any)
    {
        self.openURL(url: URL(string: "https://github.com/inickt/LazyMan-iOS/")!)
    }
    
    @IBAction private func rLazyManPressed(_ sender: Any)
    {
        self.openURL(url: URL(string: "https://www.reddit.com/r/LazyMan/")!)
    }
    
    @IBAction private func defaultLeaguePressed(_ sender: Any)
    {
        SettingsManager.shared.defaultLeague = self.defaultLeagueControl.selectedSegmentIndex == 0 ? .NHL : .MLB
    }
    
    @IBAction private func defaultQualityPressed(_ sender: Any)
    {
        SettingsManager.shared.defaultQuality = self.defaultQualityControl.selectedSegmentIndex
    }
    
    @IBAction private func defaultCDNPressed(_ sender: Any)
    {
        SettingsManager.shared.defaultCDN = self.defaultCDNControl.selectedSegmentIndex == 0 ? .Akamai : .Level3
    }
    
    @IBAction private func hostWarningsPressed(_ sender: Any)
    {
        
    }
    
    @IBAction private func versionUpdatesPressed(_ sender: Any)
    {
        
    }
    
    @IBAction private func betaUpdatesPressed(_ sender: Any)
    {
        
    }
    
    // MARK: - Private
    
    private func openURL(url: URL)
    {
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
        }
    }
}
