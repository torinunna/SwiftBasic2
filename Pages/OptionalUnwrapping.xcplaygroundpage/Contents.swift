import Foundation

// 명시적 해제: 강제적 해제 / 비강제 해제
// 묵시적 해제: 컴파일러/연산자에 의한 자동 해제

var number: Int? = 3
print(number)

// 강제적 해제 !
print(number!)


// 비강제 해제1: if
if let result = number {
    print(result)
} else {
//    값 추출에 실패했을 때 실행할 구문
}

// 비강제 해제2: guard
func test() {
    let number: Int? = 5
    guard let result = number else { return }
    print(result)
}

test()


// 비교 연산자에 의한 해제
let value: Int? = 6
if value == 6 {
    print("value는 6입니다.")
} else {
    print("value는 6이 아닙니다.")
}

// 옵셔널 변수의 타입 선언시 묵시적 해제 선언 !
let string = "12"
var stringToInt: Int! = Int(string)
print(stringToInt + 1)
