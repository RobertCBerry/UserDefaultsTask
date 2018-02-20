//
//  ContentEntryViewController.swift
//  UserDefaultsPreferencesInAppTask
//
//  Created by Robert Berry on 2/20/18.
//  Copyright © 2018 Robert Berry. All rights reserved.
//

import UIKit

class ContentEntryViewController: UIViewController {
    
    // MARK: Properties
    
    @IBOutlet weak var favoriteFoodTextView: UITextView!
    
    @IBOutlet weak var favoriteMovieTextView: UITextView!
    
    @IBOutlet weak var favoriteBookTextView: UITextView!
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        
        // Reference to the user defaults.
        
        let userDefaults = UserDefaults.standard
        
        // Set the data using key-value pairs.
        
        userDefaults.set(favoriteFoodTextView.text, forKey: "FavoriteFood")
        userDefaults.set(favoriteMovieTextView.text, forKey: "FavoriteMovie")
        userDefaults.set(favoriteBookTextView.text, forKey: "FavoriteBook") 
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

