import Foundation

// optional chaining: 옵셔널에 속해 있는 nil일지도 모르는 프로퍼티, 메서드, 서브스크립션 등을 가져오거나 호출할 때 사용

struct Developer {
    let name: String
}

struct Company {
    let name: String
    var developer: Developer?
}

var company = Company(name: "Apple", developer: nil)
print(company.developer)

var developer = Developer(name: "Tori")
var company2 = Company(name: "Samsung", developer: developer)
print(company2.developer)
print(company2.developer?.name)
print(company2.developer!.name)
