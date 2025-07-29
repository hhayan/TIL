Numpy # 7/29 day1
**모르는 부분 표시

#reshape(3, -1) row 3개, col 알아서

## Basic
# 용어
ndim 차원
**shape 형태
size 크기
dtype 타입

# 실수형 arr
np.array([1, 2, 3], dtype=float)

##관련 함수
#채우기
np.zeros( ), np.ones( ), np.full( ), np.empty( )
#시퀀스 데이터
np.arange( ), np.linspace( ), np.logspace( )
*로그스케일: 대략 이론은 알기

np.random.rand VS np.random.randn
*정규 분포

**#차원 축소 np.squeeze(arr, axis=N)
np.squeeze(arr) (인수 없이 사용): shape에서 크기가 1인 모든 차원을 제거

np.squeeze(arr, axis=N): shape에서 axis=N에 해당하는 차원의 크기가 1인 경우에만 그 차원을 제거합니다. 만약 axis=N의 크기가 1이 아니라면 오류가 발생합니다.

#N차원 -> 1차원
flatten VS ravel(원본 바꿈) 
#모양 바꾸기
reshape VS resize(원본 바꿈)

전치 np.transposE( ) or np.T
균등 배열 linspace

## 인덱싱(좌표찍기), 슬라이싱(일괄변경)
arr[0, 0] -> r 0, c 0
arr[0] -> r 0
arr[3:6] = 100

**#다차원 배열 슬라이싱
row(행) 슬라이싱 -> 0, 1 idx 행
print(arr_2d[0:2])

col(열) 슬라이싱 -> 모든 행의 idx 1, 2 열
print(arr_2d[:, 1:3])

row / col 동시 슬라이싱 -> 1, 2 행 / 0, 1 열 
print(arr_2d[1:3, 0:2])

간격지정  -> 행/열 모두 2간격
print(arr_2d[::2, ::2])  

mask : 조건에 따라 배열 요소 선택
arr[mask]

**Fancy 인덱싱(중복도 가능)
print(arr[ [1, 2] ])  # -> arr[1], arr[2] 를 뽑아라

arr[ [1, 2] ]처럼 **대괄호 안에 또 다른 대괄호(리스트)**를 넣으면,
NumPy는 이를 여러 개의 인덱스를 동시에 사용하여 새로운 배열을 만들라는 명령으로 해석

#브로드캐스팅: 다른 형태의 배열 간 연산을 자동으로 확장
