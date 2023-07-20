import UIKit

// collection: 데이터들의 집합소

// Array: 데이터 타입의 값들을 순서대로 저장
// Array 선언1
var numbers: Array<Int> = Array<Int>()

// Array 선언2
var names = [String]()

// Array 선언3
var names2: [String] = []

// 데이터 삽입
numbers.append(1)
numbers.append(2)
numbers.append(3)

// array 접근
numbers[0]

// array 중간에 값 삽입
numbers.insert(4, at: 2)

// array 값 제거
numbers.remove(at: 0)
numbers


// Dictionary: 키(key)와 값(value)를 한 쌍으로 하여 순서없이 데이터를 저장
// Dictionary 생성1
var dic: Dictionary<String, Int> = Dictionary<String, Int>()

// Dictionary 선언2
var studentHeights: [String: Int] = [:]

// Dictionary 생성3
var capitals: [String: String] = ["대한민국": "서울"]

// 데이터 삽입
capitals["영국"] = "London"
capitals["프랑스"] = "Berlin"
capitals

// dictionary 값 변경
capitals["프랑스"] = "Paris"
capitals

// dictionary 값 제거
capitals.removeValue(forKey: "영국")
capitals


// Set: 같은 데이터 타입의 값을 순서없이 저장(중복 X)
// Set 선언(축약형 X)
var set: Set = Set<Int>()

// set 값 삽입
set.insert(10)
set.insert(20)
set.insert(30)
set.insert(30)
set

// set 값 제거
set.remove(20)
set
