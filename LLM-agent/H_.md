검증 pydantic : 

from pydantic import Field # 추가 제약조건

from pydantic import filed_validater
@field_validater() #특정 필드 제약조건

03. output_parser: LLM의 출력을 더 유용/구조화된 형태로 변환

# dataframe output parser : pandas df로 답변, 분석도 가넝
parser = df
prompttemplate
chain

# datetime ouput parser: 날짜 출력용
parser = datetimeoutputparser(format='%Y-%M-%d')
prompttemplate(template, input_variables, partial_variables)
chain

# Enum output parser: 객관식 느낌
import enumoutputparser
import enum
class 선택지

## memory(대화 내용 기억)
프롬프트에 이전 대화내용을 계속 주입해야함
1. short_Term memory
2. Long-Term memory

## Memory 구동 방식
# conversationBufferMemory:
chatopenAI
prompt = chatprompttemplate(
    [
        ('system', )
        messagesplaceholder('chat_history') # 기존 채팅 내역 주입
        ('human', )
    ]
)
memory = chat_history
runnable

# temperatuer 조절: (0~1)온도 낮으면 팩트만 / 높으면 지적 허영심
llm = ChatOpenAI(model='gpt-4.1-nano', temperature=0)

-참고
저장공간: 램-단기기억, 빠름 / 디스크(DB)-장기기억, 느려
캐싱

# 실제 gpt랑 대화하는 모습으로 만들기

Competition 도전해보실분들
https://www.kaggle.com/competitions/house-prices-advanced-regression-techniques/data
kaggle.comkaggle.com
House Prices - Advanced Regression Techniques
Predict sales prices and practice feature engineering, RFs, and gradient boosting
그냥 복습은 기존에 Red-Wine Quality 를 새로운 모델들로 예측/분류 (편집됨) 

# 05. 참고자료
랭체인 튜토리얼
https://python.langchain.com/docs/tutorials/

프롬프트
https://wikidocs.net/233351

# 06.rag
수업 참고 자료
https://www.youtube.com/watch?v=wgfSDrqYMJ4

# https://wikidocs.net/233780
# 사전준비
텍스트 분할: 하나의 청크(문서쪼개기) 당 몇 개의 토크가 필요한가 -> (벡터)숫자 바꾸기 -> 벡터스토어 저장

-----------------------------------------------------------
중간 프로젝트
https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce?select=olist_orders_dataset.csv
:일: 프로젝트 1: 브라질 이커머스 고객 행동 및 비즈니스 인사이트 분석
과제 1: 고객 세분화 및 RFM 분석
브라질 지역별 고객들의 구매 패턴을 분석하여 RFM(Recency, Frequency, Monetary) 모델을 구축하고, 고객을 세분화하여 각 세그먼트의 특성과 비즈니스 전략을 제시하세요.
과제 2: 배송 성과 분석 및 지역별 물류 최적화 방안
주문부터 배송 완료까지의 시간을 분석하고, 지역별 배송 성과 차이를 파악하여 물류 최적화 방안을 도출하세요. 배송 지연이 고객 만족도(리뷰 점수)에 미치는 영향도 함께 분석하세요.
과제 3: 상품 카테고리별 수요 예측 및 재고 관리 인사이트
시간에 따른 상품 카테고리별 판매 트렌드를 분석하고, 계절성 패턴을 파악하여 향후 수요 예측과 재고 관리 전략을 수립하세요.
자유 주제
위 데이터를 활용하여 브라질 이커머스 시장의 성장 동력과 개선점을 종합적으로 분석하고, 비즈니스 성장을 위한 데이터 기반 전략을 자유롭게 제시하세요. (편집됨) 
kaggle.comkaggle.com
Brazilian E-Commerce Public Dataset by Olist
100,000 Orders with product, customer and reviews info
:흰색_확인_표시:
8

9:40
:둘: 프로젝트 2: 영화 산업 트렌드 및 흥행 요소 분석
https://developer.themoviedb.org/reference/genre-movie-list
과제 1: 장르별 영화 트렌드 및 흥행 성공 요인 분석
최근 20년간 영화 장르별 트렌드 변화를 분석하고, 각 장르에서 흥행에 성공한 영화들의 공통 요소(예산, 런타임, 출연진, 개봉 시기 등)를 파악하세요.
과제 2: 영화 평점과 흥행 수익 간의 상관관계 분석
사용자 평점, 비평가 평점, 박스오피스 수익 간의 관계를 분석하고, 평점이 높지만 흥행하지 못한 영화와 평점은 낮지만 흥행한 영화들의 특성을 비교 분석하세요.
과제 3: 배우/감독 네트워크 분석 및 성공 패턴 발견
주요 배우와 감독들의 협업 관계를 네트워크로 시각화하고, 성공적인 콜라보레이션 패턴을 발견하여 캐스팅 전략에 대한 인사이트를 도출하세요.
자유 주제
영화 산업의 미래를 예측할 수 있는 새로운 관점에서 데이터를 분석하고, 영화 제작사나 투자자에게 유용한 인사이트를 자유롭게 제시하세요. (편집됨) 
The Movie Database (TMDB)The Movie Database (TMDB)
Movie List
Get the list of official genres for movies.
:흰색_확인_표시:
6

9:42
:셋: 프로젝트 3: 한국 부동산 시장 분석 및 투자 전략 수립
https://rt.molit.go.kr/pt/xls/xls.do?mobileAt=
과제 1: 수도권 vs 지방 (or 서울 인기구 vs 비인기구) 부동산 시장 비교 분석
수도권(서울, 경기, 인천)과 주요 지방 광역시의 부동산 가격 변동 패턴을 비교 분석하고, 지역별 시장 특성과 투자 매력도를 평가하세요.
과제 2: 아파트 규모별 가격 트렌드 및 생애주기 투자 전략
전용면적별(소형, 중형, 대형) 아파트의 가격 변동 추이를 분석하고, 생애주기에 따른 최적 투자 전략과 거주 전략을 데이터 기반으로 제시하세요.
과제 3: 부동산 거래량과 가격의 선행지표 관계 분석
부동산 거래량 변화가 가격 변동에 미치는 영향을 시차 분석을 통해 파악하고, 시장 전환점을 예측할 수 있는 지표를 개발하세요.
자유 주제
한국 부동산 시장의 구조적 특성을 고려한 새로운 분석 관점에서 투자자나 정책 입안자에게 도움이 될 수 있는 인사이트를 자유롭게 도출하세요. (편집됨) 

---------------------------------------------------------------------
hayan comment
state - node 관계가 가장 중요

10. agent : SQL의 ERD와 같은 단계
12. langgraph_rag : 필요한 데이터에 태그처럼 붙일 수 있어서 정확하게 필터링이 가능. 내가 원하는 형식으로 답변을 받을 수 있도록 설정이 가능

보통 함수는 동사로 씀
커널 닫기 ctrl + C 여러번
arlt + 블럭 -> 옮기기 가넝
잘라내기 단축키

- 설치 및 설정!!
25-09-09 오후 4시: langgraph-pgadmin4에만 접근하도록 설정
DB접근 권한 주기!
slack 참고!

CREATE USER llm_read_only_user WITH PASSWORD 'qwer1234';
GRANT CONNECT ON DATABASE "langgraph-db" TO llm_read_only_user;
GRANT USAGE ON SCHEMA public TO llm_read_only_user;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO llm_read_only_user;
-- 새로 생성되는 테이블에도 자동 적용되도록
ALTER DEFAULT PRIVILEGES IN SCHEMA public
GRANT SELECT ON TABLES TO llm_read_only_user;