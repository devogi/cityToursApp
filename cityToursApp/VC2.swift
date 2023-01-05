//
//  VC2.swift
//  cityToursApp
//
//  Created by oğuzhan salkım on 5.01.2023.
//

import UIKit

class VC2: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var regionLabel: UILabel!
    
    var selectedCity : City?
    override func viewDidLoad() {
        super.viewDidLoad()
        cityLabel.text = selectedCity?.cityName
        regionLabel.text = selectedCity?.regionName
        ImageView.image = selectedCity?.pic

        // Do any additional setup after loading the view.
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
