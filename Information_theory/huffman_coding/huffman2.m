%using notation of queue
%huffman 2랑 3이 조금 다름
function [] = huffman2
%prob = [0.22, 0.1, 0.09, 0.08, 0.18, 0.07, 0.01, 0.03, 0.2, 0.02];
%prob = [0.25, 0.05, 0.04, 0.07, 0.15, 0.08, 0.06, 0.1, 0.17, 0.03];
%prob = [0.23, 0.1, 0.06, 0.09, 0.2, 0.03, 0.02, 0.01, 0.22, 0.04];
n = 10; %n : # of symbols
k = 100; %k : length of sentence

%prob : appearance probability for each alphabet
prob = [0.22, 0.1, 0.09, 0.08, 0.18, 0.07, 0.01, 0.03, 0.2, 0.02];
%frequency of each alphabet
%for using abs, need to use "int8"
sam = int8(k.*prob);
%sam을 copy해서 original 생성
orig = repmat(sam,1);

%젤 아래는 comp1, comp2
%맨 밑에서부터 1st로 생각, queue1
m1 = min(orig);
%delete m1 from orig
orig = orig(abs(orig - m1) > eps(100));
%delete m2 from orig
m2 = min(orig);
orig = orig(abs(orig - m2) > eps(100));
comp1 = [m1, m2];

m3 = min(orig);
orig = orig(abs(orig - m3) > eps(100));
m4 = min(orig);
orig = orig(abs(orig - m4) > eps(100));
comp3 = [m3, m4];
queue1 = [comp1, comp3];
disp("queue1");
disp(queue1);

%아래에서 두번째니까 queue2, queue_sum2
m5 = min(orig);
orig = orig(abs(orig - m5) > eps(100));
m6 = min(orig);
orig = orig(abs(orig - m6) > eps(100));

if( abs(sum(comp1) - m5) ~= int8(0) )
    if( m5 < sum(comp1) )
        queue2_l = [m5, comp1];
    else
        queue2_l = [comp1, m5];
    end
    if( m6 < sum(comp3) )
        queue2_r = [m6, comp3];
    else
        queue2_r = [comp3, m6];
    end
else
    if( m5 < sum(comp3) )
        queue2_l = [m5, comp3];
    else
        queue2_l = [comp3, m5];
    end
    if( m6 < sum(comp1))
        queue2_r = [m6, comp1];
    else
        queue2_r = [comp1, m6];
    end
end
queue2 = [queue2_l, queue2_r];
disp("queue2");
disp(queue2);
    
%아래에서 세번째니까 queue3, queue_sum3
m7 = min(orig);
orig = orig(abs(orig - m7) > eps(100));
m8 = min(orig);
orig = orig(abs(orig - m8) > eps(100));

if( abs(sum(queue2_l) - m7) ~= int8(0) )
    if( m7 < sum(queue2_l) )
        queue3_l = [m7, queue2_l];
    else
        queue3_l = [queue2_l, m7];
    end
    if( m8 < sum(queue2_r) )
        queue3_r = [m8, queue2_r];
    else
        queue3_r = [queue2_r, m8];
    end
else
    if( m7 < sum(queue2_r) )
        queue3_r = [m7, queue2_r];
    else
        queue3_r = [queue2_r, m7];
    end
    if( m8 < sum(queue2_l))
        queue3_l = [m8, queue2_l];
    else
        queue3_l = [queue2_l, m8];
    end
end
queue3 = [queue3_l, queue3_r];
disp("queue3");
disp(queue3);

%아래에서 네번째니까 queue4, queue_sum4
m9 = min(orig);
orig = orig(abs(orig - m9) > eps(100));
m10 = min(orig);

if( abs(sum(queue3_l) - m9) ~= int8(0) )
    if( m9 < sum(queue3_l) )
        queue4_l = [m9, queue3_l];
    else
        queue4_l = [queue3_l, m9];
    end
    if( m10 < sum(queue3_r) )
        queue4_r = [m10, queue3_r];
    else
        queue4_r = [queue3_r, m10];
    end
else
    if( m9 < sum(queue3_r) )
        queue4_r = [m9, queue3_r];
    else
        queue4_r = [queue3_r, m9];
    end
    if( m10 < sum(queue3_l))
        queue4_l = [m10, queue3_l];
    else
        queue4_l = [queue3_l, m10];
    end
end
queue4 = [queue4_l, queue4_r];
disp("queue4");
disp(queue4);


end
