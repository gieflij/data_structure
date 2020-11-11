function [mat_ori, mat_de, cnt_eq, cnt_neq] = channel_coding

%bit num : n
n = 1000;

%source decoding
mat_ori = [1,n];
for i = 1:n
    if rand < 0.5
        mat_ori(i) = 0;
    else
        mat_ori(i) = 1;
    end
end

%size(b,2)

B = zeros(1,2); %to think x[-1], x[-2] case
Mat = horzcat(B,mat_ori);
%Mat = [B,b];

%encoder
%convolutional code: shift register
for i = 3 : n+2
    i_ind2 = i - 2;
    i_ind1 = i - 1;
    p1(i_ind2) = xor(Mat(i), Mat(i_ind2));
    p0(i_ind2) = xor(Mat(i_ind1), p1(i_ind2));
end

for i = 1:n
    ii = 2*i - 1;
    mat_en(ii) = p1(i);
end

for i = 1:n
    ii = 2*i;
    mat_en(ii) = p0(i);
end

%bsc(data,probability) passes the binary input signal data through 
%a binary symmetric channel having the specified error probability. 
mat_ch = bsc(mat_en, 0.3);
%mat_ch = bsc(mat_en, 0);

%decoder
%viterbi algorithm (we always start "00")

%start: 00
mat_poss1(1) = 0;
mat_poss1(2) = 0;
mat_poss2(1) = 1;
mat_poss2(2) = 1;

poss1_sel(1) = 0;
poss1_sel(2) = 0;
poss2_sel(1) = 1;
poss2_sel(2) = 0;

%if equal, logical 1
p1_a1 = xor(mat_poss1(1), mat_ch(1));
p1_a2 = xor(mat_poss1(2), mat_ch(2));
p2_a1 = xor(mat_poss2(1), mat_ch(1));
p2_a2 = xor(mat_poss2(2), mat_ch(2));

p1_a = p1_a1 + p1_a2;
p2_a = p2_a1 + p2_a2;

%maybe don't need two paths at the very first
if p1_a < p2_a
    poss_de(1) = 0;
elseif p2_a < p1_a
    poss_de(1) = 1;
else
    poss1a_de(1) = 0;
    poss1b_de(1) = 1;
end

p1_sum = p1_a;
p2_sum = p2_a;

before_i = 1;
before_ii = 2;

%function[p1_sum, p2_sum, poss_de, poss1_sel, poss2_sel, mat_poss1, mat_poss2] = computation(ii, poss_sel, before_i, before_ii, p_sum)

%2nd
%make path as one
ii = 4;
index = 2; %ii/2
if p1_sum == 0
    p_sum = p1_sum;
    [p1_sum, p2_sum, poss1_sel, poss2_sel, mat_poss1, mat_poss2] = computation(ii, poss1_sel, before_i, before_ii, p_sum, mat_ch);
    [possA_de, possB_de, possA_sel, possB_sel, mat_possA, mat_possB, pA_sum, pB_sum] = set_path_simple(index, p1_sum, p2_sum, poss_de, poss1_sel, poss2_sel, mat_poss1, mat_poss2);
elseif p2_sum == 0
    p_sum = p2_sum;
    [p1_sum, p2_sum, poss1_sel, poss2_sel, mat_poss1, mat_poss2] = computation(ii, poss2_sel, before_i, before_ii, p_sum, mat_ch);
    [possA_de, possB_de, possA_sel, possB_sel, mat_possA, mat_possB, pA_sum, pB_sum] = set_path_simple(index, p1_sum, p2_sum, poss_de, poss1_sel, poss2_sel, mat_poss1, mat_poss2);
else
    possT1_sel = poss1_sel;
    possT2_sel = poss2_sel;
    pT1_sum = p1_sum;
    pT2_sum = p2_sum;
    [p1_sum, p2_sum, poss1_sel, poss2_sel, mat_poss1, mat_poss2] = computation(ii, possT1_sel, before_i, before_ii, pT1_sum, mat_ch);
    [p3_sum, p4_sum, poss3_sel, poss4_sel, mat_poss3, mat_poss4] = computation(ii, possT2_sel, before_i, before_ii, pT2_sum, mat_ch);
    [possA_de, possB_de, possA_sel, possB_sel, mat_possA, mat_possB, pA_sum, pB_sum] = set_path(index, p1_sum, p2_sum, p3_sum, p4_sum, poss1a_de, poss1b_de, poss1_sel, poss2_sel, poss3_sel, poss4_sel, mat_poss1, mat_poss2, mat_poss3, mat_poss4);
    %if p1_a == p2_a
    %[possA_de, possB_de, possA_sel, possB_sel, mat_possA, mat_possB, pA_sum, pB_sum] = set_path2(index, pT1_sum, pT2_sum, p1_sum, p2_sum, p3_sum, p4_sum, poss1a_de, poss1b_de, poss1_sel, poss2_sel, poss3_sel, poss4_sel, mat_poss1, mat_poss2, mat_poss3, mat_poss4);
    %else
    %[possA_de, possB_de, possA_sel, possB_sel, mat_possA, mat_possB, pA_sum, pB_sum] = set_path2(index, pT1_sum, pT2_sum, p1_sum, p2_sum, p3_sum, p4_sum, poss_de, poss_de, poss1_sel, poss2_sel, poss3_sel, poss4_sel, mat_poss1, mat_poss2, mat_poss3, mat_poss4);
    %end 
end

before_i = before_i + 2; %3
before_ii = before_ii + 2; %4

%3rd ~
%choose only two paths
for ii = 6 : 2 : 2*n
    index = ii/2;
    possT1_sel = possA_sel;
    possT2_sel = possB_sel;
    pT1_sum = pA_sum;
    pT2_sum = pB_sum;
    
    [p1_sum, p2_sum, poss1_sel, poss2_sel, mat_poss1, mat_poss2] = computation(ii, possT1_sel, before_i, before_ii, pT1_sum, mat_ch);
    [p3_sum, p4_sum, poss3_sel, poss4_sel, mat_poss3, mat_poss4] = computation(ii, possT2_sel, before_i, before_ii, pT2_sum, mat_ch);
    %[possA_de, possB_de, possA_sel, possB_sel, mat_possA, mat_possB, pA_sum, pB_sum] = set_path(index, p1_sum, p2_sum, p3_sum, p4_sum, possA_de, possB_de, poss1_sel, poss2_sel, poss3_sel, poss4_sel, mat_poss1, mat_poss2, mat_poss3, mat_poss4);
    [possA_de, possB_de, possA_sel, possB_sel, mat_possA, mat_possB, pA_sum, pB_sum] = set_path2(index, pT1_sum, pT2_sum, p1_sum, p2_sum, p3_sum, p4_sum, possA_de, possB_de, poss1_sel, poss2_sel, poss3_sel, poss4_sel, mat_poss1, mat_poss2, mat_poss3, mat_poss4);

    
    before_i = before_i + 2;
    before_ii = before_ii + 2;
end

%find the best path

%if pA_sum < pB_sum
%    mat_de = possA_de;
%else
%    mat_de = possB_de;
%end

if pA_sum < pB_sum
    mat_de = possA_de;
elseif pB_sum < pA_sum
    mat_de = possB_de;
else
    if rand < 0.5
        mat_de = possA_de;
    else
        mat_de = possB_de;
    end
end

com_mat = eq(mat_de, mat_ori);

cnt_neq = 0;
cnt_eq = 0;

for i = 1:n
    if com_mat(i) == 0
        cnt_neq = cnt_neq + 1;
    else
        cnt_eq = cnt_eq + 1;
    end
end


end
