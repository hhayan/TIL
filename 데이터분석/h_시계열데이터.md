# 시계열 데이터

- 필요 데이터 컬럼 추가하기
범위 선택:
(1) 슬라이싱
loc # 부문 문자열 활용 가능
데이터 개수 len()

(2) 조건부 필터링
금요일만
daily[daily['weekname']] == 'Friday']

특정 월의 주말만 뽑기
june = daily.loc['2023-06']
weekend_mask = june['weekday'].isin([5, 6]) # 0=월, 토.일만 true mask
june[weekend_mask]

마지막 10일간의 데이터: .tail(10)

#시각화
resample('M') 일단위 -> 월단위
seasonal_decompose()
계절성 패턴(분해) 1. 추세 2. 계절성(주기적 반복 패턴) 3. 잔차

히트맵
박스플롯
히스토그램: groupby 사용 불가

가로선: plt.ahvline()
세로선: plt.axvline(sales_avg, color='green', linestyle='- -', lavel=f'평균:{sales_avg:,.0f}')
plt.legend() #범례표시
y축 단위 바꾸기 from matplotlib.ticher import FuncFormatter

시계열 연산:
# 이동평균 시각화
.rolling(window=7)
# 변화율 계산
.pct_change(periods=7)

# 리샘플링 (원하는 주기로 나누어준다) 사실상 그룹핑이라 집계함수(agg) 사용 가능
.resample('W') <- 오프셋 별칭(Offset Alias) week
.resample('ME') Month End
.resample('QE') Quarter End

*주의: 
1. plot() 메서드 사용 시 단일값 불가 pandas series만 사용 가능!

2. 축의 위치(x, ticks)는 반드시 숫자(int, float)로 이루어진 리스트나 배열이어야 합니다. 
ex: weekday_pattern.values는 weekday_pattern Series에 담긴 평균 매출 값들을 넘파이 배열 형태로 추출

2-1. 시각화에 사용되는 데이터(height)는 숫자 형태의 데이터면 대부분 가능합니다.
Series의 .values를 사용하면 내부의 숫자 데이터만 깔끔하게 추출해서 사용하기 때문에 일반적.

#python
예외 처리(에러 처리) try: except:

[질문]
# 이동평균 시각화
plt.figure(figsize=(15, 8))
plt.subplot(2, 2, 1)
daily_sales[['sales', 'ma_7', 'ma_30']]는 daily_sales <=

데이터프레임에서 'sales', 'ma_7', 'ma_30'라는 이름의 세 개 열을 선택하여, 이 세 열로만 구성된 새로운 데이터프레임을 만드는 작업

------ 시각화 실습 ----------
# 색칠하기: plt.fill_between()

# 축 먼저 만들고, 종류가 다른 2개의 그래프 중첩(x축은 동일해야함)
ax1.

# 범례 결합
line1, label1 = ax1.get_legend_handles_labels()

# 수익률 분석
pct_change(): 변화량

# 이동평균
rolling(window=window)

# 모르는 부분
ax = plt.gca()
df[['close', 'ma_20']].plot(ax=ax)

np.sqrt(252)

# 수학.. 누적..
(1 + df['returns'])
df['returns']
