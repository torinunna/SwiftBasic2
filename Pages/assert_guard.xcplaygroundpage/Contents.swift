import Foundation

// assert: 특정 조건을 체크하고 조건이 성립되지 않으면 메세지 출력, 디버깅 모드에서만 동작
var value = 0
assert(value == 0)
// 통과

//value = 2
//assert(value == 0, "값이 0이 아닙니다.")
    // 조건 성립 X -> error


/*
 guard: 주어진 조건문이 거짓일때 구문 실행
 guard 조건 else {
    // 조건이 false이면 else 구문 실행,
    // return / throw / break 를 통해 이 후 코드를 실행 X
 }
 */

func guardTest(value: Int) {
    guard value == 0 else { return }
    print("값은 0")
}

guardTest(value: 2)
guardTest(value: 0)


// guard를 이용한 optinal binding
func optionalBinding(value: Int?) {
    guard let value = value else { return }
    print(value)
}

optionalBinding(value: 2)
optionalBinding(value: nil)
