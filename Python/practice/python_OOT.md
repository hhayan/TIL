# 7/28
# 07.OOP파일 요약

#TIP: 파이썬이 클래스와 인스턴스 등으로 이루어져 있으니 직접 코드를 짜기보다는 나중에 왜 안되고 되는지 코드를
#보고 이해할 수 있으면 됌

# 질문
1. 객체와 인스턴스의 차이?
객체: 데이터, 타입, 수행할 수 있는 동작(메서드)
인스턴스: 특정 클래스의 정의에 따라 만들어진 객체
객체 (Object): 프로그램에서 존재하는 모든 것. 아주 넓은 의미의 용어.

인스턴스 (Instance): 특정 클래스의 정의에 따라 생성된 구체적인 객체. "OOO 클래스의 인스턴스"라고 지칭함으로써
그 객체의 설계도를 명확히 할 때 사용됩니다.
따라서 모든 인스턴스는 객체이지만, 모든 객체가 특정 사용자 정의 클래스의 인스턴스로만 불리는 것은 아닙니다.
(예: 10은 객체이지만, 일반적으로 "int 클래스의 인스턴스"라고 명시적으로 말하기보다는 "정수 객체"라고 부릅니다.)

2. 메서드에 추가인자 받기

#더 요약
클래스: 제품의 설계도
인스턴스: 클래스의 예시, 파생..메모리에 살아있는 객체
객체: 설계도로 만든 제품
속성: 클래스 안의 변수
메서드: 클래스 안의 함수
생성자: 객체를 만들 때 실행되는 함수

## 오늘 배운 내용 예시 데이터로 설명해줘
🧱 Python OOP 요약 노트
🔸 객체(Object)란?
Python에서 모든 것은 객체이다.
모든 객체는 다음 3가지 구성 요소를 가진다:

타입(type): 어떤 연산자/조작이 가능한가?
속성(attribute): 어떤 상태(데이터)를 가지는가?
조작법(method): 어떤 동작을 수행할 수 있는가?

🔸 객체 지향 프로그래밍(OOP)
객체(object)를 중심으로 프로그램을 구성하는 패러다임.
절차 중심 프로그래밍과는 달리, 객체 간 상호작용 중심.
장점:
직관성
재사용성
변경 용이성

🔸 클래스(Class)와 인스턴스(Instance)
📌 클래스
객체의 설계도.
class 키워드를 통해 정의.
클래스명은 PascalCase 사용 권장.
class Person:
    """사람 클래스"""
📌 인스턴스
클래스를 통해 생성된 구체적 객체.
클래스()로 생성.
p1 = Person()
🔸 속성(Attribute)과 메서드(Method)
타입
속성 예시
메서드 예시
str
없음
.capitalize(), .split()
list
없음
.append(), .sort()
dict
없음
.keys(), .items()
속성: 객체의 상태/데이터 → 객체.속성
메서드: 객체의 동작/기능 → 객체.메서드()
🔸 인스턴스 변수 vs 클래스 변수
구분
인스턴스 변수
클래스 변수
정의 위치
__init__() 또는 외부
클래스 내부
공유 여부
개별 인스턴스마다 별도 존재
모든 인스턴스가 공유
접근 방법
self.변수명
클래스.변수명 또는 인스턴스.변수명
🔸 메서드 종류
✅ 인스턴스 메서드
self를 첫 인자로 받음
class MyClass:
		def method(self):
		    ...
		
✅ 클래스 메서드
@classmethod + cls 인자 사용
class MyClass:
		@classmethod
		def method(cls):
		    ...
		
✅ 스태틱 메서드
@staticmethod, self/cls 없음
class MyClass:
		@staticmethod
		def method():
		    ...
		
🔸 생성자 & 소멸자
✅ 생성자: __init__(self, ...)
인스턴스 생성 시 자동 호출
def __init__(self, name):
    self.name = name
✅ 소멸자: __del__(self)
인스턴스 삭제 시 자동 호출
🔸 매직 메서드 (Magic Methods)
__xxx__ 형태의 메서드
예시:
메서드
설명
__str__
print 출력 내용 지정
__eq__
== 비교
__gt__
> 비교
__add__
+ 연산 정의
🔸 네임스페이스 (Namespace)
속성 탐색 순서: 인스턴스 → 클래스
변수 탐색은: LEGB (Local → Enclosing → Global → Built-in)
🔸 상속 (Inheritance)
기존 클래스(부모)의 속성과 메서드를 자식 클래스에서 재사용
class Student(Person):
    def __init__(self, name, age, score):
        super().__init__(name, age)
        self.score = score
super() 사용
부모 클래스의 메서드 호출에 사용
isinstance(), issubclass()
객체/클래스 간 관계 확인
🔸 OOP의 4대 핵심 원칙
추상화(Abstraction): 공통된 특징만 표현 (예: Person → Student, Teacher 상속)
상속(Inheritance): 코드 재사용
다형성(Polymorphism): 같은 이름의 메서드가 상황에 따라 다르게 동작
캡슐화(Encapsulation): 내부 구현은 감추고, 필요한 기능만 노출
🔸 예제: Circle 클래스
class Circle:
    pi = 3.1415

    def __init__(self, r):
        self.r = r

    def get_area(self):
        return round(self.pi * self.r ** 2, 3)

