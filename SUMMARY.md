# 1. [Data_structure](https://github.com/gieflij/sw_github/tree/master/Data_structure)

## COME331003 자료구조/2018년 2학기/박대진

: 자료구조 수업에서 과제로 수행

: 모든 내용들은 수업과 연관됨

- 2개의 stack을 합성해서 하나의 stack으로 생성
- push와 pop만 이용

### [stack_merge_1](https://github.com/gieflij/sw_github/tree/master/Data_structure/stack_merge_1)

- 동작 설명

  ------------------------------------------------
    - stack은 {0,1,2,3,4}와 {5,6,7,8,9}로 구성
    - 순서대로 0에서 9까지 push
    - 9에서 0까지 pop
    
   ------------------------------------------------
    
### [stack_merge_2](https://github.com/gieflij/sw_github/tree/master/Data_structure/stack_merge_2)

- 동작 설명

  ---------------------------------------------------
    - stack은 {0,1,2,3,4}와 {5,6,7,8,9}로 구성
    - 각 stack에서 차례대로 push해서 stack 생성
    - 생성된 stack은 {0,5,1,6,2,7,3,8,4,9}
    - 9에서 0까지 pop
    
  -----------------------------------------------------




# 2. [Information_theory](https://github.com/gieflij/sw_github/tree/master/Information_theory)

## ELEC473001 정보및부호이론/2020년 1학기/박정훈

: 모든 내용들은 수업과 연관됨

: 모든 내용들은 수업의 프로젝트 일환으로 스스로 구상 및 프로그래밍


### [huffman_coding](https://github.com/gieflij/sw_github/tree/master/Information_theory/huffman_coding)

: 중간 project의 일환으로 matlab에서 코딩

  - Huffman constructs a code tree **from the bottom to up**
  - Bits of each codeword are constructed **from right to left**
  
  
  - 조건
  
    ----------------------------------------------
      - Huffman coding algorithm은 아래에서부터 위로 가는 순서로 coding tree 생성
      - coding tree의 leaf는 하나의 root와 2개의 leaf 기준
      - 항상 왼쪽 leaf가 덜 빈번하게 나타나는 알파벳을 지님
    
    ----------------------------------------------
    
  - 가정
  
    ----------------------------------------------
      - 'a'에서 'j'까지 10개의 알파벳(symbol)만 사용하여 100개의 알파벳을 사용하는 한 문장을 만든다고 가정
      - 각 알파벳이 나타날 확률을 임의로 설정하여 각 알파벳의 빈도수 얻음
      - coding tree의 젤 아래부분부터 접근하는 것을 가정하여 huffman code 구성
    
    ----------------------------------------------
    
  - 코드 설명
  
    ----------------------------------------------
      - 빈도 수와 상관없이 leaf를 왼쪽에서부터 순서대로 queue라는 이름의 vetor에 저장
        - queue1은 huffman tree coding의 시작
        - queue1은 4개의 leaf의 역할, 2개의 root 생성
      - 해당 과정은 위로 올라가면서 반복
      - 총 4개의 queue를 생성하고 algorithm 종료
    
    ----------------------------------------------

### [channel_coding](https://github.com/gieflij/sw_github/tree/master/Information_theory/channel_coding)

:기말 project의 일환으로 matlab에서 코딩

  - encoder는 shift registers의 개념 이용
  - channel은 p =0일 때의 BSC (Binary Symmetric Channel) 이용
  - decoder는 viterbi algorithm 이용
  - 흐름 설명
  
    -------------------------------------------------
      - bit를 받아서 encoding을 통해 channel 생성, 생성된 channel을 decoder로 decoding
      - encoder에서는 1000 bit를 0과 1로 무작위 생성
      - decoder에서는 항상 initial state는 00으로 시작
        - computation.m은 4가지 path의 hamming distance의 합 산출
        - set_path함수는 4가지 path 중 최대 2가지 path 선정
        - 2개의 path가 동일한 hamming distance를 가질 경우 random하게 path 선정
      
    ---------------------------------------------------






# 3. [SoC_programming](https://github.com/gieflij/sw_github/tree/master/SoC_programming)

## ITEC412001 SoC 설계 및 프로그래밍/2020년 1학기/문병인

: 모든 내용들은 수업과 연관됨

: 모든 코드들은 수업 자료를 바탕으로 구성

- HW와 studying_verilog의 코드들은 일부는 수업 자료를 바탕으로, 일부는 스스로 프로그래밍을 함
- project (baseball_game)은 팀 프로젝트 형태로 수행, 팀원들과 함께 프로그래밍함

## [HW](https://github.com/gieflij/sw_github/tree/master/SoC_programming/HW)
: 수업에서 과제로 제출했던 verilog code

## [studying_verilog](https://github.com/gieflij/sw_github/tree/master/SoC_programming/studying_verilog)
: 수업 중과 수업 후 과제로 제출했던 verilog code

## [project](https://github.com/gieflij/sw_github/tree/master/SoC_programming/project)
: baseball_game은 숫자 야구를 구현

