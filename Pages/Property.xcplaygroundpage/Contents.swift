import Foundation

// Property: 클래스, 구조체 또는 열거형 등에 관련된 값
// 저장 / 연산 / 타입 프로퍼티

// 저장 프로퍼티
struct Dog {
    var name: String
    let gender: String
}

var dog = Dog(name: "Tori", gender: "male")
print(dog)

dog.name = "Hodu"
print(dog)

// 프로퍼티가 변수로 선언되어있어도 인스턴스가 상수라면 변경 불가
// 구조체 -> 값(value) 타입
let dog2 = Dog(name: "Ultra", gender: "male")
    // dog2.name = "Voltron" -> error

class Cat {
    var name: String
    let gender: String
    
    init(name: String, gender: String) {
        self.name = name
        self.gender = gender
    }
}


// 프로퍼티가 변수로 선언되어있다면 인스턴스가 상수여도 변경 가능
// 클래스 -> 참조(reference) 타입
let cat = Cat(name: "Bebe", gender: "male")
cat.name = "Bori"
print(cat.name)


// 연산 프로퍼티: 값을 연산하고 프로퍼티에 전달
struct Stock {
    var averagePrice: Int
    var quantity: Int
    var purchagePrice: Int {
        get {
            return averagePrice * quantity
        }
        
// set 없이 get만 구현 -> 읽기전용 프로퍼티 -> 값 변경 X
/*
 매개변수 X -> default값 newvalue로 사용
    set {
        averagePrice = newValue / quantity
    }
 */
        set(newPrice) {
            averagePrice = newPrice / quantity
        }
    }
}

var stock = Stock(averagePrice: 2300, quantity: 3)
print(stock)
stock.purchagePrice
stock.purchagePrice = 3000
stock.averagePrice


// Property Observer: 프로퍼티 값의 변화 관찰/반영 -> 값이 기존과 같아도 호출(property가 set될 때마다 호출)
// 저장 프로퍼티와 overriding 된 저장/연산 프로퍼티에서만 사용 가능

class Account {
    var credit: Int = 0 {
//        값이 저장되기 직전에 호출
        willSet {
            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
        }
        
//        값이 저장된 직후에 호출
        didSet {
            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
        }
    }
}

var account = Account()
account.credit = 1000
account.credit = 2000


// 타입 프로퍼티: 인스턴스 생성 없이 static 키워드를 사용하여 객체 내의 프로퍼티에 접근 가능
struct SomeStructure {
//    저장(stored)
    static var storedTypeProperty = "Some value."
    
//    연산(computed)
    static var computedTypeProperty: Int {
        return 1
    }
}

SomeStructure.storedTypeProperty
SomeStructure.computedTypeProperty
SomeStructure.storedTypeProperty = "hello"
SomeStructure.storedTypeProperty
