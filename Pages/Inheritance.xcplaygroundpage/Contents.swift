import Foundation

// Inheritance

// base class: 다른 클래스에서 상속받지 않은 클래스
// final -> class 상속 X, override X

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "travelling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        print("Speaker On")
    }
}


/*
 sub class
 class 클래스 이름: 부모클래스 이름 {
    // 하위 클래스 정의
 }
 */

class Bicycle: Vehicle {
    var hasBasket = false
}

var bicycle = Bicycle()
bicycle.currentSpeed
bicycle.currentSpeed = 15.0
bicycle.currentSpeed


// overriding: 슈퍼클래스로부터 상속받은 메서드, 프로퍼티를 변경
class Train: Vehicle {
    override func makeNoise() {
        // 슈퍼클래스의 특성을 서브클래스에서 사용하려면: super 사용
        super.makeNoise()
        
        print("choo choo")
    }
}

let train = Train()
train.makeNoise()


// Property Overriding
class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}

let car = Car()
car.currentSpeed = 30.0
car.gear = 2
print(car.description)


// 자식 클래스에서 재정의하는 프로퍼티는 슈퍼클래스 프로퍼티의 이름과 타입이 일치
class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10) + 1
        }
    }
}

let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("AutomaticCar: \(automatic.description)")
