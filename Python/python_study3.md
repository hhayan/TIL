# 7/23(수) python

7/23 오전: 코테 문제풀이 안내
코테 5시간 정도 가능, 꾸준히 해야함, 절대 벼락치기 불가
하루 1문제만 풀어도 최고! 헬스장 가기랑 똑같음ㅠ

https://certi.programmers.co.kr/about/sample 여기서 PCCE 샘플문제 1번 선택 후 모의고사 진행

tip. 모를 때는 값을 넣어보기

[코테] 몰랐던 부분
1. 3번 글자 결합
3. 인덱스
def solution(numbers, our_score, score_list):
    answer = []
    for i in range(len(numbers)): #len(numbers)는 1이므로, i는 0만 갖습니다.
        if our_score[i] == score_list[numbers[i-1]]:
            answer.append("Same")
        else:
            answer.append("Different")

# len() 함수는 리스트(또는 문자열, 튜플 등) 안에 있는 요소(항목)의 개수를 반환합니다. 요소의 내용이나 값은 중요하지 않고, 총 몇 개의 항목이 들어있는지만 세는 것이죠.
len(["강아지"]) -> 1
len([1]) -> 1
len([0]) -> 1

4. 문제를 이해 못함
6. 인덱스, 해석
for i in range(len(numbers)): <- i는 0 
8.  인덱스, 해석
for i in range(len(storage)) 
# len: storage["강아지", "토끼"] -> storage 요소의 개수, 원소의 글자수X, 인덱스 접근
	if storage[i] in clean_storage:
# i번째 오는 인덱스
# 예를 들어, storage[0]은 "강아지", storage[1]은 "토끼"
pos = clean_storage.index(storage[i])
# storage[i]에 해당하는 동물의 이름(예: "강아지")이 clean_storage 리스트에서 몇 번째에 위치하는지 그 인덱스 번호를 찾아주는 역할
# pos = clean_storage.index("강아지")
# clean_storage 리스트에서 "강아지"는 인덱스 0에 있습니다.
# 따라서 pos 변수에는 **0**이 할당됩니다
clean_num[pos] += num[i]
# 이 인덱스 번호(pos)를 사용해서 clean_num 리스트에서 해당 동물의 수량을 업데이트(clean_num[pos] += num[i]) 하는 거죠.

9. 
10. 아래 힌트
PCCE 모의고사 1회 10번은 아래 참조
arr = [
    [1, 'a', 9],
    [4, 'c', 5],
    [2, 'd', 4],
    [3, 'b', 3],
]
# arr 안에 있는 리스트들의 idx 0 (1,2,3,4 순) 기준으로 정렬하기
arr.sort(key=lambda r: r[0])
arr
# arr 안에 있는 리스트들의 idx 1 기준 역(d,c,b,a 순)으로 정렬하기
arr.sort(key=lambda r: r[1], reverse=True)
arr

--------------------------------------------------------------------------------------------
코테 연습 > 기초 트레이닝 > 특별한 이차원 배열2

모양 그려서 규칙찾기
-------------------------------------------------------
list2d 파리채


