import Foundation

// closure: 코드에서 전달 및 사용할 수 있는 독립 기능 블록

/*
{ (매개변수) -> 리턴 타입 in
    실행 구문
}
*/

let hello = { () -> () in
    print("Hello1")
}

hello()

let hello2 = { (name: String) -> String in
    return "Hello, \(name)"
}

// 전달인자 레이블 X
hello2("Tori")


// 파라미터 타입으로 클로저 전달
func doSomething(closure: () -> ()) {
    closure()
}

doSomething(closure: { () -> () in
    print("hello2")
})

// 후행 클로저: 마지막 매개변수에만 가능
doSomething() {
    print("hello3")
}

// 하나의 클로저만 매개변수로 전달
doSomething {
    print("hello3")
}

// 매개변수에 클로저 여러개 -> 다중후행클로저
func doSomething2(success: () -> (), fail: () -> ()) {
}

doSomething2 {
    <#code#>
} fail: {
    <#code#>
}


// 반환 타입으로 클로저 사용
func doSomething3() -> () -> () {
    return { () -> () in
        print("hello4")
    }
}

doSomething3()()


// 간소화
func doSomething4(closure: (Int, Int, Int) -> Int) {
    closure(1, 2, 3)
}

doSomething4(closure: { (a, b, c) in
    return a + b + c
})

doSomething4(closure: {
//    약식 인수 -> 매개변수 대체
    return $0 + $1 + $2
})

doSomething4(closure: {
     $0 + $1 + $2
})

doSomething4() {
    $0 + $1 + $2
}

doSomething4 {
    $0 + $1 + $2
}
