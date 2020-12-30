//
//  main.swift
//  UnitConverter
//
//  Created by 심영민 on 2020/12/29.
//

import Foundation

let inch_tocm: Float = 2.54
let yard_tocm: Float = 91.44
// 1인치=2.54cm=0.0245m
func inchToCm(inch: Float) -> Float{
    let cm = inch_tocm * inch
    print("\(inch)인치 = \(cm)cm")
    return cm
}

func inchToM(inch: Float) -> Float {
    let meter = (inch_tocm/100) * inch
    print("\(inch)인치 = \(meter)m")
    return meter
}

func cmToInch(cm: Float) -> Float {
    let inch = cm / inch_tocm
    print("\(cm)cm = \(inch)인치")
    return inch
}

func cmToMeter(cm: Float) -> Float {
    let meter = cm / 100
    print("\(cm)cm = \(meter)m")
    return meter
}

func meterToCm(m: Float) -> Float {
    let cm = m * 100
    print("\(m)m = \(cm)cm")
    return cm
}

func cmToYard(cm: Float) -> Float {
    let yard = cm / yard_tocm
    print("\(cm)cm = \(yard)yard")
    return yard
}

func yardToCm(yard: Float) -> Float {
    let cm = yard * yard_tocm
    print("\(yard)yard = \(cm)cm")
    return cm
}

var inch:Float = 100
var isContinue: Bool = true
while isContinue {
    print("입력 : ")
    //readLine의 반환형은 String? 이므로 옵셔널 바인딩을 해줘야 한다.
    let inputValue = readLine()
    var str: String = ""
    if let a = inputValue{
        str = a
    }
    if str == "quit" || str == "q" {
        break
    }

    // 사용자로부터 입력받은 문자열을 공백을 기준으로 배열에 나누어 저장
    var ary = str.components(separatedBy: " ")

    let startIndex: Int = ary.startIndex
    let endIndex: Int = ary.index(before: ary.endIndex)
    let count: Int = endIndex-startIndex
    var letter: String=""
    // 배열의 첫번째 index로 부터 숫자와 문자를 구분해냄
    for i in ary[startIndex]{
        if(i.isLetter) {
            letter.append(i)
        }
    }
    let num: Float = (ary[startIndex] as NSString).floatValue
    ary[startIndex] = letter
    var temp: Float = 0

    if(count==0){
        switch ary[startIndex] {
        case "cm":
            temp = cmToMeter(cm: num)
        case "m":
            temp = meterToCm(m: num)
        case "inch":
            temp = inchToCm(inch: num)
        case "yard":
            temp = yardToCm(yard: num)
        default :
            print("잘못된 단위입니다.")
        }
    }else{
        switch ary[startIndex] {
        case "cm":
            temp = num
        case "m":
            temp = meterToCm(m: num)
        case "inch":
            temp = inchToCm(inch: num)
        case "yard":
            temp = yardToCm(yard: num)
        default :
            print("지원하지 않는 단위입니다.")
        }
        switch ary[endIndex] {
        case "m":
            cmToMeter(cm: temp)
        case "inch":
            cmToInch(cm: temp)
        case "yard":
            cmToYard(cm: temp)
        default:
            print("지원하지 않는 단위입니다.")
        }
    }
}
print("프로그램이 종료 됩니다.")



