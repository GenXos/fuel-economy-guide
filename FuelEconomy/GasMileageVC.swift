//
//  GasMileageVC.swift
//  FuelEconomy
//
//  Created by Todd Fields on 2016-02-03.
//  Copyright © 2016 Skullgate Studios. All rights reserved.
//

import UIKit
import QuartzCore

class GasMileageVC: UIViewController {
    @IBOutlet weak var mileageViewBox1: UIView!
    @IBOutlet weak var typeLbl: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        mileageViewBox1.layer.cornerRadius = 5
        typeLbl.layer.cornerRadius = 5
        typeLbl.layer.masksToBounds = true
    }
}
