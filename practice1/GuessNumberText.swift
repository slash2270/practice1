////
////  File.swift
////  practice1
////
////  Created by user on 2022/9/12.
////
//
//import Foundation
//
//func guess(){
//    var finalNumber:Int? = 77
//    if let input = Int(textInput.text){
//        if labelChance > 0{
//            if input >= Int(labelMin.text!)! && input <= Int(labelMax.text!)!{
//                labelChance -= 1
//                if input == finalNumber{
//                    labelTitle.text = "完全正確";
//                }else{
//                    if labelChance == 0{
//                        labelTitle.text = "機會都用完瞜！公佈答案是\(finalNumber)";
//                    }else{
//                        if input > finalNumber{
//                            labelMax.text = "\(input)"
//                            labelTitle.text = "\(input)太大瞜！"
//                        }else if input < finalNumber{
//                            labelMin.text = "\(input)"
//                            labelTitle.text = "\(input)太小瞜！"
//                        }
//                        textInput.text = nil}
//                    }
//            }else{
//                labelTitle.text = "請輸入範圍內的數字！";
//            }
//        }else{
//            labelTitle.text = "";
//        }
//    }
//}
