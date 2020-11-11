function[] = Huffman_coding_algorithm

disp("only use alphabets from 'a' to 'j'");
%prompt = "Enter the sentences with 10 symbols: ";
%sent = input(prompt, 's');

%랜덤 추출
n = 10; %n : # of symbols
k = 100; %k : length of sentence

%prob : appearance probability for each alphabet
prob = [0.25, 0.05, 0.04, 0.07, 0.15, 0.08, 0.06, 0.1, 0.17, 0.03];
%frequency of each alphabet
sam = k.*prob;

%sam을 copy해서 original 생성
orig = repmat(sam,1);

m1 = min(orig);
%delete m1 from orig
orig = orig(abs(orig - m1) > eps(100));
%delete m2 from orig
m2 = min(orig);
orig = orig(abs(orig - m2) > eps(100));

%using comp to get comp_sum
comp = [m1, m2];
comp_sum = sum(comp);
mat_comp_sum = (comp_sum);
mat_check = (comp);

%mat_main과 mat_change 때문에 꼬이는 일 없게.
%mat_change = repmat(comp, 1);

%copy comp for moving elements to mat_main
mat_main = repmat(comp,1);

%얼마나 반복하는 지
cnt = 1;


for count = 1:2
    
%to check left elements in orig
m_i = min(orig);
%to get m_i and m_b before using orig
check = repmat(orig,1);
%delete m_i from check
check = check(abs(check - m_i) > eps(100));
m_b = min(check);
%delete m_b from check
%check = check(abs(check - m_b) > eps(100));

if( (comp_sum < m_i) && ( (m_b - m_i) > 5 )  )
    disp("break");
    %break
    
%else compare m_i and comp_sum
elseif ( (comp_sum < m_i) && ( (m_b - m_i) < 5 )  )
    disp("case2");
    if ( comp_sum < m_i )
        mat_change = horzcat(mat_change, m_i);
    else
        mat_change = horzcat(m_i, mat_change);
    end
    
elseif ( (comp_sum < m_i) && ( (m_b - m_i) >= 5 )  )
    disp("case3");
    if ( comp_sum < m_i )
        mat_change = horzcat(mat_change, m_i);
    else
        mat_change = horzcat(m_i, mat_change);
    end
    
else
    disp("case1");
    %if the difference between m_i and m_b
    %make leaf nodes with m_i and m_b

    comp = [m_i, m_b];
    %delete m_i and m_b from orig
    orig = orig(abs(orig - m_i) > eps(100));
    orig = orig(abs(orig - m_b) > eps(100));
end

cnt = cnt + 1;
comp_sum = sum(comp);
mat_comp_sum = [mat_comp_sum, comp_sum];
mat_check = [mat_check, comp];
mat_main = repmat(comp, 1);

end %end for "for"

%여기까지는 1차 분류 완료





end
