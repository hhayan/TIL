# 04.KPI
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



