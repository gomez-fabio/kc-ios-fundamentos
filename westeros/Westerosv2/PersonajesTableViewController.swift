//
//  PersonajesTableViewController.swift
//  Westeros
//
//  Created by JOSE LUIS BUSTOS ESTEBAN on 18/7/17.
//  Copyright © 2017 Keepcoding. All rights reserved.
//

import UIKit

class PersonajesTableViewController: UITableViewController {
    
    let model : [Person]
    
    init(model : [Person]){
        self.model = model
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.model.count
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Peronajes"
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // extraigo el Modelo
        let model : Person = self.model[indexPath.row]
        
        //montamos la celda
        var cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier")
        
        if cell == nil{
            cell = UITableViewCell(style: .default, reuseIdentifier: "reuseIdentifier")
        }
        
        // Configuramos la celda
        cell?.textLabel?.text = model.name

        
        return cell!
    }
    
    
    
    
}
