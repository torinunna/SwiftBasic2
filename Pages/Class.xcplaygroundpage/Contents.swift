import Foundation

/*
 class 정의
 class 클래스 이름 {
   property / method
 }
 */

class Dog {
    var name: String = ""
    var age: Int = 0
    
//    생성자
    init() {
    }
    
    func introduce() {
        print("\(name) - \(age)")
    }
}

// class 사용: instance 생성
var dog = Dog()

// property 값 변경
dog.name = "Coco"
dog.age = 5
dog.name
dog.age

// method 호출
dog.introduce()
