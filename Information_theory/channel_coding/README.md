# channel_coding


Channel encoder, channel and channel decoder construct a basic model for the information theory.
-------------------------------------------------------
![code_no](https://user-images.githubusercontent.com/45198475/98775119-cc06e980-242f-11eb-93f7-f86c53695c5d.PNG)
--------------------------------------------------------
Encoder는 shift registers의 개념 이용

Decoder는 Viterbi algorithm을 이용해서 구상

Channel은 p = 0일 때의 BSC (Binary Symmetric Channel) 이용

## Convolutional code encoding: shift register
---------------------------------------------
![shift_register](https://user-images.githubusercontent.com/45198475/98774886-3ff4c200-242f-11eb-9f44-408003c69687.PNG)
---------------------------------------------

## Convolutional code decoding: viterbi algorithm
--------------------------------------------------
![viterbi](https://user-images.githubusercontent.com/45198475/98774889-42571c00-242f-11eb-8c7f-35ce97428ad8.PNG)
---------------------------------------------------
- Viterbi algorithm tracks the smallest path metric based on hamming distance.
- Hamming distance can be decided by comparing the received bits and the output bits.
- Choose the smallest hamming distance and decide bits.

## Test execution

figure 1과 2로 결과 확인 가능
```
test_channel
```
**channel_coding.m**에서 mat_ch = bsc(mat_en, 0.3)에서 0.3은 p를 의미함
p = 0 인 경우를 test 하고 싶을 경우 0.3 대신 0으로 입력


## Results

1. BSC에서 p = 0 일 경우
![p_0](https://user-images.githubusercontent.com/45198475/98780506-33289c00-2438-11eb-96ba-a5b3f95a6b6e.PNG)

  - 빨간색은 not equal bit
  - 파란색은 equal bit
  - 1000번을 시도했고 모두 비슷한 결과 도출
  - error probabiltiy mean은 0.3338로 고정

2. BSC에서 p = 0.3 일 
![p_0 3](https://user-images.githubusercontent.com/45198475/98780512-358af600-2438-11eb-9584-9649c87b9b71.PNG)

  - p = 0인 경우에 비해 not equal bit의 수가 증가
  - error probability mean은 0.4726
