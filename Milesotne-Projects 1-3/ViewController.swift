//
//  ViewController.swift
//  Milesotne-Projects 1-3
//
//  Created by othman shahrouri on 8/6/21.
//

import UIKit

class ViewController: UITableViewController {
    var flags = [String]()
   

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if(item.contains("png")){
                flags.append(item)
               
            }
        }
        flags.sort()
        print(flags.count)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flags.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Flag", for: indexPath)
        cell.textLabel?.text = flags[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //move to detial view
        
    }

}

