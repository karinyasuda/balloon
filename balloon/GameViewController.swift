//
//  GameViewController.swift
//  balloon
//
//  Created by Karin on 2015/09/15.
//  Copyright (c) 2015年 Karin. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet var balloonimage : UIImageView!
    @IBOutlet var airinButton : UIButton!
    
    let image1:UIImage! = UIImage(named: "1.png")
    let image2:UIImage! = UIImage(named: "2.png")
    let image3:UIImage! = UIImage(named: "3.png")
    let image4:UIImage! = UIImage(named: "4.png")
    let image5:UIImage! = UIImage(named: "5.png")
    let image6:UIImage! = UIImage(named: "6.png")
    let image7:UIImage! = UIImage(named: "7.png")
    let image8:UIImage! = UIImage(named: "8.png")
    let image9:UIImage! = UIImage(named: "9.png")

    var imageArray :[UIImage] = []

    var number : Int = 0
    var imageView:UIImageView!
        override func viewDidLoad() {
        super.viewDidLoad()
            
        imageArray.append(image7)
        imageArray.append(image8)
        imageArray.append(image9)
        
        

        // Do any additional setup after loading the view.
    }
    @IBAction func airinbutton(_: AnyObject){
        number = number + 1
        
        if number<5{
        print("小さい")
            balloonimage.image = image1
        }
        else if number<10{
        print("少し大きくなる")
            balloonimage.image = image2
        }
        else if number<15{
        print("もう少し大きくなる")
            balloonimage.image = image3
        }
        else if number<20{
        print("もっと大きくなる")
            balloonimage.image = image4
        }
        else if number<25{
        print("結構おおきくなったねー")
            balloonimage.image = image5
        }
        else if number<30{
        print("そろそろやばいかな")
            balloonimage.image = image6
        }
        else if number>=30{
        print("破裂したーーー！！！")
            animate()
//            balloonimage.image
//            self.view.addSubview(imageView)
//            imageView.animationImages = imageArray
//            imageView.animationDuration = 0.5
//            imageView.startAnimating()
        }
        
        
        
    
    }
    func animate(){
////                    balloonimage.image
//                    self.view.addSubview(imageView)
        balloonimage.animationImages = imageArray
        balloonimage.animationDuration = 0.5
        balloonimage.startAnimating()
//        balloonimage.animationRepeatCount = 3
//        balloonimage.stopAnimating()
        

    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
