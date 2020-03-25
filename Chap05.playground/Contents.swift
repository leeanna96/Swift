/*
 배열(Array) : 일련번호로 구분되는 순서에 따라 데이터가 정렬된 목록 형태의 자료형
 집합(Set) : 중복되지 않은 유일 데이터들이 모인 집합 형태의 자료형
 튜플(Tuple) : 종류에 상관없이 데이터들을 모은 자료형. 수정 및 삭제를 할 수 없음
 딕셔너리(Dictionary) : 배열과 유사하나 일련번호 대신 키(Key)를 사용하여 키-값으로 연관된 데이터를이 순서 없이 모인 자료형
 
 #파운데이션 프레임워크 : 라이브러리를 이용할 수 있고 다양한 객체와 자료형을 사용할 수 있음
 NSString : 문자열
 NSNumber : 숫자
 NSData : 인코딩된 데이터
 NSArray(수정 필요 없는 배열), NSMutableArray(수정 필요한 배열) : 배열
 // 스위프트에서 배열은 구조체로 정의, 파운데이션 프레임워크에서 배열은 클래스로 정의d
 
 * 배열
    배열에 저장할 아이템의 타입에는 제약X, 하나의 배열에 저장하는 아이템 타입은 모두 같아야 함
    선언 시 배열에 저장할 아이템 타입을 명확히 정의해야 함
    배열의 크기는 동적으로 확장할 수 있음
 
    [아이템1, 아이템2, 아이템3, ...]
 
 #리터럴 : 저장되는 값 자체
 
 var cities = ["Seoul", "New York", "LA", "Santiago"]
 
 cities[0]
 cities[1]
 cities[2]
 cities[3]
 
 let length = cities.count
 
 for i in 0..<length {
    print("\(i)번째 배열 원소 : \(cities[i])")
 }
 
 for row in cities {
    print("배열 원소 \(row)")
 }
 
 for row in cities {
    let index = cities.index(of: row)
    print("\(index!)번째 배열 원소 \(row)")
 }
 
 Array <아이템 타입> ()
 
 var cities = Array<String>()
 
 var cities : Array<String>
 cities = Array()
 
 [아이템 타입]()
 
 var cities = [String]()
 
 var cities : [String]
 cities = [String]()
 cities = []
 
 var cities : [String]
 cities = [String]()
 
 var country : [String]
 country = []
 
 var list : [Int] = []
 
 var rows : Array<Float> = [Float]()
 
 var tables : [String] = Array()
 
 vaf list = [String]()
 if list.isEmpty {
    print("비어있음")
 } else {
    print(\(list.count)")
 }
 
 * append(_:)
 * insert(_:at:)
 * append(contentsOf:)
 
 var cities = [String]()
 cities.append("Seoul")
 cities.append("New York")
 cities.append("Tokyo", at:1)
 cities.append(contentsOf: ["Dubai","Sydney"])
 
 var cities = [String]()
 cities.insert("Seoul", at:0)
 
 #초기화할 때 배열의 크기를 지정할 수 있는 구문
 extension Array : RangeReplaceableCollection {
    public init(repeating repeatedValue: Element, count: Int)
 }
 
 var cities = Array(repeating: "None", count: 3)
 var cities = [String](repeating: "None", count: 3)
 
 var alphabet = ["a", "b", "c", "d", "e"]
 alphabet[0...2]
 alphabet[2...3]
 alphabet[1..<3]
 
 * 집합
 var genres : Set = ["Classic", "Rock", "Balad"]
 
 var genres : Set<String> = ["Classic", "Rock", "Balac"]
 
 Set<아이템 타입>()
 
 var genres = Set<String>()
 genres.insert("Classic")
 genres.insert("Rock")
 genres.insert("Balad")
 
 if genres.isEmpty {
    print("비어있음")
 } else {
    print("\(genres.count)개")
 }
 
 for g in genres {
    print("\(g)")
 }
 
 for g in genres.sorted() {
    print("\(g)")
 }
 
 genres.insert("Jazz")
 genres.insert("Rock")
 genres.insert("Rock")
 
 if let removedItem = genres.remove("Rock"){
    print("\(removedItem)삭제")
 } else {
    print("값이 없음")
 }
 
 genres.removeAll()
 
 if genres.isEmpty{
    print("모든 아이템 삭제")
 } else {
    print("\(genres.count)개")
 }
 
 if genres.contains("Rock"){
    print("Rock 저장되어있음")
 } else {
    print("저장되어 있지 않음")
 }
 
 a.intersection(b) : 교집합
 a.symmetricDifference(b) : 어느 한쪽에만 있는 아이템, 공통으로 있는 아이템은 제외
 a.union(b) : 합집합
 a.subtract(b) : 차집합
 
 isSubset(of:) : 다른 집합의 부분집합인지 여부 판단
 isSupersett(of:) : 특정 집합의 모든 값을 포함하는지를 판단
 isStrictSubset(of:), isStrictSuperset(of:) : 부분집합, 상위집합
 isDisjoint(with:) : 집합 사이의 공통 값 확인
 
 let A : Set = [1,3,5,7,9]
 let B : Set = [3,5]
 let C : Set = [3,5]
 let D : Set = [2,4,6]
 
 B.isSubset(of: A) // true
 A.isSupersett(of: B) // true
 C.isStrictSubset(of: A) // true
 C.isStrictSubset(of: B) // false
 A.isDisjoing(with: D) // true
 
 var A = [4,2,5,1,7,4,9,11,3,5,4]
 
 let B = Set(A)
 A = Array(B)
 
 A = Array(Set(A))
 
 * 튜플
 (<튜플 아이템1>, <튜플 아이템2>, ...)
 
 let tupleValue = ("a", "b", 1, 2.5, true)
 
 tupleValue.0
 tupleValue.1
 tupleValue.2
 tupleValue.3
 tupleValue.4
 
 var tpl01 : (Int, Int) = (100, 200)
 var tpl02 : (Int, String, Int) = (100, "a", 200)
 var tpl03 : (Int, (String, String)) = (100, ("t", "v"))
 var tpl04 : (String) = ("sample string")
 
 let tupleValue:(String, Character, Int, Float, Bool) = ("a", "b", 1, 2.5, true)
 let (a,b,c,d,e) = tupleValue
 
 print(a)
 print(b)
 print(c+2)
 print(d*2)
 print(e)
 
 func getTupleValue() -> (String, String, Int) {
    return ("t", "v", 100)
 }
 
 let (a,b,c) = getTupleValue()
 
 let (a,b,_) = getTupleValue()
 //a->"t"
 //b->"v"
 
 * 딕셔너리
 [키:데이터, 키:데이터, ...]
 
 하나의 키는 하나의 데이터에만 연결
 키는 중복될 수 없음, 중복해서 선언하면 기존 키에 연결된 데이터가 제거
 하나의 딕셔너리에 저장하는 데이터 타입은 모두 일치해야 함
 아이템에는 순서가 없지만 키에는 내부적으로 순서가 있음(for~in구문 이용 순회탐색)
 키의 타입은 해시연산이 가능한 타입
 
 var capital = ["KR":"Seoul", "EN":"London", "FR":"Paris"]
 
 capital["KR"]
 capital["EN"]
 capital["FR"]
 
 Dictionary<키의 타입, 값의 타입>()
 
 Dictionary<String, Int>()
 Dictionary<String, String>()
 Dictionary<String, AnyObject>()
 Dictionary<Character, String>()
 
 [키로 사용할 타입:값으로 사용할 타입]()
 
 [String : Int]()
 [String : String]()
 [String : AnyObject]()
 [Character : String]()
 
 var capital = Dictionary<String, String>()
 var capital = [String : String]()
 
 var capital : Dictionary<String, String>
 capital = Dictionary()
 
 var capital : [String:String]
 capital = [String:String]()
 
 var capital : [String:String]
 capital = Dictionary<String, String>()
 capital = Dictionary()
 capital = [String:String]()
 capital = [:]
 
 var newCapital = [String:String]()
 newCapital["JP"] = "Tokyo"
 
 if newCapital.isEmpty{
    print("비어 있음")
 } else {
    print(\(newCapital.count)")
 }
 
 <딕셔너리 객체>.updateValue(<저장할 데이터>, forKey:<데이터를 참조 및 저장하는 데 사용할 키>)
 
 newCapital.updateValue("Seoul", forKey: "KR")
 newCapital.updateValue("London", forKey: "EN")
 newCapital.updateValue("Sapporo", forKey: "JP")
 
 newCapital.updateValue("Ottawa", forKey: "CA")
 newCapital.updateValue("Beijing", forKey: "CN")
 newCapital["CN"]=nil
 newCapital.removeValue(forKey: "CA")
 
 if let removedValue = newCapital.removeValue(forKey:"CA"){
    print("\(removedValue)")
 } else {
    print("아무 것도 삭제되지 않음")
 }
 
 Optional("Sapporo") // 오류 처리를 위해 애용되는 에러 캐치를 대신할 목적으로 도입한 개념, 아키텍처 차원의 안정성을 제공
 
 for row in newCapital {
    let (key, value) = row
    print("\(key):\(value)")
 }
 
 for (key, value) in newCapital {
    print(\(key) : \(value)")
 }
 
*/
