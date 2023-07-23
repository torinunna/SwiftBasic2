import Foundation

// Class vs Struct

// Class: 참조 타입 -> 복사본 = 원본
class SomeClass {
    var count: Int = 0
}

var class1 = SomeClass()
var class2 = class1
var class3 = class1

class3.count = 2

class1.count
class2.count
class3.count

// Struct: 값 타입 -> 복사본 != 원본
struct SomeStruct {
    var count: Int = 0
}

var struct1 = SomeStruct()
var struct2 = struct1
var struct3 = struct1

struct2.count = 3
struct3.count = 4

struct1.count
struct2.count
struct3.count
