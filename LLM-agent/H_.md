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

