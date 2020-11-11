# channel_coding

## RESULTS





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
