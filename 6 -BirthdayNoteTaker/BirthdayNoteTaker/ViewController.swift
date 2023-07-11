//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by uludağ on 15.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameSingnUp: UITextField!
    @IBOutlet weak var birthdaySignUp: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName = UserDefaults.standard.object(forKey: "Name")
        let storedBirthday = UserDefaults.standard.object(forKey: "Birthday")
        
        // Casting - as? vs as!. force casting
        // Any
        
        if let myName = storedName as? String {
            nameLabel.text = "Name : \(myName)"
        }
                
            
            if let myBirthday = storedBirthday as? String{
                birthdayLabel.text = "Birthday : \(myBirthday)"
            }
        }
       
    @IBAction func saveButton(_ sender: Any) {
        UserDefaults.standard.set(nameSingnUp.text!, forKey: "Name")
        UserDefaults.standard.set(birthdaySignUp.text!, forKey: "Birthday")
        // UserDefaults.standard.synchronize()
        
        
        
        nameLabel.text = "Name : \(nameSingnUp.text!)"
        birthdayLabel.text  = "Birthday : \(birthdaySignUp.text!)"
        
        }
    
    
    @IBAction func deleteButton(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "Name")
        let storedBirthday = UserDefaults.standard.object(forKey: "Birthday")
        
        // "" vs nill
        
        
        if  ((storedName as? String) != nil) {
            UserDefaults.standard.removeObject(forKey: "Name")
            nameLabel.text = "Name :"
        }
        
        if ((storedBirthday as? String) != nil) {
            UserDefaults.standard.removeObject(forKey: "Birthday")
            birthdayLabel.text = "Birthday :"
        }
        
        
    }
    
    
    
    }



        

    
    


