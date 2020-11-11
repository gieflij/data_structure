# Huffman coding

## Basic rules

- huffman coding algorithm은 아래에서부터 위로 가는 순서로 coding tree를 만듦
- coding tree의 왼쪽 leaf가 오른쪽 leaf보다 덜 빈번하게 나타나는 알파벳을 지니도록 설정

- 'a'에서 'j'까지 10개의 알파벳만 사용하여 100개의 알파벳을 사용하는 한 문장을 만드는 것을 가정

- 총 4개의 queue를 만들고 algorithm 종료

## Results

각 probability는 test를 위해 임의로 설정한 것

각 elements들을 합산하면 1을 만족


1. case 1 : probability = [0.25, 0.05, 0.04, 0.07, 0.15, 0.08, 0.06, 0.1, 0.17, 0.03]

![case1_r1](https://user-images.githubusercontent.com/45198475/98782703-d202c780-243b-11eb-8687-901ee43b5f28.PNG)
![case1_r2](https://user-images.githubusercontent.com/45198475/98782708-d3cc8b00-243b-11eb-98b9-18c7830c830c.PNG)



2. case 2 : probability = [0.22, 0.1, 0.09, 0.08, 0.18, 0.07, 0.01, 0.03, 0.2, 0.02]

![case2_r1](https://user-images.githubusercontent.com/45198475/98782712-d5964e80-243b-11eb-89e4-6131f7e9692f.PNG)
![case2_r2](https://user-images.githubusercontent.com/45198475/98782718-d7601200-243b-11eb-8d77-fa0d71cd5561.PNG)


3. case 3 : probabiltiy = [0.23, 0.1, 0.06, 0.09, 0.2, 0.03, 0.02, 0.01, 0.22, 0.04]

![case3_r1](https://user-images.githubusercontent.com/45198475/98782728-d929d580-243b-11eb-95aa-7feab6d76ebb.PNG)
![case3_r2](https://user-images.githubusercontent.com/45198475/98782734-daf39900-243b-11eb-93a0-a63ad25769e0.PNG)
