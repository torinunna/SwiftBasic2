import Foundation

// enum: 연관성이 있는 값을 모아놓은 것

enum CompassPoint: String {
    //    case north, south, east, west
    case north
    case south
    case east
    case west
}

var direction = CompassPoint.east
direction = .north

switch direction {
case .north:
    print("north")
case .south:
    print("south")
case .east:
    print("east")
case .west:
    print("west")
}


// 원시값
enum CompassPoint2: String {
    case north = "북"
    case south = "남"
    case east = "동"
    case west = "서"
}

switch direction2 {
case .north:
    print(direction2.rawValue)
case .south:
    print(direction2.rawValue)
case .east:
    print(direction2.rawValue)
case .west:
    print(direction2.rawValue)
}

var direction2 = CompassPoint2.east


// 원시값으로 열거형 반환
let direction3 = CompassPoint2(rawValue: "남")


// 열거형의 연관값
enum PhoneError {
    case unknown
    case battertyLow(String)
}

let error = PhoneError.battertyLow("배터리 부족")

// 연관값 추출
switch error {
case .battertyLow(let message):
    print(message)
    
case .unknown:
    print("알 수 없는 에러입니다.")
}
