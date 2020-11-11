function[p1_sum, p2_sum, possA_sel, possB_sel, mat_possA, mat_possB] = computation(ii, poss_sel, before_i, before_ii, p_sum, mat_ch)
%second start ~

i = ii - 1; %odd
possA_sel = poss_sel;
possB_sel = poss_sel;

if ( (poss_sel(before_i) == 0) && (poss_sel(before_ii) == 0) )
    mat_possA(i) = 0;
    mat_possA(ii) = 0;
    mat_possB(i) = 1;
    mat_possB(ii) = 1;
            
    possA_sel(i) = 0;
    possA_sel(ii) = 0;
    possB_sel(i) = 1;
    possB_sel(ii) = 0;
          
elseif ( (poss_sel(before_i) == 0) && (poss_sel(before_ii) == 1) )
    mat_possA(i) = 1;
    mat_possA(ii) = 1;
    mat_possB(i) = 0;
    mat_possB(ii) = 0;
            
    possA_sel(i) = 0;
    possA_sel(ii) = 0;
    possB_sel(i) = 1;
    possB_sel(ii) = 0;
            
elseif ( (poss_sel(before_i) == 1) && (poss_sel(before_ii) == 0) )
    mat_possA(i) = 1;
    mat_possA(ii) = 0;
    mat_possB(i) = 0;
    mat_possB(ii) = 1;
            
    possA_sel(i) = 0;
    possA_sel(ii) = 1;
    possB_sel(i) = 1;
    possB_sel(ii) = 1;
            
else
    mat_possA(i) = 0;
    mat_possA(ii) = 1;
    mat_possB(i) = 1;
    mat_possB(ii) = 0;
            
    possA_sel(i) = 0;
    possA_sel(ii) = 1;
    possB_sel(i) = 1;
    possB_sel(ii) = 1;
            
end

    %if equal, logical 1
    p1_a1 = xor(mat_possA(i), mat_ch(i));
    p1_a2 = xor(mat_possA(ii), mat_ch(ii));
    p2_a1 = xor(mat_possB(i), mat_ch(i));
    p2_a2 = xor(mat_possB(ii), mat_ch(ii));

    p1_a = p1_a1 + p1_a2;
    p2_a = p2_a1 + p2_a2;

    %if p1_a <= p2_a
    %    poss_de(index) = 0;
    %else
    %    poss_de(index) = 1;
    %end
    
    p1_sum = p1_a + p_sum;
    p2_sum = p2_a + p_sum;

end
