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