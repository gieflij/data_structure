# SoC programming

## HW

### adder 설명

1. half adder: 2개의 bit를 더하는 덧셈기
2. full adder: carry bit을 포함해서 3개의 bit를 더하는 덧셈기
3. ripple carry adder: full adder들을 연결하여 만듦
4. carry look ahead adder: 모든 carry bit들을 동시에 발생시킴, carry delay를 줄이기 위함

### two level carry-look-ahead adder

look ahead span을 줄이기 위해서 carry-look-ahead adder로 구현된 group 이용

group size는 4로 설정

16 bits two level carry look ahead adder 설계

총 4개의 module로 구성: adder, clag, cla_4bits, cla_16bits

### Result

testbench 결과 저장 : result.txt

![image](https://user-images.githubusercontent.com/45198475/98804939-37fe4780-245a-11eb-8a05-ab203929ce2d.png)


## project

## studying_verilog

### 실습1

- verilog HDL을 이용한 combinational logic circuit 설계
  - 3-to-8 decoder
  - 2 input multiplexer, 4 input multiplexer
  - 4 bit rippple carry adder

### test execution

1. decoder simulation

- decoder module을 simulation sources에서 top module로 설정

- add_force command 입력
  ```
  add_force{/decoder/enable} -radix bin {1 10ns} {0 100ns}
  add_force {/decoder/c} -radix bin {0 10ns} {1 20ns} -repeat_every20ns
  add_force {/decoder/b} -radix bin {0 10ns} {1 30ns} -repeat_every40ns
  add_force {/decoder/a} -radix bin {0 10ns} {1 50ns} -repeat_every80ns
  run 200ns
  ```


### 실습2

- verilog HDL을 이용한 sequential logic circuit 설계
  - JK flip flop
  - 4 bit synchronous BCD counter
  - finite state machine (FSM)
