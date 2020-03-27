/*
 함수(Function) : 프로그램의 실행 과정 중에서 독립적으로 처리될 수 있는 부분을 분리하여 구조화한 객체를 의미
 * 동일한 코드가 여러 곳에서 사용될 때 이를 함수화하면 재작성할 필요 없이 함수 호출만으로 처리
 * 전체 프로세스를 하나의 소스 코드에서 연속적으로 작성하는 것보다 기능 단위로 함수화하면 가독성이 좋아지고, 코드와 로직을 이해하기 쉬움
 * 비즈니스 로직을 변경해야 할 때 함수 내부만 수정하면 되므로 유지보수가 용이
 
 func 함수이름(매개변수1: 타입, 매개변수2: 타입, ...) -> 반환타입 {
    실행내용
    return 반환값
 }
 
 매개변수, 파라미터(Parameter) : 함수가 호출될 때 전달되는 입력값을 대입 받기 위한 변수의 이름과 타입이 정의됨
 
 func 함수명( ) -> 반환 타입 {
    실행 내용
    return 반환값
 }
 
 매개변수가 없더라도 괄호는 생략할 수 없음
 
 func 함수명 (매개변수1: 타입, 매개변수2: 타입, ...) { // 반환값이 없는 함수, 반환 타입 생략
    실행 내용
 }
 
 func printHello() {
    print("안녕하세요")
 }
 
 func sayHello() -> String{
    let returnValue = "안녕하세요"
    return returnValue
 }
 
 func printHelloWithName(name: String) {
    print("\(name)님, 안녕하세요")
 }
 
 func sayHelloWithName(name: String) -> String{
    let returnValue = "\(name)님, 안녕하세요"
    return returnValue
 }
 
 func hello(name: String?) {
    guard let _name = name else{
        return // 함수의 실행을 명시적으로 종료할 목적으로 사용
    }
    print("\(name)님, 안녕하세요")
 }
 
 * 함수의 호출
 printHello()
 
 let inputName = "홍길동"
 printtHelloWithName(name: inputName)
 
 #Objective-C#
 // 정의 // 매개변수가 없는 메소드
 - (void) incrementBy {
 }
 // 호출
 [대상 객체 incrementBy]

 //정의 // 매개변수 추가
 - (void) incrementBy:(NSInteger) amount {
 }
 // 호출
 [incrementBy:3]
 
 // 정의 // 매개변수 2개
 - (void) incrementBy:(NSInteger) amount numberOfTimes:(NSInteger) times{
 }
 //호출
 [incrementBy:3 numberOfTimes:2]
 
 // 아래 두 메소드는 서로 다른 메소드
 (void)incrementBy:(NSInteger) amount numberOfTimes:(NSInteger) times
 (void)incrementBy:(NSInteger) amountt numbers:(NSInteger) times
 
 매개변수가 없을 때 incrementBy
 매개변수가 하나일 때 incrementBy:
 매개변수가 두 개일 때 incrementBy:numberOfTimes:
 #Objective-C#
 
 incrementBy(amount: 5, numberOfTimes: 2)
 
 함수에는 선택적으로 인자 레이블을 지정할 수 있다. 함수를 호출할 때에는 인자 레이블을 지정한 함수만 인자 레이블을 붙여 주면 된다. 단, 메소드에서는 호출 시 반드시 인자 레이블을 사용해야 한다.
 
 func times(x: Int, y: Int) -> Int {
    return (x * y)
 }
 times(x: 5, y: 10) // 함수의 이름만으로 호출한 구문
 times(x:y:) (5,10) // 함수의 식별자를 사용하여 호출한 구문
 
 * 함수의 반환값과 튜플
 func getIndvInfo() -> (Int, String) {
    let height = 180
    let name = "꼼꼼한 재은씨"
    
    return (height, name)
 }
 
 func getUserInfo() -> (Int, Character, String) {
    let gender: Character = "M"
    let height = 180
    let name = "꼼꼼한 재은씨"
 
    return (height, gender, name)
 }
 
 var uInfo = getUserInfo()
 uInfo.0 // 180
 uInfo.1 // "M"
 uInfo.2 // "꼼꼼한 재은씨"
 
 var (a,b,c) = getUserInfo()
 a // 180
 b // "M"
 c // "꼼꼼한 재은씨"
 
 var (height, _, name) = getUserInfo()
 
 func getUserInfo() -> (h: height, g: Character, n: String) {
    let gender: Character = "M"
    let height = 180
    let name = "꼼꼼한 재은씨"
 
    return (height, gender, name)
 }
 
 var result = getUserInfo()
 
 result.h // 180
 result.g // "M"
 result.n // "꼼꼼한 재은씨"
 
 typealias <새로운 타입 이름> = <타입 표현>
 
 typealias infoResult = (Int, Character, String)
 
 func getUserInfo() -> infoResult {
    let gender: Character = "M"
    let height = 180
    let name = "꼼꼼한 재은씨"
 
    return (height, gender, name)
 }
 
 let info = getUserInfo()
 info.0 // 180
 info.1 // "M"
 info.2 // "꼼꼼한 재은씨"
 
 typealias infoResult = (h: Int, g: Character, n: String)
 ...
 let info = getUserInfo()
 info.h // 180
 info.g // "M"
 info.n // "꼼꼼한 재은씨"

 * 매개변수
 함수의 매개변수
    내부 매개변수 : 함수가 내부적으로 인자값을 참조하기 위해 사용하는 변수
    외부 매개변수 : 함수 외부에서 함수나 인자값을 구분하기 위해 사용하는 변수
 
 func 함수 이름(<외부 매개변수명><내부 매개변수명>:<타입>, <외부 매개변수명><내부 매개변수명>:<타입>...) {
    // 함수의 내용이 작성되는 곳
 }
 
 func printHello(name: String, msg: String) {
    print("\(name)님, \(msg)")
 }
 
 printHello(name:"홍길동", msg:"안녕하세요")
 
 func printHello(to name: String, welcomeMEssage msg: String) {
    print("\(name)님, \(msg)")
 }
 
 printHello(to: "홍길동", welcomeMessage: "안녕하세요")
 
 func printHello(name: String, msg: String){
    print("\(name)님, \(msg)")
 }
 // 함수 이름 : printHello(name:msg:)
 
 func printHello(to name: String, msg: String) {
    print("\(name)님, \(msg)")
 }
 // 함수 이름 : printHello(to:msg:)
 
 func printHello(to name: String, welcomeMessage msg: String) {
    print("\(name)님, \(msg)")
 }
 // 함수 이름 : printHello(to:welcomeMessage:)
 
 func printHello(_ name: String, _ msg: String) { // _는 문법은 적용하되 사용하지 않는다, 생략하겠다 라는 의미
    print("\(name)님, \(msg)")
 }
 printHello("홍길동", "안녕하세요")
 
 func printHello(_ name: String, _ msg: String) { ... }
 // 함수명 printHello(_:_:)
 
 func printHello(to name: String, _ msg: String) { ... }
 // 함수명 printHello(to:_:)
 
 func printHello(_ name: String, welcomeMessage msg: String) { ... }
 // 함수명 printHello(_:welcomeMessage:)
 
 * 가변 인자
 func 함수 이름(매개변수명 : 매개변수 타입 ...)
 
 func avg(score: Int...) -> Double {
    var total = 0
    for r in score {
        total += r
    }
    return (Double(total) / Double(score.count))
 }
 print(avg(score: 10,20,30,40))
 
 * 기본값을 갖는 매개변수
 func 함수 이름(매개변수: 매개변수 타입 = 기본값) {
    실행할 내용
 }
 
 func echo(message: String, newline: Bool = true) {
    if newline == true {
        print(message, true)
    } else {
        print(message, false)
    }
 }
 
 // 아래 두 개의 구문은 같은 결과를 나타냄
 echo(message: "안녕하세요")
 echo(message: "안녕하세요", newline: true)
 
 * 매개변수의 수정
 func incrementBy(base: Int) -> Int {
    base += 1
    return base
 }
 
 함수의 인자값은 함수 내부에서 변수가 아니라 상수임에 주의
 #함수에 입력된 인자값은 함수 내부에서 항상 상수로 정의됨#
 
 func incrementBy(base: Int) -> Int{
    var base = base
    base += 1
    return base
 }
 
 func descAge(name: String, _ paramAge: Int) -> String {
    var name = name
    var paramAge = paramAge
 
    name = name + "씨"
    paramAge += 1
    return "\(name)의 내년 나이는 \(paramAge)세입니다"
 }
 
 * InOut 매개변수
    함수 내부에서 발생하는 사건은 함수 외부에 영향을 미칠 수 없음
 
 var cnt = 30
 
 func autoIncrement(value: Int) -> Int {
    var value = value
    value += 1
 
    return value
 }
 print(autoIncrement(value: cnt)) // 함수 내부의 value 변수값 : 31
 print(cnt) // 외부에서 정으된 cnt 변수값 : 30
 
 func foo(paramCount: inout Int) -> Int {
    paramCount += 1
    return paramCountt
 }
 
 var count=30
 print(foo(paramCount: &count)) // 함수 내부의 paramCount 변수값 : 31
 print(count) // 외부에서 정의된 count 변수값 : 31
 
 값에 의한 전달 : 인자값을 전달하면 내부적으로 값의 복사가 이루어져서 복사된 값을 이용하여 구문을 실행하는 것
                인자값의 수정이 발생하더라도 원본 데이터에는 영향을 미치지 않음
                기본 자료형들 대부분이 이처럼 값에 의한 전달 방식으로 인자값을 전달
 참조에 의한 전달 : 내부적으로 복사가 이루어지는 대신 값이 저장된 주소가 전달, 인자값을 저장하고 있는 객체 자체가 전달
                함수 내부에서 인자값이 수정되면 외부 인자값 원본에도 반영
 
 참조에 의한 전달은 함수에서 inout 키워드를 사용했을 때 적용되지만, 클래스로 구현된 인스턴스는 inout 키워드를 사용하지 않아도 항상 참조에 의해 전달
 
 상수는 전달 대상이 될 수 없고, 리터럴 엯시 전달 대상이 될 수 없음.
 변수만 인자값으로 사용할 수 있음
 
 let count1 = 30
 foo(paramCount: &count1) // X
 
 foo(paramCount: &30) // X
 
 var value = 30
 foo(paramCount: &value) // O
 
 * 변수의 생존 범위와 생명 주기
 전역 변수 = 글로벌(Global) 변수 : 프로그램의 최상위 레벨에서 작성된 변수를 의미, 프로그램 내 모든 위치에서 참조할 수 있음, 프로그램이 종료되기 전까지는 삭제되지 않음
 지역 변수 = 로컬(Local) 변수 : 특정 범위 내에서만 참조하거나 사용, 특정 실행 블록 내부에서 선언된 변수는 모두 지역 변수이며 선언된 블록 범위 안에서만 이 변수를 참조, 실행 블록이 끝나면 제거
 
 do {
    do {
        var ccnt = 3
        ccnt += 1
        print(ccnt) // 4
    }
    ccnt += 1
    print(ccnt) // 오류
 }
 
 do {
    var ccnt = 0
    do {
        ccnt = 3
        print(ccnt) // 3
    }
    ccnt += 1
    print(ccnt) // 4
 }
 
 var count = 30
 
 func foo() -> Int {
    count += 1
    return count
 }
 foo() // 31
        
 var count = 30
 
 func foo(count: Int) -> Int {
    var count = count
    count += 1
    return count
 }
 
 print(foo(count: count)) // 31
 print(count) // 30
 
 #블록별 변수의 검색 순서
 함수 내부에서 정의된 변수를 찾음
 함수 외부에서 정의된 변수를 찾음
 글로벌 범위에서 정의된 변수를 찾음
 import 된 라이브러리 범위
 
 * 일급 객체로서의 함수 -> 함수형 언어로 분류
 1. 객체가 런타임에도 생성이 가능
 2. 인자값으로 객체를 전달 // 함수의 인자값으로 함수를 사용할 수 있음
 3. 반환값으로 객체를 사용 // 함수의 반환 타입으로 함수를 사용할 수 있음
 4. 변수나 데이터 구조 안에 저장 // 변수나 상수에 함수를 대입할 수 있음
 5. 할당에 사용된 이름과 관계없이 고유한 구별이 가능
 
 func foo(base: Int) -> String {
    return "결과값은 \(base + 1)입니다"
 }
 let fn1 = foo(base: 5) // 6
 
 let fn2 = foo
 fn2(5)
 
 func foo(base: Int) -> String{
    print("함수 foo가 실행")
    return "\(base + 1)"
 }
 let fn3 = foo(base: 5)
 
 let fnr = foo
 fn4(7)
 
 변수에 함수를 대입하면 그 변수는 다른 타입이 되는데 이 타입을 "함수 타입"이라고 함
 변수에 함수를 대입하면 함수 타입이 됨
 
 (인자 타입1, 인자 타입2, ...) -> 반환 타입
 
 func boo(age: Int) -> String {
    return "\(age)"
 }
 // 함수 타입 (Int) -> String
 let fn: (Int) -> String = boo
 
 func boo(age: Int, name: String) -> String {
    return "\(name)의 나이는 \(age)세 입니다"
 }
 // 함수 타입 (Int, String) -> String
 let s: (Int, String) -> String = boo // 함수의 이름
 let s: (Int, String) -> String = boo(age:name:) // 함수의 식별자

 func boo(age: Int) -> String {
    return "\(age)"
 }
 func boo(age: Int, name: String) -> String {
    return "\(name)의 나이는 \(age)세 입니다"
 }
 let t = boo // X
 let t1: (Int, String) -> String = boo
 let t2 = boo(age:name:)
 
 let fn01: (Int) -> String = boo // boo(age:)
 let fn02: (Int, String) -> String = boo //boo(age:name:)
 
 func boo(age: Int, name: String) -> String {
    return "\(name)의 나이는 \(age)세 입니다"
 }
 func boo(height: Int, nick: String) -> String{
    return "\(nick)의 키는 \(height)입니다"
 }
 let fn03: (Int, String) -> String = boo(age:name:)
 let fn04: (Int, String) -> String = boo(height:nick:)
 
 let fn03 = boo(age:name:)
 let fn04 = boo(height:nick:)
 
 func foo(age: Int, name: String) -> (String, Int) {
    return (name, age)
 }
 
 //함수 타입
 (Int, String) -> (String, Int)
 
 //인자값이 없는 경우
 func foo() -> String {
    return "Empty Values"
 }
 //인자값이 없는 경우의 함수 타입
 () -> String
 
 //반환값이 없는 경우
 func boo(base: Int) {
    print("param = \(base)")
 }
 // 반환값이 없는 경우의 함수 타입
 (Int) -> ()
 
 //인자값, 반환값 모두 없는 경우
 func too() {
    print("empty values")
 }
 //인자값, 반환값 모두 없는 경우의 함수 타입
 () -> ()
 
 func desc() -> String {
    return "this is desc()"
 }
 
 func pass() -> () -> String {
    return desc
 }
 
 let p = pass()
 p() // "this is desc()"
 
 func plus(a: Int, b: Int) -> Int {
    return a + b
 }
 func minus(a: Int, b: Int) -> Int {
    return a - b
 }
 func times(a: Int, b: Int) -> Int {
    return a * b
 }
 func divide(a: Int, b: Int) -> Int {
    guard b != 0 else{
        return 0
    }
    return a / b
 }
 
 func calc(_ operand: String) -> (Int, Int) -> Int {
    switch operand {
    case "+":
        return plus
    case "-":
        return minus
    case "*":
        return times
    case "/":
        return divide
    default:
        return plus
    }
 }
 
 let c = calc("+")
 c(3,4) // 7
 //calc("+")(3,4)
 let c2 = calc("-")
 c2(3,4) // -1
 let c3 = calc("*")
 c3(3,4) // 12
 let c4 = calc("/")
 c4(3,4) // 0
 
 콜백 함수 : 특정 구문의 실행이 끝나면 시스템이 호출하도록 처리된 함수
 콜백 함수 등록 : 실행하고자 하는 구문을 담은 함수를 인자값으로 넣는 것을 의미
 
 func incr(param: Int) -> Int {
    return param + 1
 }
 func broker(base: Int, function fn: (Int) -> Int) -> Int {
    return fn(base)
 }
 broker(base: 3, function: incr) // 4
 
 브로커(Broker) : 중개 역할을 하는 함수
 
 func successThrough() {
    print("연산 처리 성공")
 }
 func failThrough() {
    print("오류 발생")
 }
 func divide(base: Int, success sCallBack: () -> Void, fail fCallBack: () -> Void) -> Int {
    guard base != 0 else { // 입력값이 0이 되는 경우를 방지
        fCallBack()
        return 0
    }
    defer {
        sCallBack()
    }
    return 100 / base
 }
 divide(base: 30, success: successThrough, fail: failThrough)
 
 defer 블록
 1. defer 블록은 작성된 위치와 순서에 상관없이 함수가 종료되기 직전에 실행
 2. defer 블록을 읽기 전에 함수의 실해이 종료될 경우 defer 블록은 실행되지 않음
 3. 하나의 함수나 메소드 내에서 defer 블록을 여러 번 사용할 수 있다. 이때는 가장 마지막에 작성된 defer 블록부터 역순으로 실행
 4. defer 블록을 중첩해서 사용할 수 있다. 이때는 바깥쪽 defer 블록부터 실행되며 가장 안쪽에 있는 defer 블록은 가장 마지막에 실행
 
 클로저(Closure) : 익명 함수, 함수의 형태를 가지지만 이름이 부여되지 않으며, 여러 가지 간편한 작성 형식을 따름
 divide(base: 30,
    success: {
        () -> Void in
        print("연산 처리 성공")
    },
    fail: {
        () -> Void in
        print("처리 과정 오류")
    }
 }
 
 //외부 함수
 func outer(param: Int) -> (Int) -> String {
    //내부 함수
    func inner(inc: Int) -> String {
        return "\(inc)를 리턴"
    }
    return inner
 }
 let fn1 = outer(param: 3)
 let fn2 = fn1(30)
 
 func basic(param: Int) -> (Int)->Int {
    let value = param + 20
    func append(add: Int) -> Int {
        return value + add
    }
    return append
 }
 let result = basic(param: 10)
 result(10)
 
 * 클로저
 1. 전역 함수 : 이름이 있으며, 주변 환경에서 캡처할 어떤 값도 없는 클로저
 2. 중첩 함수 : 이름이 있으며 자신을 둘러싼 함수로부터 값을 캡처할 수 있는 클로저
 3. 클로저 표현식 : 이름이 없으며 주변 환경으로부터 값을 캡처할 수 있는 경량 문법으로 작성된 클로저
 
 { (매개변수) -> 반환 타입 in
    실행할 구문
 }
 
 { () -> () in
    print("클로저 실행")
 }
 
 { () -> Void in
    print("클로저 실행")
 }
 
 let f = { () -> Void in
    print("클로저 실행")
 }
 f()
 
 ({ () -> Void in
    print("클로저 실행")
 })()
 
 let c = { (s1: Int, s2: String) -> Void in
    print("s1:\(s1), s2:\(s2)")
 }
 c(1, "closure")
 
 ({(s1: Int, s2: String) -> Void in
    print("s1:\(s1), s2:\s2)")
 })(1, "closure")
 
 * 클로저 표현식과 경량 문법
 var value = [1, 9, 5, 7, 3, 2]
 
 func order(s1: Int, s2: Int) -> Bool {
    if s1 > s2 {
        return true
    } else {
        return false
    }
 }
 value. sort(by: order)
 
 {
    (s1: Int, s2: Int) -> Bool in
        if s1 > s2 {
        return true
    } else {
        return false
    }
 }
 
 value.sort(by: {
    (s1: Int, s2: Int) -> Bool in
    if s1 > s2 {
        return true
    } else {
        return false
    }
 })
 
 {(s1: Int, s2: Int) -> Bool in
    return s1 > s2
 }
 
 value.sort(by: {(s1: Int, s2: Int) -> Bool in return s1 > s2 })
 
 클로저 표현식은 반환값의 타입을 생략할 수 있음
 
 { (s1: Int, s2: Int) in
    return s1 > s2
 }
 
 value.sort(by: { (s1:Int, s2: Int) in return s1 > s2 })
 
 {s1, s2 in return s1 > s2}
 
 value.sort(by: { s1, s2 in return s1 > s2 })
 
 { return $0 > $1 }
 
 value.sort(by: {$0 > $1 })
 
 value.sort(by: > )
 
 * 트레일링 클로저
 value.sort(by: {(s1, s2) in
    return s1 > s2
 })
 
 인자값으로 클로저를 전달하는 특수한 상황에서 문법을 변형할 수 있도록 지원
 함수의 마지막 인자값이 클로저일 때, 이를 인자값 형식으로 작성하는 대신 함수의 뒤에 꼬리처럼 붙일 수 있는 문법을 의미, 인자 레이블은 생략
 이같은 문법이 함수의 마지막 인자값에만 적용됨
 
 value.sort() { (s1, s2) in
    return s1 > s2
 }
 
 value.sort { (s1, s2) in
    return s1 > s2
 }
 
 func divide(base: Int, success s: () -> Void) -> Int {
    defer {
        s()
    }
    return 100 / base
 }
 
 divide(base: 100) { () in
    print("연산 성공")
 }
 
 func divide(base: Int, success s: () -> Void, fail f: () -> Void) -> Int {
    guard base != 0 else {
    return 0
    }
    defer {
        s()
    }
    return 100 / base
 }
 
 divide(base: 100, success: { () in
    print("연산 성공")
 }) { () in
    print("연산 실패")
 }
 
 //이렇게 생각하면 no
 divide(base: 100) { () in
    print("연산 성공")
 } { () in
    print("연산 실패")
 }
 
 * @escaping, @autoescape
 @escaping 속성 : 인자값으로 전달된 클로저를 저장해 두었다가, 나중에 다른 곳에서도 실행할 수 있도록 허용해주는 속성
 func callback(fn: () -> Void) {
    fn()
 }
 callback {
    print("Closure 실행")
 }
 
 func callback(fn: () -> Void) {
    let f = fn // fn은 오직 직접 호출하는 것만 가능하기 때문에 오류 출력
    f()
 }
 
 함수의 인자값으로 전달된 클로저는 탈출불가(탈출: 함수 내부 범위를 벗어나서 실행되는 것)의 성격을 가짐
 1. 함수 내에서
 2. 직접 실행을 위해서만 사용
 함수 내부라 할지라도 변수나 상수에 대입할 수 없음
 
 //오류 발생
 func callback(fn: () -> Void) {
    func innerCallback() {
        fn()
    }
 }
 
 func callback(fn: @escaping () -> Void) { // 입력된 클로저는 변수나 상수에 정상적으로 할당, 중첩된 내부 함수에 사용, 함수 바깥으로 전달 가능
    let f = fn
    f()
 }
 callback {
    print("Closure 실행")
 }
 
 @autoclosure 속성 : 인자값으로 전달된 일반 구문이나 일반 구문이나 함수 등을 클로저로 래핑하는 역할, 일반 구문을 인자값으로 넣더라도 컴파일러가 알아서 클로저로 만들어서 사용
 func condition(stmt: () -> Bool) {
    if stmt() == true {
        print("결과 참")
    } else {
        print("결과 거짓")
    }
 }
 
 //방법 1 : 일반 구문
 condition(stmt: {
    4 > 2
 })
 //방법 2 : 클로저 구문
 condition {
    4 > 2
 }
 
 //step 1 : 경량화되지 않은 클로저 전체 구문
 condition { () -> Bool in
    return (4 > 2)
 }
 //step 2 : 클로저 타입 선언 생략
 condition {
    return (4 > 2)
 }
 //step 3 : 클로저 반환구문 생략
 condition {
    4 > 2
 }
 
 func condition(stmt: @autoclosure () -> Bool) {
    if stmt() == true {
        print("결과 참")
    } else {
        print("결과 거짓")
    }
 }
 
 //실행 방법
 condition(stmt: (4>2))
 
 #클로저가 아닌 그 안에 들어가는 내용만 인자값으로 넣음, 전달된 인자값은 컴파일러가 자동으로 클로저 형태로 감싸 처리해주게 됨#
 
 var arrs = [String]()
 
 func addVars(fn: @autoClosure () -> Void) {
    arrs = Array(repeating: "", count: 3)
    fn()
 }
 arrs.insert("KR", at: 1) // 오류 발생
 addVars(fn: arrs.insert("KR", at: 1)) // 오류 발생하지 않음, 지연된 실행
 
 함수 내에 작성된 구문은 함수가 실행되기 전까지는 실행되지 않음
 
 메소드(Method): 클래스나 구조체 내부에 정의된 함수
 
 */
