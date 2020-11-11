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


2. case 2 : probability = [0.22, 0.1, 0.09, 0.08, 0.18, 0.07, 0.01, 0.03, 0.2, 0.02]


3. case 3 : probabiltiy = [0.23, 0.1, 0.06, 0.09, 0.2, 0.03, 0.02, 0.01, 0.22, 0.04]
