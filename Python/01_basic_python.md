#Python: DAY1

이름 : '문자'가 없으면 변수명 즉, name
x = 1 : x에 1을 할당

### 값 / 이름 구분하기!
### 'hayan' / hayan

#자료형 분류
Boolean type, int, float, complex, None(값이 없음)

#문자열
1. f스트링:
f{변수명}
f{연산가능}
f{소수점 세자리까지:.3}
f{today:%Y}
여러줄 문자열 가능: f""" """

2. 특수기호: 역슬래시

# e숫자 -> 10숫자제곱

##함수
input( ): 반환값은 항상 문자열 형태로 반환
int( )

##값
Boolean: 비어있는 문자열, 0, False / 그 외 True

import math
math.isclose

##단축키
여러줄 주석: ctrl + /

# / 연산은 무조건 실수(5.0 -> 실수)

# is 연산자
메모리상 같은 곳에 저장되어 있냐가 기준
지정 메모리가 있음, 메모리를 덜 쓸라고,
지정메모리: 1~256

# 단축평가(Short Circuit Evaluation)
T나 F인지 자동으로 판단하고 
안봐야할 지점의 값을 반환함

#Python: DAY2
tip: 코드는 안에서부터, 오른쪽부터 분리해서 보삼
리스트, 딕셔너리 좀 많이 씀
메소드: 함수인데 뒤에 , /어딘가 종속되어 있는 함수

# ss = {1, 2, [1, 2]} #Eorro #set에 list 안댐 #immutable만 가능
mutable -> unhashable 
immutable -> hashable : 1. set에 들어가기 2. dict kye 되기

mutable(list, set, dict)
immutable(tuple, range, str, int, float)

##시퀀스: 순서가 있음: 리스트, 튜플, 레인지
-객체 = 값

#리스트
-리스트의 변수명은 복수형
-리스트 접근방법: list[위치]

locations[len(locations)-1]: 총길이
locations[-1]: 마지막 인덱스

#튜플
-하나의 항목으로 구성된 튜플은 생성 시 값 뒤에 쉼표를 붙여야 합니다.
(1, )
-마지막 항목에 붙은 쉼표는 생략 할 수 있습니다.
c = (1, 2,)
-파이썬 내부적 튜플 자동처리: ,
-튜플단일: a = (1) #파이썬이 튜플이 아닌, 연산하는 괄호로 인지함
- empty = ( ) 가능

#range
- 정수의 시퀀스
- list로 형변환: list(range(9))

#x, *y = [1, 2, 3] #나머지 항목들은 별 기호에 표시된 변수에 대입
#대부분 항상 마지막 부분에 위치함, *에 몇 개를 할당해야할지 모르니까

#슬라이싱
print([1, 2, 3, 4][1:4]) #인덱스 1, 2, 3 #끝나는 인덱스 미포함
print((1, 2, 3)[:2]): 맨처음~1까지
print(s[::-1]): 전체뒤집기

mutable: 내부 값을 바꿀 수 있는 건 리스트만 가능!
(string, tuple, range)

##비 시퀀스: 순서없음: 세트, 딕셔너리

#set: {1, 2}
#삽입, 변경, 삭제 가능, 중복값 X

#dictionary: key 중복X
.items: 키, 밸류 나옴
d = {'a': 1, 'b': 2}

#파이썬 용어
패키지=폴더
라이브러리 = 폴더 위에 폴더
모듈=파일

#참고 사이트:
https://pythontutor.com/visualize.html#mode=edit



