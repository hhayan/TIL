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