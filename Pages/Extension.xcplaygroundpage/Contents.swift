import Foundation

// extesnion: 기존의 클래스, 구조체, 열거형, 프로토콜에 새로운 기능 추가

/*
 extension SomeType {
    // 추가 기능
 }
 */

// 타입에 연산 프로퍼티 추가
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    
    var isOdd: Bool {
        return self % 2 == 1
    }
}

var number = 3
number.isOdd
number.isEven


extension String {
    func convertToInt() -> Int? {
        return Int(self)
    }
}

var string = "5"
string.convertToInt()
