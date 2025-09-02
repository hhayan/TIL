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
