//
//  ExploreViewController.swift
//  Creating Views over current Conext iOS
//
//  Created by Akshansh Thakur on 16/11/20.
//

import UIKit

class ExploreViewController: UIViewController {

    @IBOutlet weak var contextView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(userTapped(_:)))
        
        view.addGestureRecognizer(tapGesture)
        
    }
    
    @objc func userTapped(_ sender: UITapGestureRecognizer) {
        let tapLocation = sender.location(in: view)
        
        if !contextView.frame.contains(tapLocation) {
            dismiss(animated: true, completion: nil)
        }
        
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
