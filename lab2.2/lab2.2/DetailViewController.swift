//
//  DetailViewController.swift
//  lab2.2
//
//  Created by Yuriy Romanovskiy on 01.04.18.
//  Copyright © 2018 Yuriy Romanovskiy. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var detailNameLabel: UILabel!
    @IBOutlet weak var detaioImageLabel: UIImageView!
    

    func configureView() {
        // Update the user interface for the detail item.
        loadViewIfNeeded()
        detailNameLabel.text = detailItem?.city
        if let url = URL(string: "https://upload.wikimedia.org/wikipedia/commons/d/d6/Herodot_und_Thukydides.jpg"){
            let imgData = NSData(contentsOf: url)
            detaioImageLabel.image = UIImage(data: imgData as! Data)
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: CityInfo? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

