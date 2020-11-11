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
  - 4 input multiplexer
  - 4 bit rippple carry adder

### test execution

#### 1. decoder simulation

- decoder module을 simulation sources에서 top module로 지정

- Run Simulation

- add_force commands 입력
  ```
  add_force {/decoder/enable} -radix bin {1 10ns} {0 100ns}
  add_force {/decoder/c} -radix bin {0 10ns} {1 20ns} -repeat_every 20ns
  add_force {/decoder/b} -radix bin {0 10ns} {1 30ns} -repeat_every 40ns
  add_force {/decoder/a} -radix bin {0 10ns} {1 50ns} -repeat_every 80ns
  run 200ns
  ```
  
#### 2. 4-input multiplexer

- 4 input multiplexer를 simulation sources에서 top module로 지정

- Run Simulation

- add_force commands 입력
  ```
  add_force {/mux_4/a} -radix bin {11 10ns}
  add_force {/mux_4/b} -radix bin {10 10ns}
  add_force {/mux_4/c} -radix bin {01 10ns}
  add_force {/mux_4/d} -radix bin {00 10ns}
  add_force {/mux_4/sel} -radix bin {00 10ns} {01 20ns} {10 30ns} {11 40ns} -repeat_every 40ns
  run 100ns
  ```

#### 3. 4-bit ripple-carry adder

- 4 bit ripple carry adder module을 simulation sources에서 top module로 지정

- Run Simulation

- add_force commands 입력
  ```
  add_force {/ripple_carry_adder/x} -radix unsigned {2 10ns} {6 20ns} {11 30ns} {15 40ns} -repeat_every 40ns
  add_force {/ripple_carry_adder/y} -radix unsigned {0 10ns} {5 20ns} {9 30ns} {15 40ns} -repeat_every 40ns
  add_force {/ripple_carry_adder/sub} -radix bin {0 10ns} {1 50ns}
  run 100ns
  ```

### results

#### 1. decoder simulation

![image](https://user-images.githubusercontent.com/45198475/98807309-ca541a80-245d-11eb-88ac-f8b67417f186.png)

#### 2. 4 input multiplexer

![image](https://user-images.githubusercontent.com/45198475/98807914-b3fa8e80-245e-11eb-8557-927081279b99.png)

#### 3. 4 bit ripple carry adder

![image](https://user-images.githubusercontent.com/45198475/98808534-9da10280-245f-11eb-9813-2c311242250d.png)




### 실습2

- verilog HDL을 이용한 sequential logic circuit 설계
  - JK flip flop
  - 4 bit synchronous BCD counter
  - finite state machine (FSM)
  
  
### test execution

#### 1. JK flip flop

- jk_ff.v 작성

- tb_jk_ff.v 작성

- 완성된 testbench를 simulation sources에서 top으로 지정

- Run Simulation

#### 2. 4 bit synchronous BCD counter

- 10개의 BCD 코드 값 (0000, 0001, ,,, , 1001)을 상태 값으로 가지는 counter

- 4 bit라서 4개의 flip flop 필요

- bcd_counter.v 작성

- tb_bcd_counter.v 작성

- 완성된 testbench를 simulation sources에서 top으로 지정

- Run Simulation

#### 3. FSM : vending machine

- vending_machine.v 작성
 
- tb_vending_machine.v 작성

- 완성된 testbench를 simulation sources에서 top으로 지정

- Run Simulation

### results

#### 1. JK filp flop

![image](https://user-images.githubusercontent.com/45198475/98810617-d68ea680-2462-11eb-8311-cc49e67525ad.png)

#### 2. 4 bit BCD counter

![image](https://user-images.githubusercontent.com/45198475/98811226-d511ae00-2463-11eb-9567-6780a2458a9b.png)


#### 3. FSM : vending machine

![image](https://user-images.githubusercontent.com/45198475/98811283-f1ade600-2463-11eb-892f-51a2d7db6db5.png)
