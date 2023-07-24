import Foundation

// try-catch: 프로그램 내에서 에러가 발생한 상황에 대해 대응하고 이를 복구하는 과정
// 발생(throwing) / 감지(catching) / 전파(propagating) / 조작(manipulating)

enum PhoneError: Error {
case unknown
case batteryLow(batteryLevel: Int)
}

//throw PhoneError.batteryLow(batteryLevel: 20)

func checkBattery(batteryLevel: Int) throws -> String {
    guard batteryLevel != -1 else { throw PhoneError.unknown }
    guard batteryLevel > 20 else { throw PhoneError.batteryLow(batteryLevel: 20)}
    return "배터리 상태가 정상입니다."
}

/*
 do {
 try 오류 발생 가능 코드
 } catch 오류 패턴 {
    처리 코드
 }
 */

do {
    try checkBattery(batteryLevel: 20)
} catch PhoneError.unknown {
    print("알 수 없는 에러입니다.")
} catch PhoneError.batteryLow(let batteryLevel) {
    print("배터리 부족: 남은 배터리 \(batteryLevel)%")
} catch {
    print("그 외 오류 발생: \(error)")
}

let status = try? checkBattery(batteryLevel: -1)
print(status)

let status2 = try! checkBattery(batteryLevel: 30)
print(status2)
