import Foundation

// repeatitive statement: 반복적으로 코드가 실행되게 만드는 구문

// for-in: 미리 정의된 실행횟수만큼 반복
/*
 for 루프상수 in 순회대상 {
    // 실행할 구문
 }
 */



for i in 1...4 {
    print(i)
}

let arr = ["a", "b", "c", "d"]

for i in arr {
    print(i)
}


// while: 주어진 조건식이 false가 될 때까지 반복
/*
while 조건식 {
 // 실행할 구문
}
 */

var num = 4

while num < 10 {
    num += 1
}
num


// repeat-while: 블록 안의 코드를 1회 실행 후 조건식이 false가 될 때까지 반복
/*
 repeat {
  // 실행할 구문
 } while 조건식
 */

var x = 6

repeat {
    x += 2
} while x < 5

print(x)

x = 3
