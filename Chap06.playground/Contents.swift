/*
 *옵셔널 타입 : nil을 사용할 수 있는 타입과 사용할 수 없는 타입을 구분하고, 사용할 수 있는 타입을 가리킴
 
 let capital = ["KR":"Seoul", "CN":"Beijing", "JP":"Tokyo"]
 capital["ko"] // nil
 
 옵셔널 타입만 nil을 반환할 수 있음
 
 언젠가 오류가 발생할 수 있는 가능성이 아주 조금이라도 있다면 모두 옵셔널 타입으로 정의해야 함
 
 let num = Int("123")
 let num = Int("Swift") // 일반 문자열은 숫자로 변환할 수 없음 // nil 반환
 
 언어의 안정성을 위해 가급적 오류를 발생시키지 않으려고 하는데 이런 상황에서 실패를 의미하면서도 오류를 던지는 것이 아닌 값이 필요했음. -> "값이 없음"을 뜻하는 nil
 
 기본 자료형들은 그에 대응하는 옵셔널 타입이 존재
 정수 타입을 옵셔널 타입으로 변경하면 Optional Int
 문자열을 옵셔널 타입으로 바꾸면 Optional String
 
 옵셔널 타입이 실제로 가질 수 있는 값의 종류는 오직 두 가지
 -> nil이 아닌 값(옵셔널 객체로 감싸진 결과값이 반환) // 오류가 발생하지 않았을 시
 -> nil 값 // 오류 발생 시
 
 #옵셔널 타입이란 반환하고자 하는 값을 옵셔널 객체로 다시 한 번 감싼 형태#
 
 옵셔널 래핑
 옵셔널 언래핑 : 옵셔널 타입을 해제하고 실제 값을 추출하여 사용
 
 * 옵셔널 타입 선언과 정의
 var optInt : Int?
 var optStr : String?
 var optDouble : Double?
 var optArr : [String]?
 var optDic : Dictionary<String, String>?
 var optDic2 : [String:String]?
 var optClass : AnyObject?
 
 var optInt: Int?
 optInt = 3
 
 var optStr: String?
 optStr = "Swift"
 
 var optArr : [String]?"
 optArr = ["C", "JAVA", "Objective-C", "SmallTalk"]
 
 var optDic: [String, Int]?
 optDic = ["국어":94, "수학":88, "영어":96]
 옵셔널 타입으로 자료형을 선언하면 자동으로 nil로 초기화
 값을 대입할 때에는 옵셔널이 아닌 일반 변수처럼 생각하고 다루어도 무방
 
 * 옵셔널 값 처리
 extension Int {
    public init?(_ text: String, radix: Int = default)
 }
 
 옵셔널 타입은 연산을 지원하지 않는 타입
 : 옵셔널 타입과 일반 타입은 서로 연산할 수 없으며 옵셔널 타입끼리의 연산이나 결합도 지원하지 않음

 Int("123")+Int("123") // X
 Int("123")+30 // X
 
 옵셔널 해제 방법
    1. 명시적 해제
        1) 강제 해제
        2) 비강제 해제
    2. 묵시적 해제
        1) 컴파일러에 의한 자동 해제
        2) !연산자를 사용한 자동 해제
 
 옵셔널 강제 해제
 : 옵셔널 타입의 값 뒤에 ! 기호를 붙임. "!" 기호를 가리켜 옵셔널에 대한 '강제 해제 연산자'라고 함
 var optInt: Int? = 3
 print("옵셔널 자체의 값: \(optInt)") // Optional(3)
 print("!로 강제 해제한 값: \(optInt!)") // 3
 
 Int("123")! + Int("123")! // 246
 Int("123")! + 30 // 153
 
 var str = "123"
 var intFromStr = Int(str)
 
 if intFromStr != nil {
    print("\(intFromStr!)")
 } else {
    print("값 변환 실패")
 }
 
 var str = "Swift"
 var intFromStr = Int(str)
 
 if intFromStr != nil {
    print("\(intFromStr!)")
 } else {
    print("값 변환 실패")
 }
 
 옵셔널 바인딩
 : 조건문 내에서 일반 상수에 옵셔널 값을 대입하는 방식
 
 var str = "Swift"
 if let intFromStr = Int(str) {
    print("\(intFromStr)")
 } else {
    print("값 변환 실패")
 }
 
 func intStr(str: String) {
    guard let intFromStr = Int(str) else{
        print("값 변환 실패")
        return
    }
    print("\(intFromStr)")
 }
 
 var capital = ["KR":"Seoul", "EN":"London", "FR":"Paris"]
 print(capital["KR"]) // Optional("Seoul")
 print(capital["KR"]!) // Seoul
 
 if (capital["KR"] != nil) {
    print(capital["KR"]!)
 }
 if let val = capital["KR"]{
    print(val)
 }
 
 옵셔널 자동 해제
 let optInt = Int("123")
 if((optInt!)==123) {
    print("optInt == 123") // 출력
 } else {
    print("optInt != 123")
 }
 
 if (optInt == 123) {
    print("optInt == 123") // 출력
 } else {
    print("optInt != 123")
 }
 
 let tempInt = Int("123")
 
 tempInt == 123 // true
 tempInt == Optional(123) // true
 tempInt! == 123 // true
 tempInt! == Optional(123) // true
 
 var optValue01 = Optional(123)
 var optValue02 : Int? = 123
 
 옵셔널 묵시적 해제
 var str: String? = "Swift Optional"
 print(str) // Optional("Swift Optional")
 
 var str: String! = "Swift Optional"
 print(str) // Swift Optional
 
 var str: String! = nil
 
 var value01: Int? = 10
 value01 + 5 // 오류
 
 var value02: Int! = 10
 value02 + 5 // 15
 
 묵시적 해제를 선언한 옵셔널은 일반 타입처럼 사용할 수 있기 때문에 굉장히 편리하게 사용할 수 있음
 
 #변수의 값이 nil이 될 가능성이 있다면 묵시적 옵셔널 해제를 사용하지 않아야 한다#
 -> 형식상 옵셔널로 정의해야 하지만, 실제로 사용할 때에는 절대 nil 값이 대입될 가능성이 없는 변수일 때
 -> 유용하게 사용되는 경우 : 클래스 또는 구조체
 -> 멤버 변수를 정의할 때 선언과 초기화를 분리시켜야 하는 경우 해당
 
 var value: Int! = Int("123")
 
 옵셔널 체인 : 코드의 간결성
 * Objective-C 코드
 if (myDelegate != nil) {
    if([myDelegate respondsToSelector:@selector(scrollViewDidScroll:)]) {
        [myDelegate scrollViewDidScroll:myScrollView];
    }
 }
 * Swift 코드
 myDelegate?.scrollViewDidScroll?(myScrollView)
 
 */
