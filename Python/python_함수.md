#python day4

#tip: 변수명을 보고 유추해보기!
#문제 많이 풀어보기

#mutable(변경 가능)/ immutable(불가능)
                  /  숫자, 글자, 불리언
#*복사할 때 주의    
#참조 상태(사실상 하나)  / 원본 1개, 복사본 1개 상태

#id 컴퓨터에 저장되는 곳

#함수.append : method

#딕셔너리 key 중요
#index로 원래 값 변경 가능!
s = [1, 2, 3]
len([s])

#list comprehension
nums = [num ** 3 for num in range(1, 6)]

#순서가 있는 데이터 구조
문자열, 리스트가 중요!

#함수
#문자열
.find():
인덱스 위치 찾아줌, 부분인덱스도 찾아줌
-1는 인덱스 없음

.index(): 인덱스 위치 찾아줌 
리스트 내 없으면 오류 발생

.split

append: 1개 추가 / extend: 여러개 추가

pop: 뽑아서 되돌려 준다~ 인형뽑기 마냥

update: 바꾸기 / setdefault: 있으면 가져오기 + 없으면 추가

