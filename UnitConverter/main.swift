//
//  main.swift
//  UnitConverter
//
//  Created by 심영민 on 2020/12/29.
//

import Foundation

let inch_tocm: Float = 2.54
// 1인치=2.54cm=0.0245m
func inchToCm(inch: Float) {
    let cm = inch_tocm * inch
    print("\(inch)인치 = \(cm)cm")
}

func inchToM(inch: Float) {
    let meter = (inch_tocm/100) * inch
    print("\(inch)인치 = \(meter)m")
}

func cmToInch(cm: Float) {
    let inch = cm / inch_tocm
    print("\(cm)cm = \(inch)인치")
}

func cmToMeter(cm: Float) {
    let meter = cm / 100
    print("\(cm)cm = \(meter)m")
}

func meterToCm(m: Float) {
    let cm = m * 100
    print("\(m)m = \(cm)cm")
}

var inch:Float = 100
inchToCm(inch: inch)
inchToM(inch: inch)
cmToInch(cm: inch)
cmToMeter(cm: inch)

//readLine의 반환형은 String? 이므로 옵셔널 바인딩을 해줘야 한다.
let inputValue = readLine()
var str: String = ""
var substr: String = ""
if let a = inputValue{
    str = a
    for i in a{
        if(i.isNumber){
            substr.append(i)
        }
    }
}

var x: Float = (str as NSString).floatValue
if str.contains("cm") {
    cmToMeter(cm: x)
} else if str.contains("m"){
    meterToCm(m: x)
}

