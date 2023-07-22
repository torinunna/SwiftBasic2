import Foundation

/*
struct 정의
struct 구조체 이름 {
 property / method
 }
 */

struct User {
    var nickname: String
    var age: Int
    
    func information() {
        print("\(nickname) - \(age)")
    }
}

// struct 사용: instance 생성
var user = User(nickname: "user01", age: 23)
user.nickname

// property 값 변경
user.nickname = "user02"
user.nickname

// method 호출
user.information()

