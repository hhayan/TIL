pandas 정리

## 문제풀이

1 copy본 만들기!

2 어떤 타입인지 확인 필요
# .dtype 속성을 사용해 Series 내부 값인 데이터 타입 확인
print(dfc['매출액'].dtype)

object: 숫자, 문자열, 혹은 여러 타입이 혼합된 경우를 의미합니다.
문자열(string)은 보통 object 타입으로 표시됩니다.
datetime64[ns]: 날짜/시간 타입

pandas groupby는 데이터 타입에 크게 구애받지 않습니다. 
그러나 agg 함수로 집계를 할 때는 데이터 타입이 중요

3 .dt: datetime 접근자입니다. 
pandas Series에서 날짜/시간 관련 속성이나 함수를 사용하기 위해 필요합니다.

4  Python에서 괄호 ()는 여러 용도로 사용됩니다.
: 함수 호출, 연산자 우선순위 지정, 튜플 생성

만약 괄호 안에 쉼표가 없으면 Python은 이를 튜플이 아닌,
그냥 괄호로 묶인 하나의 값으로 인식합니다.
즉, ('2023-01-01')은 '2023-01-01'이라는 문자열 값과 같습니다.

5. dfc.groupby(...) 코드는 원본 데이터(dfc)를 변경하지 않고,
그룹화 및 집계된 결과를 새로운 DataFrame으로 반환하는 것입니다.

6. pandas 메서드
rename() 메서드는 DataFrame의 인덱스 또는 컬럼 이름을 변경할 때 사용합니다.
이 메서드는 원본 DataFrame을 수정하지 않고, 이름이 변경된 새로운 DataFrame을 반환

7. pd.Categorical
Categorical 타입은 데이터의 순서를 명확하게 정의할 수 있어

8. .nunique()는 해당 Series에 있는 유일한 값(unique value)의 개수를 반환하는 pandas 함수

9. .size VS .count()

size: 결측치 포함, 행 X 열
count: 결측치 미포함

--------- 이상치 탐색 ---------------------------
1. Z-score(표준점수): 일반 기준: |Z| > 3이면 이상치
z_scores = stats.zscore(price_series)
np.abs(z_scores) > 3 

2. IQR(interquartile Range, 사분위수 범위)
Q1 (25%) ~ Q3 (75%) 사이의 범위를 벗어난 값
기준: Q1 - 1.5*IQR, Q3 + 1.5*IQR 밖이면 이상치

3. 백분위수
상하위 백분위 기준으로 이상치 정의
예: 상위 99%, 하위 1% 초과
def detect_outlier_perc(series, lower=1, upper=99):
    return (series < series.quantile(lower/100)) | (series > series.quantile(upper/100))

df[detect_outlier_perc(df['가격'], 1, 97)]

------ 이상치 처리: 제거, 변환, 대체 ------------------------
1) 제거
2) 변환 : 극단값을 백분위 경계값으로 조정 clip``
이상치 변환: 윈저화(극값을 특정 백분위 값으로 대체)
백분위 변환

*clip(lower=하한값, upper=상한값): 5, 20
5회 미만으로 구매한 고객은 모두 5회로, 20회를 초과하여 구매한 고객은 모두 20회로 값을 바꾸기*

3) 대체 (Imputation)
이상치를 중앙값 등 다른 값으로 대체

*
transform: 모든 얘들을 바꿔라 그러니까 마스크처럼 써야함
fillna(): 비어있는 얘들만

4. 시각화로 비교
히스토그램, 박스플롯, 산점도 활용해 이상치 탐색 및 처리 전후 비교
예시:
원본 vs 제거 vs 윈저화 후 가격 분포 비교
수량 vs 가격 산점도에서 이상치 색으로 표시

# 타이타닉 실습문제
(질문) detect_outliers_by_group(tp, 'pclass', 'fare') 이 뒤에 순서대로 항상 이렇게 해석되는거야?

tp: 분석할 데이터프레임
'pclass': 그룹을 나눌 기준 열
'fare': 이상치를 탐지할 값 열

네, detect_outliers_by_group 함수를 정의할 때 설정된 매개변수 순서대로 각각의 인수를 매핑합니다.
