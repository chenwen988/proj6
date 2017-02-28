//
//  BigorSmallViewController.swift
//  比大小遊戲
//
//  Created by Jennifer on 2017/2/28.
//  Copyright © 2017年 Jennifer Ｗu. All rights reserved.
//

import UIKit

class BigorSmallViewController: UIViewController {
    
    @IBOutlet weak var segBigSmall: UISegmentedControl!
    @IBOutlet weak var segnumber: UISegmentedControl!
    @IBOutlet weak var lblReturnRate: UILabel!
    @IBOutlet weak var txtSpend: UITextField!
    
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var imgno1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var imgno2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var imgno3: UIImageView!
    @IBOutlet weak var imgwin: UIImageView!
    @IBOutlet weak var imglose: UIImageView!
    @IBOutlet weak var lblwinprice: UILabel!
    
    @IBOutlet weak var btngo: UIButton!
    @IBOutlet weak var btnstart: UIButton!
    
    var rate:Int = 1;
    var win:Bool = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inital()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func indexChange(_ sender: UISegmentedControl) {
        switch segnumber.selectedSegmentIndex
        {
        case 0: //3
            lblReturnRate.text = "1 : 150";
            rate = 150
        case 1: //4
            lblReturnRate.text = "1 : 50";
            rate = 50
        case 2: //5
            lblReturnRate.text = "1 : 18";
            rate = 18
        case 3: //6
            lblReturnRate.text = "1 : 14";
            rate = 14
        case 4: //7
            lblReturnRate.text = "1 : 12";
            rate = 12
        case 5: //8
            lblReturnRate.text = "1 : 8";
            rate = 8
        case 6: //9
            lblReturnRate.text = "1 : 6";
            rate = 6
        case 7: //10
            lblReturnRate.text = "1 : 6";
            rate = 6
        case 8: //11
            lblReturnRate.text = "1 : 6";
            rate = 6
        case 9: //12
            lblReturnRate.text = "1 : 6";
            rate = 6
        case 10: //13
            lblReturnRate.text = "1 : 8";
            rate = 8
        case 11: //14
            lblReturnRate.text = "1 : 12";
            rate = 12
        case 12: //15
            lblReturnRate.text = "1 : 14";
            rate = 14
        case 13: //16
            lblReturnRate.text = "1 : 18";
            rate = 18
        case 14: //17
            lblReturnRate.text = "1 : 50";
            rate = 50
        case 15: //18
            lblReturnRate.text = "1 : 150";
            rate = 150
            
        default:
            break; 
        }
        
        
    }
   
    @IBAction func btngo(_ sender: Any) {
        imgno1.isHidden=false
        imgno2.isHidden=false
        imgno3.isHidden=false
        img1.isHidden=true
        img2.isHidden=true
        img3.isHidden=true
        btnstart.isHidden=false
        btngo.isHidden=true
        
        let selno = segnumber.selectedSegmentIndex + 3;
        let price = Int(txtSpend.text!);
        
        switch segBigSmall.selectedSegmentIndex
        {
        case 0: //大
            if selno >= 12
            {
                imgwin.isHidden=false
                imglose.isHidden=true
                win = true
            } else {
                
                imgwin.isHidden=true
                imglose.isHidden=false
                win = false
            }
        case 1: //小
            if selno <= 12
            {
                imgwin.isHidden=false
                imglose.isHidden=true
                win = true
                
            } else {
                imgwin.isHidden=true
                imglose.isHidden=false
                win = false
            }
        default:
            break; 
        }
        
        if win {
            let towin = price! * rate;
            lblwinprice.text = "\(towin)";
            
        }
        
    }
   

    @IBAction func btnstart(_ sender: Any) {
       inital()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func inital(){
        
        lblwinprice.text=""
        txtSpend.text=""
        imgwin.isHidden=true
        imglose.isHidden=true
        imgno1.isHidden=true
        imgno2.isHidden=true
        imgno3.isHidden=true
        img1.isHidden=false
        img2.isHidden=false
        img3.isHidden=false
        btnstart.isHidden=true
        btngo.isHidden=false
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
