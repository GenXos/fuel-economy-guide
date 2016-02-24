//
//  ViewController.swift
//  FuelEconomy
//
//  Created by Todd Fields on 2016-02-03.
//  Copyright © 2016 Skullgate Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {


    @IBOutlet weak var yearPickerView: UIPickerView!
    @IBOutlet weak var yearTxt: UITextField!
    @IBOutlet weak var makeTxt: UITextField!
    @IBOutlet weak var modelTxt: UITextField!

    var pickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        yearPickerView.delegate = self
        yearPickerView.dataSource = self
        yearPickerView.hidden = true
        
        pickerData = ["1995", "1996", "1997", "1998", "1999", "2000", "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016"]
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        yearTxt.text = pickerData[row]
        yearPickerView.hidden = true
    }
    
    @IBAction func textFieldShouldBeginEditing(sender: AnyObject) {
        
        yearPickerView.hidden = false
    }

}

