/*
 흐름 제어 구문
 * 반복문
 * 조건문
 * 제어 전달문
 
 @반복문
 * For 반복문
 for <루프 상수> in <순회 대상>{
    <실행할 구문>
 }
 # 순회 대상으로 사용할 수 있는 데이터 타입
    배열
    딕셔너리
    집합
    범위 데이터
    문자열
 
 for row in 1..5{
    print(row)
 }
 
 for row in 1...9{
    print("2 X \(row) = \(row * 2)")
 }
 
 for year in 1940...2017{
    print("\(year) 년도")
 }
 
 var lang = "swift"
 for char in lang.characters{
    print("개별 문자는 \(char)입니다")
 }
 
 let size = 5
 let padChar = "0"
 var keyword = "3"
 for _ in 1...size{
    keyword=padChar+keyword
 }
 print("\(keyword)")
 
 for i in 1..<10{
    for j in 1..<10{
        print("\(i) X \(j) = \(i*j)")
    }
 }
 
 * While 반복문
    실행 횟수가 명확하지 않을 때
    직접 실행해보기 전까지 실행 횟수를 알 수 없을 때
    실행 횟수를 기반으로 할 수 없는 조건일 때
 while <조건식> {
    <실행할 구문>
 }
 
 var n = 2
 while n < 1000 {
    n = n * 2
 }
 print("n=\(n)")
 
 while true {
    ...
 }
 
 repeat {
    <실행할 구문>
 }
 while <조건식>
 
 var n = 1024
 while n < 1000 {
    n = n * 2
 }
 print("n=\(n)")
 
 var n = 1024
 repeat {
    n = n * 2
 }
 while n < 1000
 print("n=\(n)")
 
 @조건문
 * if
 if <조건식> {
    <실행할 구문>
 }
 
 var adult = 19
 var age = 15
 if age < adult {
    print("미성년자")
 }
 
 var adult = 19
 var age = 21
 if age < adult {
    print("미성년자")
 }
 if age >= adult {
    print("성년자")
 }
 
 if <조건식> {
    <조건이 참일 때 실행할 구문>
 } else {
    <조건이 거짓일 때 실행할 구문>
 }
 
 var adult = 19
 var age = 21
 var gender = "M"
 if adult > age {
    if gender == "M" {
        print("남자 미성년자")
    } else {
        print("여자 미성년자")
    }
 } else {
    if gender == "M" {
        print("남자 성년자")
    } else {
        print("여자 성년자")
    }
 }
 
 if <조건1> {
    <조건1이 참일 때 실행할 구문>
 } else if <조건2> {
    <조건2가 참일 때 실행할 구문>
 } else {
    <앞의 조건들을 전부 만족하지 않았을 때 실행할 구문>
 }
 
 if gender == "M" {
    print("남자 성년자")
 } else if gender == "F" {
    print("여자 성년자")
 } else {
    print("어느 쪽에도 속하지 않음")
 }
 
 * guard
 guard <조건식 또는 표현식> else {
    <조건식 또는 표현식의 결과가 false일 때 실행될 코드>
 }
 
 func divide(base: Int) {
    
    guard base != 0 else {
        print("연산할 수 없음")
        return
    }
 
    let result = 100 / base
    print(result)
 }
 
 func divide(base: Int) {
    
    if base == 0 {
        print("연산할 수 없음")
        return
    }
 
    let result = 100 / base
    print(result)
 }
 
 func divide(base: Int) {
    guard base != 0 else {
        print("연산할 수 없음")
        return
    }
    guard base > 0 else {
        print("base는 0보다 커야 함")
        return
    }
    guard base < 100 else {
        print("base는 100보다 작아야 함")
        return
    }
    let result = (100 / base)
    print(result)
 }
 
 if #available(<플랫폼이름 버전>, <...>, <*>) {
    <해당 버전에서 사용할 수 있는 API 구문>
 } else {
    <API를 사용할 수 없는 환경에 대한 처리>
 }
 
 if #available(iOS 9, OSX 10.10, watchOS 1, *) {
 } else {
 }
 
 * 아이폰, 아이패드 등 터치 기반 스마트 기기에 사용되는 iOS
 * 맥 컴퓨터에 사용되는 OSX
 * 애플 시계에 사용되는 watchOS
 * 애플 TV에 사용되는 tvOS
 
 *switch
 switch <비교 대상> {
    case <비교 패턴1> :
        <비교 패턴1이 일치했을 때 실행할 구문>
    case <비교 패턴2>, <비교 패턴3> :
        <비교 패턴2 또는 3이 일치했을 때 실행할 구문>
    default :
        <어느 비교 패턴과도 일치하지 않았을 때 실행할 구문>
 }
 
 let val = 2
 switch val {
    case 1 :
        print("1")
    case 2 :
        print("2")
    case 2 :
        print("2 더 있음")
    default :
        print("일치하지 않음")
 }
 
 let sampleChar : Character = "a"
 switch sampleChar {
    case "a":
        fallthrough
    case "A":
        print("A")
    default :
        print("일치하지 않음")
 }
 
 var value = 3
 switch value {
    case 0, 1:
        print("0, 1")
    case 2, 3:
        print("2, 3")
    default :
        print("default")
 }
 
 var value = (2,3)
 switch value {
    case let (x,3) :
        print("\(x)")
    case let (3,y) :
        print("\(y)")
    case let (x,y) :
        prirnt("\(x), \(y)")
 }
 
 var value = (2,3)
 switch value {
    case (0..<2, 3) :
        print("범위A")
    case (2..<5, 0..<3) :
        print("범위B")
    case (2..<5, 3..<5) :
        pirnt("범위C")
    default :
        print("범위D")
 }
 
 var point = (3,-3)
 switch point {
    case let (x,y) where x==y :
        print("\(x) \(y) x==y 선 상에 있음")
    case let (x,y) where x==-y :
        print("\(x) \(y) x==-y 선 상에 있음")
    case let (x,y) :
        print("\(x) \(y) 일반 좌표 상")
 }
 
 @제어 전달문
 * break
 for row in 0...5 {
    if row > 2 {
        break
    }
    print("\(row)")
 }
 
 * continue
 for row in 0..<5 {
    if row < 2 {
        continue
    }
    print("\(row)")
 }

 #구문 레이블
 <레이블 이름> : while <조건식> {
    <실행할 구문>
 }
 break <레이블 이름>
 continue <레이블 이름>
 
 for i in 1...5 {
    for j in 1...9 {
        if (j==3) {
            break
        }
        print("\(i) X \(j) = \(i*j)")
    }
 }
 
 var loopFlag = true
 for i in 1...5 {
    for j in 1...9 {
        if (j==3) {
            loopFlag = false
            break
        }
        print("\(i)X\(j)=\(i*j)")
    }
    if (loopFlag == false) {
        break
    }
 }
 
 outer : for i in 1...5 {
    inner : for j in 1...9 {
        if (j==3) {
            break outer
        }
        print("\(i)X\(j)=\(i*j)")
    }
 }
 
 * fallthrough
 
 * return
 
 */
