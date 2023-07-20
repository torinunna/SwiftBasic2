import Foundation

// function: 작업의 가장 작은 단위, 코드의 집합

/*
 function 정의
 func 함수명(파라미터 이름: 데이터 타입) -> 반환 타입 {
     return 반환 값
 }
*/

// 매개변수, 반환값 O 함수 선언
func sum(a: Int, b: Int) -> Int {
    return a+b
}
sum(a: 2, b: 5)

// 매개변수 X, 반환값 O 함수 선언
func hello() -> String {
    return "hello"
}
hello()

// 매개변수 기본값, 반환값 X 함수 선언
// Void/생략
func greeting(friend: String, me: String = "Dean") -> Void {
    print("Hello, \(friend)! I'm \(me)")
}
greeting(friend: "Jason")


// 전달 인자 레이블
/*
 func 함수 이름(전달인자레이블 매개변수이름: 매개변수타입, 전달인자레이블 매개변수이름: 매개변수타입...) -> 반환 타입 {
 return 반환 값
 }
 */

func sendMessage(from myName: String, to name: String) -> String {
    return "Hello, \(name)! I'm \(myName)"
}
sendMessage(from: "Jane", to: "Hannah")

// 전달인자 대신 와일드카드 식별자
func introduce(_ country: String) -> String {
    return "I'm from \(country)"
}
introduce("Korea")


// 가변매개변수: 함수마다 하나씩, 파라미터 마지막에 선언
func sayHi(me: String, friends: String...) -> String {
    return "Hello \(friends), I'm \(me)"
}
sayHi(me: "Oli", friends: "Jamie", "David", "Ella")

func printNumbers(_ numbers: Int...) {
    for number in numbers {
        print(number)
    }
}
printNumbers(0, 1, 2, 3, 4, 5)
