function[possDA_de, possDB_de, possA_sel, possB_sel, mat_possA, mat_possB, pA_sum, pB_sum] = set_path(index, p1_sum, p2_sum, p3_sum, p4_sum, possRA_de, possRB_de, poss1_sel, poss2_sel, poss3_sel, poss4_sel, mat_poss1, mat_poss2, mat_poss3, mat_poss4)

PS_com = [p1_sum, p2_sum, p3_sum, p4_sum];
PS_com = sort(PS_com);

possTA_de = possRA_de;
possTB_de = possRB_de;


%if have two paths
%first path
if PS_com(1) ~= PS_com(2)
    if PS_com(1) == p1_sum
        possTTA_de = possTA_de;
        possTTA_de(index) = 0;
        possA_sel = poss1_sel;
        mat_possA = mat_poss1;
        pA_sum = p1_sum;
    elseif PS_com(1) == p2_sum
        possTTA_de = possTA_de;
        possTTA_de(index) = 1;
        possA_sel = poss2_sel;
        mat_possA = mat_poss2;
        pA_sum = p2_sum;
    elseif PS_com(1) == p3_sum
        possTTA_de = possTB_de;
        possTTA_de(index) = 0;
        possA_sel = poss3_sel;
        mat_possA = mat_poss3;
        pA_sum = p3_sum;
    elseif PS_com(1) == p4_sum
        possTTA_de = possTB_de;
        possTTA_de(index) = 1;
        possA_sel = poss4_sel;
        mat_possA = mat_poss4;
        pA_sum = p4_sum;
    end
    %second path
    if PS_com(2) == p1_sum
        possTTB_de = possTA_de;
        possTTB_de(index) = 0;
        possB_sel = poss1_sel;
        mat_possB = mat_poss1;
        pB_sum = p1_sum;
    elseif PS_com(2) == p2_sum
        possTTB_de = possTA_de;
        possTTB_de(index) = 1;
        possB_sel = poss2_sel;
        mat_possB = mat_poss2;
        pB_sum = p2_sum;
    elseif PS_com(2) == p3_sum
        possTTB_de = possTB_de;
        possTTB_de(index) = 0;
        possB_sel = poss3_sel;
        mat_possB = mat_poss3;
        pB_sum = p3_sum;
    elseif PS_com(2) == p4_sum
        possTTB_de = possTB_de;
        possTTB_de(index) = 1;
        possB_sel = poss4_sel;
        mat_possB = mat_poss4;
        pB_sum = p4_sum;
    end

else
%if PS_com(1) == PS_com(2)
if (PS_com(1) == p1_sum)
    if  p1_sum == p2_sum
        possTTA_de = possTA_de;
        possTTA_de(index) = 0;
        possA_sel = poss1_sel;
        mat_possA = mat_poss1;
        pA_sum = p1_sum;
        possTTB_de = possTA_de;
        possTTB_de(index) = 1;
        possB_sel = poss2_sel;
        mat_possB = mat_poss2;
        pB_sum = p2_sum;
    
    elseif p1_sum == p3_sum
        possTTA_de = possTA_de;
        possTTA_de(index) = 0;
        possA_sel = poss1_sel;
        mat_possA = mat_poss1;
        pA_sum = p1_sum;
        possTTB_de = possTB_de;
        possTTB_de(index) = 0;
        possB_sel = poss3_sel;
        mat_possB = mat_poss3;
        pB_sum = p3_sum;

    elseif p1_sum == p4_sum
        possTTA_de = possTA_de;
        possTTA_de(index) = 0;
        possA_sel = poss1_sel;
        mat_possA = mat_poss1;
        pA_sum = p1_sum;
        possTTB_de = possTB_de;
        possTTB_de(index) = 1;
        possB_sel = poss4_sel;
        mat_possB = mat_poss4;
        pB_sum = p4_sum;
    end

elseif ( (PS_com(1) == p2_sum) && (p2_sum ~= p1_sum) )
    if p2_sum == p3_sum
        possTTA_de = possTA_de;
        possTTA_de(index) = 1;
        possA_sel = poss2_sel;
        mat_possA = mat_poss2;
        pA_sum = p2_sum;
        possTTB_de = possTB_de;
        possTTB_de(index) = 0;
        possB_sel = poss3_sel;
        mat_possB = mat_poss3;
        pB_sum = p3_sum;
    elseif p2_sum == p4_sum
        possTTA_de = possTA_de;
        possTTA_de(index) = 1;
        possA_sel = poss2_sel;
        mat_possA = mat_poss2;
        pA_sum = p2_sum;
        possTTB_de = possTB_de;
        possTTB_de(index) = 1;
        possB_sel = poss4_sel;
        mat_possB = mat_poss4;
        pB_sum = p4_sum;
    end

elseif ( (PS_com(1) == p3_sum) && (p3_sum ~= p1_sum) && (p3_sum ~= p2_sum) )
    if p3_sum == p4_sum
        possTTA_de = possTB_de;
        possTTA_de(index) = 0;
        possA_sel = poss3_sel;
        mat_possA = mat_poss3;
        pA_sum = p3_sum;
        possTTB_de = possTB_de;
        possTTB_de(index) = 1;
        possB_sel = poss4_sel;
        mat_possB = mat_poss4;
        pB_sum = p4_sum;
    end
end
end

possDA_de = possTTA_de;
possDB_de = possTTB_de;


end
