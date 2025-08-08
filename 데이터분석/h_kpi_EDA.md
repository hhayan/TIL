# 04.KPI # EDA
# 매트릭 vs 지표 vs kpi

# RFM 분석
RFM 점수 계산
label순서:
r_score (Recency 점수): Recency는 값이 낮을수록 좋으므로, 가장 낮은 Recency 값(가장 최근에 구매한 고객)에 5점을, 가장 높은 값에 1점을 부여합니다.
f_score (Frequency 점수): Frequency는 값이 높을수록 좋으므로, 가장 높은 Frequency 값(가장 자주 구매한 고객)에 5점을, 가장 낮은 값에 1점을 부여합니다.

*함수
pd.qcut: 데이터를 동일한 크기의 구간(5개)으로 나누어 등급을 매기는 역할
? plt.xticks
cumsum()
.astype: Series, DataFrame 열을 string으로 변환

# 고객 sagment
quantile(0.9): 상위 10% 고객 기준

코호트 분석
cohort_data: 최초구매월 별, 0달 후, 1달 후, 2달 후 몇 건 구매했는지에 대한 data
1월 구매자 -> 0달 후, 1달 후, 2달 후..
2월 구매자 -> 0달 후, 1달 후, 2달 후..

-----------------------------------------------------------------------------
## 성장률 구하기
전월 데이터와 성장률 계산 # (현재월-전월)/전월 * 100

# 컬럼명 바꾸기
df.clolumns = ['month', 'reveune']

# dtype 확인
.info

# 전, 후 확인 = SQL의 lead, lag
.shift(1) 전월 데이터
.shift(12) 전년동월 데이터

# 최근 12개월, 전월 대비 성장률 평균
df.tail(12)['컬럼명'].mean
-------------------------------------------------------------------------------
## 시각화: 주어가 -> 그래프
.subplots(2, 2, figsize(15, 10))

.plot
.subplot
.bar
.value_counts() *주의, 
.rolling 이동평균: 특정 기간 내 평균
.melt(id_vars=['channel'], var_name='weight_type'): pivot의 반대

# CAC 가중치 계산
# ROI분석 

-------------------------------
시각화
.sns.barplot(data= , x= , y=, hue='weight_type',ax=a2)
.scatter

-------------------------------
실습
계속 변수를 만들게 됌.. df 한군데에 결과값을 한 번에 보면 좋은데 이유는?

-----------------------------------
## EDA 
웹개발의 framework
백엔드: python - flask..
프론트엔드: JS - 리엑트, vue, aughlan...



