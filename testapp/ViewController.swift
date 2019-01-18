//
//  ViewController.swift
//  testapp
//
//  Created by 後藤宗一朗 on 2018/04/26.
//  Copyright © 2018年 後藤宗一朗. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var textView: [UITextView]!
    
    @IBAction func ButtonTotchDown(_ sender: Any) {
        Label1.text = "Button Tap Down!";
    }
    
    @IBOutlet weak var Label1: UILabel!
    
 
    @IBOutlet weak var Swip_Zone: UIView!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet var pan1: UIPanGestureRecognizer!
    
    @IBOutlet var tap: UITapGestureRecognizer!
    
    @IBOutlet var pan2: UIPanGestureRecognizer!
    
    @IBAction func pantest(_ sender: UIPanGestureRecognizer) {
//        text = ""
//        label2.text = text;
    }
    
 
    var startPoint:CGPoint!
    var endPoint:CGPoint!

    @IBAction func panLabel(_ sender: UIPanGestureRecognizer) {
        let state = sender.state
        // 移動距離
        let translation = sender.translation(in: self.view)
        print("state=\(state.rawValue) translation=\(translation)")
        if state == .began {
            // タップ開始位置
            let tapPoint = sender.location(in: self.view)
            print("tapPoint=\(tapPoint)")
            // label の開始位置の中心座標
            startPoint = label2!.center
            print("startPoint=\(startPoint)")
        }
        //ドラッグした部品の座標に移動量を加算する。
        sender.view!.center.x = startPoint.x + translation.x
        sender.view!.center.y = startPoint.y + translation.y
        if state == .ended {
            endPoint = sender.view!.center
            print("lastPoint=\(endPoint)")
        }
        let strx = "sender.view!.center.x"
        let stry = "sender.view!.center.y"
        print("%@", strx);
        print("%@", stry);
    
    }

   
    @IBAction func tapString(_ sender: UITapGestureRecognizer) {
        // タップ位置の取得
        let tapPoint = sender.location(in: self.view)
        print("tapPoint=\(tapPoint)")
        UITextView.text = "abc"
//        if let detectWord = getString(tapPoint)
//        {
//
//        }
      //  let textPosition = textView.closestPosition(to: tapPoint)

//    // ポイント位置のテキスト位置からのテキスト内の位置を取得
//    //get location in text from textposition at point
//        UITextPosition tapPosition = [textView closestPositionToPoint:position];
//
//    //fetch the word at this position (or nil, if not available)
//    //この位置にある単語を取得します（利用できない場合はnil）
//        UITextRange textRange = [textView.tokenizer rangeEnclosingPosition:tapPosition withGranularity:UITextGranularityWord inDirection:UITextLayoutDirectionRight];
//        NSString *tappedSentence = [textView textInRange:textRange];
//        //[self lineAtPosition:CGPointMake(location.x, location.y)];
//        print("selected :%@ -- %@",tappedSentence,tapPosition);
    }
    
//    func getString(_ point: CGPoint) -> String{
//        if let textPosition = textView.closestPoint(to: point)
//        {
//            if let range = textView.tokenizer.rangeEnclosingPosition(textPosition, with: .word, inDirection: 1)
//            {
//                return textView.text(in: range)
//            }
//        }
//    return nil}

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}

