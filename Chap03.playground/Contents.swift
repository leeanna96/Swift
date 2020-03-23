/*
 * 헤더 파일 작성할 필요 없다
 * 대소문자 구분
    # 함수와 메소드, 인스턴스명의 첫 글자는 소문자
    # 클래스와 구조체, 프로토콜 등 객체의 첫 글자는 대문자
    var a = 30
    var A = 30
 * 구문 끝의 세미콜론은 생략 가능
 * 엔트리 포인트(시작점)으로 사용되는 main()함수가 없다
    import UIKit
 
    @UIApplicationMain
    class AppDelegate : UIResponder, UIApplicationDelegate
 * 문자열, 문자 -> 큰따옴표 사용
 * import 키워드를 사용하지만, 라이브러리와 프레임워크 참조 용도
 * 한 줄 주석, 여러 줄 주석 처리 방식 모두 사용
 * try~catch 방식의 오류 처리 지원
*/

/*
 let birthYear =1980 // X
 let birthYear= 1980 // X
 let birthYear = 1980 // O
 
 var year: Int
 year = 1999
 
 var vValue = 3
 vValue = 7
 
 let cValue = 3
 cValue // 오류 발생
 */

/*
 Int
 Int8, Int16, Int32, Int64
 UInt
 UInt8, UInt16, UInt32, UInt64
 Float
 Double
 Bool
 String
 Character
 */

/*
 var stringValue = "문자열" // String
 var charValue = "문" // String? Character?
 */

/*
 var stmt = "꼼꼼한 재은씨의 키는"
 var height = 185
 
 var heightStmt = stmt + String(height) // "꼼꼼한 재은씨의 키는 185"
 
 String(문자열로 바꾸고 싶은 정수값 또는 변수)
 Int(<정수로 바꾸고 싶은 문자열>)
 
 let name = "꼼꼼한 재은씨"
 let year = 2014
 let month = 10
 let day = 1
 
 let profile = "\(name)는 \(year)년 \(month)월 \(day)일에 출간되었습니다."
 print(profile) // 꼼꼼한 재은씨는 2014년 10월 1일에 출간되었습니다.

 let apple = 3
 let banana = 2
 let orange = 4
 
 let desc = "과일은 총 \(apple+banana+orange)개입니다"
 print(desc) // 과일은 총 9개입니다
 */

/*
 쿼우팅 : 문자열에 불필요하게 의미를 부여하지 말고 주어진 그대로 이해해 달라는 뜻으로 해석
 
 //스위프트
 "Swift" // String
 "S" // Character 또는 String
 //자바
 "Java" // String
 'J' // Character
 
 let poem = """
 계절이 지나가는 하늘에는
 가을로 가득 차 있습니다.
 나는 아무 걱정도 없이 가슴 속의 별들을
 다 헬 듯 합니다
 """
 */

/*
 연산자
 -
 +
 -
 *
 /
 %
 
 <
 >
 <=
 >=
 ==
 !=
 
 !(NOT)
 &&(AND)
 ||(OR)
 
 1...5 : 1부터 5까지의 범위
 1..<5 : 1부터 4까지의 범위
 
 =
 +=
 -=
 *=
 /=
 %=
 <<=
 >>=
 &=
 ^=
 |=
 */

