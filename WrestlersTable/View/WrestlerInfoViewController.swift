//
//  WrestlerInfoViewController.swift
//  WrestlersTable
//
//  Created by Amenda Kang on 2/25/24.
//

import UIKit

class WrestlerInfoViewController: UIViewController {
    
    var wrestlerIndex = -1
    var wrestlerInfoLogic = WrestlerInfoLogic()

    @IBOutlet weak var wrestlerImage: UIImageView!
    
    @IBOutlet weak var wrestlerName: UILabel!
    
    @IBOutlet weak var wrestlerPromo: UILabel!
    
    @IBOutlet weak var wrestlerFinisher: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    @objc func updateUI() {
        wrestlerImage.image = UIImage(named: String(wrestlerIndex))
        wrestlerName.text = "Name: " + wrestlerInfoLogic.getName(wrestlerIndex)
        wrestlerPromo.text = "Promotion: " + wrestlerInfoLogic.getPromo(wrestlerIndex)
        wrestlerFinisher.text = "Finisher: " + wrestlerInfoLogic.getFinisher(wrestlerIndex)
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
