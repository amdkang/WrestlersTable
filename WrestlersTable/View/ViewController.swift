//
//  ViewController.swift
//  WrestlersTable
//
//  Created by Amenda Kang on 2/25/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var wrestlerInfoLogic = WrestlerInfoLogic()
    var wrestlerIndex = -1
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return wrestlers.count
        return wrestlerInfoLogic.getCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let wrestlers = wrestlerInfoLogic.getWrestlers()
        content.text = wrestlers[indexPath.row].name
        content.secondaryText = wrestlers[indexPath.row].promotion
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        wrestlerIndex = indexPath[1]
        self.performSegue(withIdentifier: "toWrestlerInfo", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toWrestlerInfo" {
            let wrestlerInfo = segue.destination as! WrestlerInfoViewController
            wrestlerInfo.wrestlerIndex = wrestlerIndex
        }
    }
}

