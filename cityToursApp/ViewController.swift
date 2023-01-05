//
//  ViewController.swift
//  cityToursApp
//
//  Created by oğuzhan salkım on 5.01.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var firstTV: UITableView!
    var cities = [City]()
    var userSelection : City?
    override func viewDidLoad() {
        super.viewDidLoad()
        firstTV.delegate = self
        firstTV.dataSource = self
        // Cities
        let a = City( cityName: "a", regionName: "", pic: UIImage(named :"1" )! )
        let b = City( cityName: "b", regionName: "a", pic: UIImage(named :"2" )! )
        let c = City( cityName: "c", regionName: "b", pic: UIImage(named :"3" )! )
        let d  = City( cityName: "d", regionName: "d", pic: UIImage(named :"4" )! )
        let e = City( cityName: "e", regionName: "s", pic: UIImage(named :"5" )! )
        let f = City( cityName: "f", regionName: "d", pic: UIImage(named :"6" )! )
        let g  = City( cityName: "g", regionName: "f", pic: UIImage(named :"7" )! )
        cities = [a,b,c,d,e,f,g]
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = cities[indexPath.row].cityName
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         userSelection = cities[indexPath.row]
        performSegue(withIdentifier: "toVC2", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toVC2" {
            let destinationVC = segue.destination as! VC2
            destinationVC.selectedCity = userSelection
        }
    }

}

