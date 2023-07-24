import Foundation

// Protocol: 특정 역할을 하기 위한 메서드, 프로퍼티, 기타 요구사항 등의 청사진

/*
 protocol 이름 {
    // 요구사항 정의
 }
 */


// protocol 채택
protocol SomeProtocol {
    
}

protocol SomeProtocol2 {
    
}

struct SomeStruct: SomeProtocol, SomeProtocol2 {
    
}

/*
 슈퍼클래스 다음 프로토콜 나열
 class someClass: SomeSuperClass, FirstProtocol, SecondProtocol {
 
 }
 */

// 프로퍼티 요구사항
protocol FirstProtocol {
    // 읽기/쓰기
    var name: Int { get set }
    // 읽기 전용
    var age: Int { get }
}

protocol AnotherProtocol {
    // 타입프로퍼티
    static var someTypeProperty: Int { get set }
}


// 메서드 요구사항: 매개변수 정의(default값 x)
protocol SomeProtocol3 {
    func someTypeMethod()
}

// initializer 요구사항: 키워드와 매개변수 정의
protocol SomeProtocol4 {
    init(someParameter: Int)
}

protocol SomeProtocol5 {
    init()
}

// class에서 채택시 required 필요(구조체는 필요 X)
class SomeClass: SomeProtocol5 {
    required init() {
    }
}


// 프로토콜 채택
protocol FullyNames {
    var fullName: String { get set }
    func printFullName()
}

struct Person: FullyNames {
    var fullName: String
    
    func printFullName() {
        print(fullName)
    }
}



