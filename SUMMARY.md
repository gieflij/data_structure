# 1. [Data_structure](https://github.com/gieflij/sw_github/tree/master/Data_structure)

## COME331003 자료구조/2018년 2학기/박대진

: 자료구조 수업에서 과제로 수행

: 모든 내용들은 수업과 연관됨

- 2개의 stack을 합성해서 하나의 stack으로 생성
- push와 pop만 이용

  - stack_merge_1
    --------------------------------------
    - stack은 {0,1,2,3,4}와 {5,6,7,8,9}로 구성
    - 순서대로 0에서 9까지 push
    - 9에서 0까지 pop
    --------------------------------------
    
  - stack_merge_2
    --------------------------------------
    - stack은 {0,1,2,3,4}와 {5,6,7,8,9}로 구성
    - 각 stack에서 차례대로 push해서 stack 생성
    - 생성된 stack은 {0,5,1,6,2,7,3,8,4,9}
    - 9에서 0까지 pop
    --------------------------------------




# 2. [Information_theory](https://github.com/gieflij/sw_github/tree/master/Information_theory)

## ELEC473001 정보및부호이론/2020년 1학기/박정훈

: 모든 내용들은 수업과 연관됨

: 모든 내용들은 수업의 프로젝트 일환으로 스스로 구상 및 프로그래밍


### huffman_coding

: 중간 project의 일환으로 matlab에서 코딩

----------------------------------------------

----------------------------------------------

### channel_coding

:기말 project의 일환으로 matlab에서 코딩

- encoder는 shift registers의 개념 이용
- decoder는 viterbi algorithm 이용
- channel은 p =0일 때의 BSC (Binary Symmetric Channel) 이용

- 코드 설명
  ---------------------------------------------------------
  - channel encoder, BSC
    - original input 1000 bit는 0과 1로 무작위 생성
    - convolutional encoding 단계에서 한 번에 2 bit씩 불러와 p1과 p0 간단히 생성
  - channel decoder
    - viterbi algorithm을 바탕으로 코드를 관통하는 규칙 설정
    - <computation.m>은 4가지 path의 hamming distance의 합을 산출
    - <set_path.m>, <set_path2.m>, <set_path_simple.m>은 4가지 path 중 최대 2가지 path 
  ---------------------------------------------------------


#### 



# 3. SoC_programming 

## ITEC412001 SoC 설계 및 프로그래밍/2020년 1학기/문병인

: 모든 내용들은 수업과 연관됨

: 모든 코드들은 수업 자료를 바탕으로 구성

- HW와 studying_verilog의 코드들은 일부는 수업 자료를 바탕으로, 일부는 스스로 프로그래밍을 함
- project (baseball_game)은 팀 프로젝트 형태로 수행, 팀원들과 함께 프로그래밍함

## HW
: 수업에서 과제로 제출했던 verilog code

## studying_verilog
: 수업 중과 수업 후 과제로 제출했던 verilog code

## project
: baseball_game은 숫자 야구를 verilog code로 구현

