//
//  SavedContentViewController.swift
//  UserDefaultsPreferencesInAppTask
//
//  Created by Robert Berry on 2/20/18.
//  Copyright © 2018 Robert Berry. All rights reserved.
//

import UIKit

class SavedContentViewController: UIViewController {
    
    // MARK: Properties
    
    @IBOutlet weak var savedFoodTextView: UITextView!
    
    @IBOutlet weak var savedMovieTextView: UITextView!
    
    @IBOutlet weak var savedBookTextView: UITextView!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Retrieving User Defaults
        
        // Reference to the user defaults.
        
        let userDefaults = UserDefaults.standard
        
        // Fetch any saved data associated with the first occurence of the specified key. If the key is not found, then it returns nil.
        
        savedFoodTextView.text = userDefaults.object(forKey: "FavoriteFood") as? String
        savedMovieTextView.text = userDefaults.object(forKey: "FavoriteMovie") as? String
        savedBookTextView.text = userDefaults.object(forKey: "FavoriteBook") as? String
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
