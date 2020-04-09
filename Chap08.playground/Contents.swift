/*
 구조체와 클래스 공통점
 * 프로퍼티 : 변수나 상수를 사용하여 값을 저장하는 프로퍼티를 정의
 * 메소드 : 함수를 사용하여 기능을 제공하는 메소드를 정의
 * 서브스크립트 : 속성값에 접근할 수 있는 방법을 제공하는 서브스크립트를 정의
 * 초기화 블록 : 객체를 원하는 초기 상태로 설정해주는 초기화 블록을 정의
 * 확장 : 객체에 함수적 기능을 추가하는 확장(extends) 구문을 사용
 * 프로토콜 : 특정 형식의 함수적 표준을 제공하기 위한 프로토콜을 구현
 
 구조체는 할 수 없지만, 클래스는 할 수 있는 기능
 * 상속 : 클래스의 특성을 다른 클래스에게 물려줌
 * 타입 캐스팅 : 실행 시 컴파일러가 클래스 인스턴스의 타입을 미리 파악하고 검사
 * 소멸화 구문 : 인스턴스가 소멸되기 직전에 처리해야 할 구문을 미리 등록
 * 참조에 의한 전달 : 클래스 인스턴스가 전달될 때에는 참조 형식으로 제공, 참조가 가능한 개수는 제약이 없음
 
 * 구조체의 정의 형식
 struct 구조체_이름 {
    // 구조체 정의 내용이 들어갈 부분
 }
 * 클래스의 정의 형식
 class 클래스_이름 {
    // 클래스 정의 내용이 들어갈 부분
 }
 
 struct Resolution {
    //
 }
 
 class VideoMode {
    //
 }
 
 * 객체 이름 작성
 1. 구조체와 클래스 이름의 첫 글자는 대문자, 나머지 글자는 소문자로 작성
 2. 2개 이상의 복합 단어는 단어별로 끊어 첫 글자는 대문자, 나머지는 소문자로 작성
 3. 이미 축약된 언어는 모두 대문자로 작성 가능
 4. 프로퍼티나 메소드를 선언할 때는 소문자로 시작
 5. 언더바로 단어를 연결하는 방식은 지양
 
 프토퍼티, 속성 : 구조체와 클래스 내부에서 정의된 변수나 상수
 메소드 : 함수를 정의하여 특정 기능을 정의
 
 struct Resolution {
    var width = 0
    var height = 0
 
    func desc() -> String {
        return "Resolution 구조체"
    }
 }
 
 class VideoMode {
    var interlaced = false
    var frameRate = 0.0
    var name : String?
 
 
    func desc() -> String {
        return "VideoMode 클래스"
    }
 }
 
 구조체나 클래스는 실행할 수 있는 객체가 아닌, 값을 담을 수 있는 실질적인 그릇을 만들어내기 위한 일종의 틀"원형"이라고 생각
 인스턴스 : 원형 틀을 이용하여 찍어낸 그릇, 메모리 공간을 할당받은 것
 
 // Resolution 구조체에 대한 인스턴스를 생성하고 상수 insRes에 할당
 let insRes = Resolution()
 // VideoMode 클래스에 대한 인스턴스를 생성하고 상수 insMode에 할당
 let insMode = VideoMode()
 
 <인스턴스 이름>.<프로퍼티 이름>
 
 let width = insRes.width
 print("insRes 인스턴스의 width 값은 \(width)입니다") // insRes 인스턴스의 width 값은 0입니다
 
 <인스턴스 이름>.<프로퍼티 이름>.<프로퍼티의 서브 프로퍼티 이름>
 
 /*
 class VideoMode {
    var interlaced = false
    var frameRate = 0.0
    var name: String?
 
    var res = Resolution()
 
 }
 // VideoMode 클래스에 대한 인스턴스를 생성하고 상수에 할당
 let vMode = VideoMode()
 
 print("vMode 인스턴스의 width 값은 \(vMode.res.width)입니다") // vMode 인스턴스의 width 값은 0입니다.
 */
 
 // 점 구문을 이용하여 인스턴스의 프로퍼티에 값을 할당
 vMode.name = "Sample"
 vMode.res.width = 1280
 
 print("\(vMode.name!) 인스턴스의 width 값은 \(vMode.res.width)입니다") // Sample  인스턴스의 width 값은 1280입니다
 
 var res = vMode.res
 res.width = 1280
 
 * 초기화
 1. 프로퍼티를 선언하면서 동시에 초기값을 지정하는 경우
 2. 초기화 메소드 내에서 프로퍼티의 초기값을 지정하는 경우
 
 멤버와이즈 초기화 구문: 구조체는 모든 프로퍼티의 값을 인자값으로 ㅣㅇㅂ력받아 초기화하는 기본 초기화 구문을 자동으로 제공
 
 //width와 height를 매개변수로 하여 Resolution 인스턴스를 생성
 let defaultRes = Resolution(width: 1024, height: 768)
 
 print("width:\(defaultRes.width), height:\(defaultRes.height)") // width: 1024, height: 768
 
 * Resolution() // 기본 초기화 구문, 내부적으로 프로퍼티를 초기화하지 않음
 * Resolution(width: Int, height: Int) // 모든 프로퍼티의 초기값을 입력받는 멤버와이즈 초기화 구문, 내부적으로 모든 프로퍼티를 초기화함
 
 클래스의 프로퍼티와 초기화 구문에 대한 두 가지 원칙
 1) 모든 프로퍼티는 정의할 때 초기값을 주던가, 아니면 옵셔널 타입으로 선언한다.
 2) 인스턴스를 생성할 때에는 클래스명 뒤에 ()를 붙여준다.
 
 * 구조체의 값 전달 방식: 복사에 의한 전달
 let hd = Resolution(width: 1920, height: 1080)
 var cinema = hd
 
 let video = VideoMode()
 video.name = "Original Video Instance"
 
 print("video 인스턴스의 name 값은 \(video.name!)입니다") // video 인스턴스의 name 값은 Original Video Instance입니다
 
 let dvd = video
 dvd.name = "DVD Video Instance"
 
 print("video 인스턴스의 name 값은 \(video.name!)입니다.") // video 인스턴스의 name 값은 DVD Video Instance입니다
 
 func changeName(v: VideoMode) {
    v.name = "Function Video Instance"
 }
 
 changeName(v: video)
 print("video 인스턴스의 name 값은 \(video.name!)입니다") // video 인스턴스의 name 값은 Function Video Instance입니다
 
 func changeName(v: VideoMode) {
 
 * 동일 인스턴스인지 비교할 때 : ===
 * 동일 인스턴스가 아닌지 비교할 때 : !==
 
 if (video === dvd) {
    print()
 } else {
    print()
 }
 
 let vs = VideoMode()
 let ds = VideoMode()
 
 if (vs === ds) {
    print()
 } else {
    print()
 }
 
 * 구조체를 사용하는 것이 좋은 경우
 1. 서로 연관된 몇 개의 기본 데이터 타입들을 캠슐화하여 묶는 것이 목적일 때
 2. 캡슐화된 데이터에 상속이 필요하지 않을 때
 3. 캡슐화된 데이터를 전달하거나 할당하는 과정에서 참조 방식보다는 값이 복사되는 것이 합리적일 때
 4. 캡슐화된 원본 데이터를 보존해야 할 때
 */
