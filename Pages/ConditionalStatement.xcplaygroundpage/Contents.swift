import Foundation

// conditional statement: 주어진 조건에 따라 다르게 동작

/*
 if 조건식 {
    실행할 구문
 }
 */

var age = 12

if age < 19 {
    print("미성년자입니다.")
}


/*
 if 조건식 {
    실행할 구문
 } else {
    만족하지 않으면 해당 구문 실행
 }
 */

age = 20

if age < 19 {
    print("미성년자입니다.")
} else {
    print("성인입니다.")
}


/*
 if 조건식1 {
    조건식1을 만족할 때 실행할 구문
 } else if 조건식2 {
    조건식2을 만족할 때 실행할 구문
 } else {
    아무 조건식도 만족하지 않을 때 해당 구문 실행
 }
 */

var animal = "dog"

if animal == "dog" {
    print("산책하기")
} else if animal == "cat" {
    print("사냥놀이")
} else {
    print("간식주기")
}

/*
 switch 비교대상 {
    case 패턴1:
  // 패턴1이 일치할 때 실행되는 구문
    case 패턴2, 패턴3:
 // 패턴2, 패턴3이 일치할 때 실행되는 구문
    default:
 // 어느 패턴도 일치하지 않을 때 실행되는 구문
 }
 */

var color = "red"

switch color {
case "blue":
    print("파란색입니다.")
case "green":
    print("초록색입니다.")
case "yellow":
    print("노란색 입니다.")
default:
    print("해당하는 색상이 없습니다.")
}


// 범위 연산자 사용
let temperature = 30

switch temperature {
case -20...9:
    print("겨울입니다.")
case 10...14:
    print("가을입니다.")
case 15...25:
    print("봄입니다.")
case 26...35:
    print("여름입니다.")
default:
    print("이상 기후입니다.")
}


