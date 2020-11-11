function[possDA_de, possDB_de, possA_sel, possB_sel, mat_possA, mat_possB, pA_sum, pB_sum] = set_path2(index, pT1_sum, pT2_sum, p1_sum, p2_sum, p3_sum, p4_sum, possRA_de, possRB_de, poss1_sel, poss2_sel, poss3_sel, poss4_sel, mat_poss1, mat_poss2, mat_poss3, mat_poss4)

PS_com = [p1_sum, p2_sum, p3_sum, p4_sum];
PS_com = sort(PS_com);

possTA_de = possRA_de;
possTB_de = possRB_de;

%check equality
% equal -> 1(true), not eqaul -> 0(false)
F1 = eq(p1_sum, p2_sum);
F2 = eq(p1_sum, p3_sum);
F3 = eq(p1_sum, p4_sum);
F4 = eq(p2_sum, p3_sum);
F5 = eq(p2_sum, p4_sum);
F6 = eq(p3_sum, p4_sum);

check_p2 = 0;
check_p3 = 0;
ch = 1;

%check p1 and others' relation
if F1 == 1
    if F2 == 1
        if F3 == 1
            ch = 6;
        else %F3 == 0, p1_sum = p2_sum = p3_sum
            if PS_com(1) == p1_sum
                if pT2_sum < pT1_sum
                    possTTA_de = possTB_de;
                    possTTA_de(index) = 0;
                    possA_sel = poss3_sel;
                    mat_possA = mat_poss3;
                    pA_sum = p3_sum;
                    possTTB_de = possTA_de;
                    possTTB_de(index) = 0;
                    possB_sel = poss1_sel;
                    mat_possB = mat_poss1;
                    pB_sum = p1_sum;
                else
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
                end
            elseif PS_com(1) == p4_sum
                possTTA_de = possTB_de;
                possTTA_de(index) = 1;
                possA_sel = poss4_sel;
                mat_possA = mat_poss4;
                pA_sum = p4_sum;
                %if p4_sum is smallest, then of course, pT2_sum <= pT1_sum
                if pT1_sum < pT2_sum
                    possTTA_de = possTA_de;
                    possTTA_de(index) = 0;
                    possA_sel = poss1_sel;
                    mat_possA = mat_poss1;
                    pA_sum = p1_sum;
                else
                    possTTB_de = possTB_de;
                    possTTB_de(index) = 0;
                    possB_sel = poss3_sel;
                    mat_possB = mat_poss3;
                    pB_sum = p3_sum;
                end
            end %S_com(1) == p1_sum
        end %F3 == 1
    else % when F2 == 0, F1 == 1
        if F3 == 1 %p1_sum = p2_sum = p4_sum
            if PS_com(1) == p1_sum
                if pT2_sum < pT1_sum
                    possTTA_de = possTB_de;
                    possTTA_de(index) = 1;
                    possA_sel = poss4_sel;
                    mat_possA = mat_poss4;
                    pA_sum = p4_sum;
                    possTTB_de = possTA_de;
                    possTTB_de(index) = 0;
                    possB_sel = poss1_sel;
                    mat_possB = mat_poss1;
                    pB_sum = p1_sum;
                else
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
                end
            elseif PS_com(1) == p3_sum
                possTTA_de = possTB_de;
                possTTA_de(index) = 0;
                possA_sel = poss3_sel;
                mat_possA = mat_poss3;
                pA_sum = p3_sum;
                if pT1_sum < pT2_sum
                    possTTB_de = possTA_de;
                    possTTB_de(index) = 0;
                    possB_sel = poss1_sel;
                    mat_possB = mat_poss1;
                    pB_sum = p1_sum;
                else
                    possTTB_de = possTB_de;
                    possTTB_de(index) = 1;
                    possB_sel = poss4_sel;
                    mat_possB = mat_poss4;
                    pB_sum = p4_sum;
                end
            end %PS_com(1) == p1_sum
        else %when F3 == 0, F1 == 1, F2 == 0 >> p1=p2
            if PS_com(1) == p1_sum %when p1_sum, p2_sum are smallest
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
            elseif F6 == 1 % p3_sum = p4_sum, p1=p2
                if PS_com(1) == p3_sum %p3_sum is smallest
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
            elseif F6 == 0 % p3_sum ~= p4_sum, p1=p2
                if PS_com(1) == p3_sum
                    possTTA_de = possTB_de;
                    possTTA_de(index) = 0;
                    possA_sel = poss3_sel;
                    mat_possA = mat_poss3;
                    pA_sum = p3_sum;
                    if PS_com(2) == p1_sum
                        possTTB_de = possTA_de;
                        possTTB_de(index) = 0;
                        possB_sel = poss1_sel;
                        mat_possB = mat_poss1;
                        pB_sum = p1_sum;
                    elseif PS_com(2) == p4_sum
                        possTTB_de = possTB_de;
                        possTTB_de(index) = 1;
                        possB_sel = poss4_sel;
                        mat_possB = mat_poss4;
                        pB_sum = p4_sum;
                    end
                elseif PS_com(1) == p4_sum %p4_sum is smallest
                    possTTA_de = possTB_de;
                    possTTA_de(index) = 1;
                    possA_sel = poss4_sel;
                    mat_possA = mat_poss4;
                    pA_sum = p4_sum;
                    if PS_com(2) == p1_sum
                        possTTB_de = possTA_de;
                        possTTB_de(index) = 0;
                        possB_sel = poss1_sel;
                        mat_possB = mat_poss1;
                        pB_sum = p1_sum;
                    elseif PS_com(2) == p3_sum
                        possTTB_de = possTB_de;
                        possTTB_de(index) = 0;
                        possB_sel = poss3_sel;
                        mat_possB = mat_poss3;
                        pB_sum = p3_sum;
                    end
                end %PS_com(1) == p3_sum
            end %PS_com(1) == p1_sum %when p1_sum, p2_sum are smallest
        end %F3 == 1
    end %F2 == 1
else %when F1 == 0
    if F2 == 1
        if F3 == 1 %p1_sum=p3_sum=p4_sum
            if PS_com(1) == p1_sum
                possTTA_de = possTA_de;
                possTTA_de(index) = 0;
                possA_sel = poss1_sel;
                mat_possA = mat_poss1;
                pA_sum = p1_sum;
                if pT2_sum < pT1_sum
                    possTTB_de = possTB_de;
                    possTTB_de(index) = 0;
                    possB_sel = poss3_sel;
                    mat_possB = mat_poss3;
                    pB_sum = p3_sum;
                else
                    possTTB_de = possTA_de;
                    possTTB_de(index) = 1;
                    possB_sel = poss2_sel;
                    mat_possB = mat_poss2;
                    pB_sum = p2_sum;
                end
            elseif PS_com(1) == p2_sum
                possTTA_de = possTA_de;
                possTTA_de(index) = 1;
                possA_sel = poss2_sel;
                mat_possA = mat_poss2;
                pA_sum = p2_sum;
                if pT2_sum < pT1_sum
                    possTTB_de = possTB_de;
                    possTTB_de(index) = 0;
                    possB_sel = poss3_sel;
                    mat_possB = mat_poss3;
                    pB_sum = p3_sum;
                else
                    possTTB_de = possTA_de;
                    possTTB_de(index) = 0;
                    possB_sel = poss1_sel;
                    mat_possB = mat_poss1;
                    pB_sum = p1_sum;
                end
            end %PS_com(1) == p1_sum
        else %when F3 == 0, F2 == 1, F1 == 0 >> p1_sum = p3_sum
            if PS_com(1) == p1_sum
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
            else
                if F5 == 1 %p2_sum = p4_sum
                    if PS_com(1) == p2_sum
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
                else % p2_sum ~= p4_sum, p1=p3
                    if PS_com(1) == p2_sum
                        possTTA_de = possTA_de;
                        possTTA_de(index) = 1;
                        possA_sel = poss2_sel;
                        mat_possA = mat_poss2;
                        pA_sum = p2_sum;
                        if PS_com(2) == p1_sum
                            if pT2_sum < pT1_sum
                                possTTB_de = possTB_de;
                                possTTB_de(index) = 0;
                                possB_sel = poss3_sel;
                                mat_possB = mat_poss3;
                                pB_sum = p3_sum;
                            else
                                possTTB_de = possTA_de;
                                possTTB_de(index) = 0;
                                possB_sel = poss1_sel;
                                mat_possB = mat_poss1;
                                pB_sum = p1_sum;
                            end
                        elseif PS_com(2) == p4_sum
                            possTTB_de = possTB_de;
                            possTTB_de(index) = 1;
                            possB_sel = poss4_sel;
                            mat_possB = mat_poss4;
                            pB_sum = p4_sum;
                        end
                    elseif PS_com(1) == p4_sum
                        possTTA_de = possTB_de;
                        possTTA_de(index) = 1;
                        possA_sel = poss4_sel;
                        mat_possA = mat_poss4;
                        pA_sum = p4_sum;
                        if PS_com(2) == p1_sum
                            if pT1_sum < pT2_sum
                                possTTB_de = possTA_de;
                                possTTB_de(index) = 0;
                                possB_sel = poss1_sel;
                                mat_possB = mat_poss1;
                                pB_sum = p1_sum;
                            else
                                possTTB_de = possTB_de;
                                possTTB_de(index) = 0;
                                possB_sel = poss3_sel;
                                mat_possB = mat_poss3;
                                pB_sum = p3_sum;
                            end
                        elseif PS_com(2) == p2_sum
                            possTTB_de = possTA_de;
                            possTTB_de(index) = 1;
                            possB_sel = poss2_sel;
                            mat_possB = mat_poss2;
                            pB_sum = p2_sum;
                        end
                    end 
                end % F5 == 1
            end %PS_com(1) == p1_sum
        end %F3 == 1
    else %when F2 == 0
        if F3 == 1 % only p1_sum = p4_sum
            if PS_com(1) == p1_sum %p1_sum and p4_sum are smallest
                if pT2_sum < pT1_sum
                    possTTA_de = possTB_de;
                    possTTA_de(index) = 1;
                    possA_sel = poss4_sel;
                    mat_possA = mat_poss4;
                    pA_sum = p4_sum;
                    possTTB_de = possTA_de;
                    possTTB_de(index) = 0;
                    possB_sel = poss1_sel;
                    mat_possB = mat_poss1;
                    pB_sum = p1_sum;
                else
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
            else % p1_sum and p4_sum are not the smallest
                if F4 == 1 %p2_sum = p3_sum, p1=p4
                    if PS_com(1) == p2_sum
                        if pT2_sum < pT1_sum
                            possTTA_de = possTB_de;
                            possTTA_de(index) = 0;
                            possA_sel = poss3_sel;
                            mat_possA = mat_poss3;
                            pA_sum = p3_sum;
                            possTTB_de = possTA_de;
                            possTTB_de(index) = 1;
                            possB_sel = poss2_sel;
                            mat_possB = mat_poss2;
                            pB_sum = p2_sum;
                        else
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
                        end
                    end
                else %when F4 == 0, p2_sum ~= p3_sum, p1=p4
                    if PS_com(1) == p2_sum
                        possTTA_de = possTA_de;
                        possTTA_de(index) = 1;
                        possA_sel = poss2_sel;
                        mat_possA = mat_poss2;
                        pA_sum = p2_sum;
                        if PS_com(2) == p1_sum
                            if pT2_sum < pT1_sum
                                possTTB_de = possTB_de;
                                possTTB_de(index) = 1;
                                possB_sel = poss4_sel;
                                mat_possB = mat_poss4;
                                pB_sum = p4_sum;
                            else
                                possTTB_de = possTA_de;
                                possTTB_de(index) = 0;
                                possB_sel = poss1_sel;
                                mat_possB = mat_poss1;
                                pB_sum = p1_sum;
                            end
                        elseif PS_com(2) == p3_sum
                            possTTB_de = possTB_de;
                            possTTB_de(index) = 0;
                            possB_sel = poss3_sel;
                            mat_possB = mat_poss3;
                            pB_sum = p3_sum;
                        end
                    elseif PS_com(1) == p3_sum
                        possTTA_de = possTB_de;
                        possTTA_de(index) = 0;
                        possA_sel = poss3_sel;
                        mat_possA = mat_poss3;
                        pA_sum = p3_sum;
                        if PS_com(2) == p1_sum
                            if pT1_sum < pT2_sum
                                possTTB_de = possTA_de;
                                possTTB_de(index) = 0;
                                possB_sel = poss1_sel;
                                mat_possB = mat_poss1;
                                pB_sum = p1_sum;
                            else
                                possTTB_de = possTB_de;
                                possTTB_de(index) = 1;
                                possB_sel = poss4_sel;
                                mat_possB = mat_poss4;
                                pB_sum = p4_sum;
                            end
                        elseif PS_com(2) == p2_sum 
                            possTTB_de = possTA_de;
                            possTTB_de(index) = 1;
                            possB_sel = poss2_sel;
                            mat_possB = mat_poss2;
                            pB_sum = p2_sum;
                        end
                    end %PS_com(1) == p2_sum
                end %F4 == 1
            end %PS_com(1) == p1_sum %p1_sum and p4_sum are smallest
        else %when F3 == 0
            check_p2 = 1;
            %ch = 0;
        end %F3 == 1
    end %F2 == 1
end %F1 == 1
        
%check p2 and others' relation
if check_p2 == 1
if F4 == 1
    if F5 == 1 % p2_sum = p3_sum = p4_sum
        if ( (F1 == 1) || (F2 == 1) || (F3 == 1) )
            ch = 6;
        else %F1 = 0, p1_sum ~= p2_sum
            if PS_com(1) == p1_sum
                possTTA_de = possTA_de;
                possTTA_de(index) = 0;
                possA_sel = poss1_sel;
                mat_possA = mat_poss1;
                pA_sum = p1_sum;
                if pT2_sum < pT1_sum
                    possTTB_de = possTB_de;
                    possTTB_de(index) = 0;
                    possB_sel = poss3_sel;
                    mat_possB = mat_poss3;
                    pB_sum = p3_sum;
                else
                    possTTB_de = possTA_de;
                    possTTB_de(index) = 1;
                    possB_sel = poss2_sel;
                    mat_possB = mat_poss2;
                    pB_sum = p2_sum;
                end
            elseif PS_com(1) == p2_sum %p2_sum, p3_sum, p4_sum are smallest
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
            end %PS_com(1) == p1_sum
        end %( (F1 == 1) || (F2 == 1) || (F3 == 1) )
    elseif ( (F5 == 0) && (F1 == 0) ) %p2_sum ~= p4_sum, p2_sum ~= p1_sum, p2=p3
        if PS_com(1) == p2_sum
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
        else %p4 or p1 is smallest
            if F3 == 1 % p1_sum = p4_sum, p2_sum = p3_sum
                if PS_com(1) == p1_sum
                    if pT2_sum < pT1_sum
                        possTTA_de = possTB_de;
                        possTTA_de(index) = 1;
                        possA_sel = poss4_sel;
                        mat_possA = mat_poss4;
                        pA_sum = p4_sum;
                        possTTB_de = possTA_de;
                        possTTB_de(index) = 0;
                        possB_sel = poss1_sel;
                        mat_possB = mat_poss1;
                        pB_sum = p1_sum;
                    else
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
                end
            else %F3 == 0, only p2_sum = p3_sum
                if PS_com(1) == p1_sum
                    possTTA_de = possTA_de;
                    possTTA_de(index) = 0;
                    possA_sel = poss1_sel;
                    mat_possA = mat_poss1;
                    pA_sum = p1_sum;
                    if PS_com(2) == p4_sum
                        possTTB_de = possTB_de;
                        possTTB_de(index) = 1;
                        possB_sel = poss4_sel;
                        mat_possB = mat_poss4;
                        pB_sum = p4_sum;
                    elseif PS_com(2) == p2_sum
                        if pT2_sum < pT1_sum
                            possTTB_de = possTB_de;
                            possTTB_de(index) = 0;
                            possB_sel = poss3_sel;
                            mat_possB = mat_poss3;
                            pB_sum = p3_sum;
                        else
                            possTTB_de = possTA_de;
                            possTTB_de(index) = 1;
                            possB_sel = poss2_sel;
                            mat_possB = mat_poss2;
                            pB_sum = p2_sum;
                        end
                    end
                elseif PS_com(1) == p4_sum
                    possTTA_de = possTB_de;
                    possTTA_de(index) = 1;
                    possA_sel = poss4_sel;
                    mat_possA = mat_poss4;
                    pA_sum = p4_sum;
                    if PS_com(2) == p1_sum
                        possTTB_de = possTA_de;
                        possTTB_de(index) = 0;
                        possB_sel = poss1_sel;
                        mat_possB = mat_poss1;
                        pB_sum = p1_sum;
                    elseif PS_com(2) == p2_sum
                        if pT1_sum < pT2_sum
                            possTTB_de = possTA_de;
                            possTTB_de(index) = 1;
                            possB_sel = poss2_sel;
                            mat_possB = mat_poss2;
                            pB_sum = p2_sum;
                        else
                            possTTB_de = possTB_de;
                            possTTB_de(index) = 0;
                            possB_sel = poss3_sel;
                            mat_possB = mat_poss3;
                            pB_sum = p3_sum;
                        end
                    end
                end %PS_com(1) == p1_sum
            end %F3 == 1
        end %PS_com(1) == p2_sum
    elseif ( (F5 == 0) && (F1 == 1) ) %p2_sum ~= p4_sum, p2_sum = p1_sum, p2 = p3
        if PS_com(1) == p2_sum
            if pT2_sum < pT1_sum
                possTTA_de = possTB_de;
                possTTA_de(index) = 0;
                possA_sel = poss3_sel;
                mat_possA = mat_poss3;
                pA_sum = p3_sum;
                possTTB_de = possTA_de;
                possTTB_de(index) = 0;
                possB_sel = poss1_sel;
                mat_possB = mat_poss1;
                pB_sum = p1_sum;
            else %pT1_sum <= pT2_sum
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
            end %pT2_sum < pT1_sum
        elseif PS_com(1) == p4_sum
            possTTA_de = possTB_de;
            possTTA_de(index) = 1;
            possA_sel = poss4_sel;
            mat_possA = mat_poss4;
            pA_sum = p4_sum;
            if pT1_sum < pT2_sum
                possTTB_de = possTA_de;
                possTTB_de(index) = 0;
                possB_sel = poss1_sel;
                mat_possB = mat_poss1;
                pB_sum = p1_sum;
            else
                possTTB_de = possTB_de;
                possTTB_de(index) = 0;
                possB_sel = poss3_sel;
                mat_possB = mat_poss3;
                pB_sum = p3_sum;
            end
        end %PS_com(1) == p2_sum
    end %F5 == 1
else %F4 == 0
    if F5 == 1
        if PS_com(1) == p2_sum
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
        else
            if ( (F2 == 1) && (F1 == 1) ) %all same
                ch = 6;
            elseif ( (F2 == 1) && (F1 == 0) ) %p1=p3, p2=p4
                if PS_com(1) == p1_sum
                    if pT2_sum < pT1_sum
                        possTTA_de = possTB_de;
                        possTTA_de(index) = 0;
                        possA_sel = poss3_sel;
                        mat_possA = mat_poss3;
                        pA_sum = p3_sum;
                        possTTB_de = possTA_de;
                        possTTB_de(index) = 0;
                        possB_sel = poss1_sel;
                        mat_possB = mat_poss1;
                        pB_sum = p1_sum;
                    else
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
                    end
                elseif PS_com(1) == p2_sum
                    if pT2_sum < pT1_sum
                        possTTA_de = possTB_de;
                        possTTA_de(index) = 1;
                        possA_sel = poss4_sel;
                        mat_possA = mat_poss4;
                        pA_sum = p4_sum;
                        possTTB_de = possTA_de;
                        possTTB_de(index) = 1;
                        possB_sel = poss2_sel;
                        mat_possB = mat_poss2;
                        pB_sum = p2_sum;
                    else
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
                end %PS_com(1) == p1_sum
            elseif ( (F2 == 0) && (F1 == 1) ) %p1=p2=p4 ~= p3
                if PS_com(1) == p3_sum
                    possTTA_de = possTB_de;
                    possTTA_de(index) = 0;
                    possA_sel = poss3_sel;
                    mat_possA = mat_poss3;
                    pA_sum = p3_sum;
                    if pT1_sum < pT2_sum
                        possTTB_de = possTA_de;
                        possTTB_de(index) = 0;
                        possB_sel = poss1_sel;
                        mat_possB = mat_poss1;
                        pB_sum = p1_sum;
                    else
                        possTTB_de = possTB_de;
                        possTTB_de(index) = 1;
                        possB_sel = poss4_sel;
                        mat_possB = mat_poss4;
                        pB_sum = p4_sum;
                    end
                elseif PS_com(1) == p1_sum
                    possTTA_de = possTA_de;
                    possTTA_de(index) = 0;
                    possA_sel = poss1_sel;
                    mat_possA = mat_poss1;
                    pA_sum = p1_sum;
                    if pT2_sum < pT1_sum
                        possTTB_de = possTB_de;
                        possTTB_de(index) = 1;
                        possB_sel = poss4_sel;
                        mat_possB = mat_poss4;
                        pB_sum = p4_sum;
                    else
                        possTTB_de = possTA_de;
                        possTTB_de(index) = 1;
                        possB_sel = poss2_sel;
                        mat_possB = mat_poss2;
                        pB_sum = p2_sum;
                    end
                end %PS_com(1) == p3_sum
            elseif ( (F2 == 0) && (F1 == 0) ) %onlyt p2 = p4
                if PS_com(1) == p2_sum
                    if pT2_sum < pT1_sum
                        possTTA_de = possTB_de;
                        possTTA_de(index) = 1;
                        possA_sel = poss4_sel;
                        mat_possA = mat_poss4;
                        pA_sum = p4_sum;
                        possTTB_de = possTA_de;
                        possTTB_de(index) = 1;
                        possB_sel = poss2_sel;
                        mat_possB = mat_poss2;
                        pB_sum = p2_sum;
                    else
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
                elseif PS_com(1) == p1_sum
                    possTTA_de = possTA_de;
                    possTTA_de(index) = 0;
                    possA_sel = poss1_sel;
                    mat_possA = mat_poss1;
                    pA_sum = p1_sum;
                    if PS_com(2) == p2_sum
                        if pT2_sum < pT1_sum
                            possTTB_de = possTB_de;
                            possTTB_de(index) = 1;
                            possB_sel = poss4_sel;
                            mat_possB = mat_poss4;
                            pB_sum = p4_sum;
                        else
                            possTTB_de = possTA_de;
                            possTTB_de(index) = 1;
                            possB_sel = poss2_sel;
                            mat_possB = mat_poss2;
                            pB_sum = p2_sum;
                        end
                    elseif PS_com(2) == p3_sum
                        possTTB_de = possTB_de;
                        possTTB_de(index) = 0;
                        possB_sel = poss3_sel;
                        mat_possB = mat_poss3;
                        pB_sum = p3_sum;
                    end
                elseif PS_com(1) == p3_sum
                    possTTA_de = possTB_de;
                    possTTA_de(index) = 0;
                    possA_sel = poss3_sel;
                    mat_possA = mat_poss3;
                    pA_sum = p3_sum;
                    if PS_com(2) == p1_sum
                        possTTB_de = possTA_de;
                        possTTB_de(index) = 0;
                        possB_sel = poss1_sel;
                        mat_possB = mat_poss1;
                        pB_sum = p1_sum;
                    elseif PS_com(2) == p2_sum
                        if pT1_sum < pT2_sum
                            possTTB_de = possTA_de;
                            possTTB_de(index) = 1;
                            possB_sel = poss2_sel;
                            mat_possB = mat_poss2;
                            pB_sum = p2_sum;
                        else
                            possTTB_de = possTB_de;
                            possTTB_de(index) = 1;
                            possB_sel = poss4_sel;
                            mat_possB = mat_poss4;
                            pB_sum = p4_sum;
                        end
                    end
                end %PS_com(1) == p2_sum
            end %( (F2 == 1) && (F1 == 1) )
        end %PS_com(1) == p2_sum
    else %F4 == 0, F5 == 0
        if ( (F1 == 1) && (F6 == 1) ) % p1=p2, p3=p4
            if PS_com(1) == p1_sum
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
            elseif PS_com(1) == p3_sum
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
        elseif ( (F1 == 1) && (F6 == 0) ) %only p1=p2
            if PS_com(1) == p1_sum
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
            elseif PS_com(1) == p3_sum
                possTTA_de = possTB_de;
                possTTA_de(index) = 0;
                possA_sel = poss3_sel;
                mat_possA = mat_poss3;
                pA_sum = p3_sum;
                if PS_com(2) == p1_sum
                    possTTB_de = possTA_de;
                    possTTB_de(index) = 0;
                    possB_sel = poss1_sel;
                    mat_possB = mat_poss1;
                    pB_sum = p1_sum;
                elseif PS_com(2) == p4_sum
                    possTTB_de = possTB_de;
                    possTTB_de(index) = 1;
                    possB_sel = poss4_sel;
                    mat_possB = mat_poss4;
                    pB_sum = p4_sum;
                end
            elseif PS_com(1) == p4_sum
                possTTA_de = possTB_de;
                possTTA_de(index) = 1;
                possA_sel = poss4_sel;
                mat_possA = mat_poss4;
                pA_sum = p4_sum;
                if PS_com(2) == p1_sum
                    possTTB_de = possTA_de;
                    possTTB_de(index) = 0;
                    possB_sel = poss1_sel;
                    mat_possB = mat_poss1;
                    pB_sum = p1_sum;
                elseif PS_com(2) == p3_sum
                    possTTB_de = possTB_de;
                    possTTB_de(index) = 0;
                    possB_sel = poss3_sel;
                    mat_possB = mat_poss3;
                    pB_sum = p3_sum;
                end
            end %PS_com(1) == p1_sum
        elseif ( (F1 == 0) && (F6 == 1) ) %only p3=p4
            if PS_com(1) == p3_sum
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
            elseif PS_com(1) == p1_sum
                possTTA_de = possTA_de;
                possTTA_de(index) = 0;
                possA_sel = poss1_sel;
                mat_possA = mat_poss1;
                pA_sum = p1_sum;
                if PS_com(2) == p2_sum
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
                end
            elseif PS_com(1) == p2_sum
                possTTA_de = possTA_de;
                possTTA_de(index) = 1;
                possA_sel = poss2_sel;
                mat_possA = mat_poss2;
                pA_sum = p2_sum;
                if PS_com(2) == p1_sum
                    possTTB_de = possTA_de;
                    possTTB_de(index) = 0;
                    possB_sel = poss1_sel;
                    mat_possB = mat_poss1;
                    pB_sum = p1_sum;
                elseif PS_com(2) == p3_sum
                    possTTB_de = possTB_de;
                    possTTB_de(index) = 0;
                    possB_sel = poss3_sel;
                    mat_possB = mat_poss3;
                    pB_sum = p3_sum;
                end
            end %PS_com(1) == p3_sum
        elseif ( (F1 == 0) && (F6 == 0) ) 
            if ( (F2 == 0) && (F3 == 0) ) %only different
                ch = 0;
            else
                check_p3 = 1;
            end
        end %( (F1 == 1) && (F6 == 1) ) % p1=p2, p3=p4
    end %F5 == 1
end %F4 == 1
end %check_p2 == 1

%check p3 and others' relation
if check_p3 == 1
if F6 == 1
    if F2 == 1
        if F4 == 1
            ch = 6;
        else %p1=p3=p4, p3 ~= p2
            if PS_com(1) == p1_sum
                if pT1_sum < pT2_sum
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
                else
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
            elseif PS_com(1) == p2_sum
                possTTA_de = possTA_de;
                possTTA_de(index) = 1;
                possA_sel = poss2_sel;
                mat_possA = mat_poss2;
                pA_sum = p2_sum;
                if pT2_sum < pT1_sum
                    possTTB_de = possTB_de;
                    possTTB_de(index) = 0;
                    possB_sel = poss3_sel;
                    mat_possB = mat_poss3;
                    pB_sum = p3_sum;
                else
                    possTTB_de = possTA_de;
                    possTTB_de(index) = 0;
                    possB_sel = poss1_sel;
                    mat_possB = mat_poss1;
                    pB_sum = p1_sum;
                end
            end %PS_com(1) == p1_sum
        end %F4 == 1
    else %F2 == 0
        if F4 == 1 %p2=p3=p4, p3~=p1
            if PS_com(1) == p2_sum
                if pT1_sum < pT2_sum
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
                else
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
            elseif PS_com(1) == p1_sum
                possTTA_de = possTA_de;
                possTTA_de(index) = 0;
                possA_sel = poss1_sel;
                mat_possA = mat_poss1;
                pA_sum = p1_sum;
                if pT2_sum < pT1_sum
                    possTTB_de = possTB_de;
                    possTTB_de(index) = 0;
                    possB_sel = poss3_sel;
                    mat_possB = mat_poss3;
                    pB_sum = p3_sum;
                else
                    possTTB_de = possTA_de;
                    possTTB_de(index) = 1;
                    possB_sel = poss2_sel;
                    mat_possB = mat_poss2;
                    pB_sum = p2_sum;
                end
            end %PS_com(1) == p2_sum
        else %when F4 == 0
            if F1 == 1 % p1=p2, p3=p4
                if PS_com(1) == p1_sum
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
                elseif PS_com(1) == p3_sum
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
            else %F1 == 0,F2 == 0, F4 == 0, only p3 = p4
                if PS_com(1) == p3_sum
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
                elseif PS_com(1) == p1_sum
                    possTTA_de = possTA_de;
                    possTTA_de(index) = 0;
                    possA_sel = poss1_sel;
                    mat_possA = mat_poss1;
                    pA_sum = p1_sum;
                    if PS_com(2) == p2_sum
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
                    end
                elseif PS_com(1) == p2_sum
                    possTTA_de = possTA_de;
                    possTTA_de(index) = 1;
                    possA_sel = poss2_sel;
                    mat_possA = mat_poss2;
                    pA_sum = p2_sum;
                    if PS_com(2) == p1_sum
                        possTTB_de = possTA_de;
                        possTTB_de(index) = 0;
                        possB_sel = poss1_sel;
                        mat_possB = mat_poss1;
                        pB_sum = p1_sum;
                    elseif PS_com(2) == p3_sum
                        possTTB_de = possTB_de;
                        possTTB_de(index) = 0;
                        possB_sel = poss3_sel;
                        mat_possB = mat_poss3;
                        pB_sum = p3_sum;
                    end
                end %PS_com(1) == p3_sum
            end %F1 == 1
        end %F4 == 1
    end %F2 == 1
else %when F6 == 0
    if ( (F1==0)&&(F2==0)&&(F3==0)&&(F4==0)&&(F5==0) ) %all different
        ch = 0;
    elseif ((F1==0)&&(F2==0)&&(F3==1)&&(F4==0)&&(F5==0)) %only p1=p4
        if PS_com(1) == p1_sum
            if pT1_sum < pT2_sum
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
            else
                possTTA_de = possTB_de;
                possTTA_de(index) = 1;
                possA_sel = poss4_sel;
                mat_possA = mat_poss4;
                pA_sum = p4_sum;
                possTTB_de = possTA_de;
                possTTB_de(index) = 0;
                possB_sel = poss1_sel;
                mat_possB = mat_poss1;
                pB_sum = p1_sum;
            end
        elseif PS_com(1) == p2_sum
            possTTA_de = possTA_de;
            possTTA_de(index) = 1;
            possA_sel = poss2_sel;
            mat_possA = mat_poss2;
            pA_sum = p2_sum;
            if PS_com(2) == p1_sum
                if pT2_sum < pT1_sum
                    possTTB_de = possTB_de;
                    possTTB_de(index) = 1;
                    possB_sel = poss4_sel;
                    mat_possB = mat_poss4;
                    pB_sum = p4_sum;
                else
                    possTTB_de = possTA_de;
                    possTTB_de(index) = 0;
                    possB_sel = poss1_sel;
                    mat_possB = mat_poss1;
                    pB_sum = p1_sum;
                end
            elseif PS_com(2) == p3_sum
                possTTB_de = possTB_de;
                possTTB_de(index) = 0;
                possB_sel = poss3_sel;
                mat_possB = mat_poss3;
                pB_sum = p3_sum;
            end
        elseif PS_com(1) == p3_sum
            possTTA_de = possTB_de;
            possTTA_de(index) = 0;
            possA_sel = poss3_sel;
            mat_possA = mat_poss3;
            pA_sum = p3_sum;
            if PS_com(2) == p1_sum
                if pT1_sum < pT2_sum
                    possTTB_de = possTA_de;
                    possTTB_de(index) = 0;
                    possB_sel = poss1_sel;
                    mat_possB = mat_poss1;
                    pB_sum = p1_sum;
                else
                    possTTB_de = possTB_de;
                    possTTB_de(index) = 1;
                    possB_sel = poss4_sel;
                    mat_possB = mat_poss4;
                    pB_sum = p4_sum;
                end
            elseif PS_com(2) == p1_sum
                possTTB_de = possTA_de;
                possTTB_de(index) = 0;
                possB_sel = poss1_sel;
                mat_possB = mat_poss1;
                pB_sum = p1_sum;
            end
        end %PS_com(1) == p1_sum       
    elseif ((F1==1)&&(F2==0)&&(F3==0)&&(F4==0)&&(F5==0)) %only p1=p2
        if PS_com(1) == p1_sum
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
        elseif PS_com(1) == p3_sum
            possTTA_de = possTB_de;
            possTTA_de(index) = 0;
            possA_sel = poss3_sel;
            mat_possA = mat_poss3;
            pA_sum = p3_sum;
            if PS_com(2) == p1_sum
                possTTB_de = possTA_de;
                possTTB_de(index) = 0;
                possB_sel = poss1_sel;
                mat_possB = mat_poss1;
                pB_sum = p1_sum;
            elseif PS_com(2) == p4_sum
                possTTB_de = possTB_de;
                possTTB_de(index) = 1;
                possB_sel = poss4_sel;
                mat_possB = mat_poss4;
                pB_sum = p4_sum;
            end
        elseif PS_com(1) == p4_sum
            possTTA_de = possTB_de;
            possTTA_de(index) = 1;
            possA_sel = poss4_sel;
            mat_possA = mat_poss4;
            pA_sum = p4_sum;
            if PS_com(2) == p1_sum
                possTTB_de = possTA_de;
                possTTB_de(index) = 0;
                possB_sel = poss1_sel;
                mat_possB = mat_poss1;
                pB_sum = p1_sum;
            elseif PS_com(2) == p3_sum
                possTTB_de = possTB_de;
                possTTB_de(index) = 0;
                possB_sel = poss3_sel;
                mat_possB = mat_poss3;
                pB_sum = p3_sum;
            end
        end %PS_com(1) == p1_sum
    elseif ((F1==0)&&(F2==0)&&(F3==0)&&(F4==0)&&(F5==1))%only p2=p4
        if PS_com(1) == p1_sum
            possTTA_de = possTA_de;
            possTTA_de(index) = 0;
            possA_sel = poss1_sel;
            mat_possA = mat_poss1;
            pA_sum = p1_sum;
            if PS_com(2) == p2_sum
                if pT2_sum < pT1_sum
                    possTTB_de = possTB_de;
                    possTTB_de(index) = 1;
                    possB_sel = poss4_sel;
                    mat_possB = mat_poss4;
                    pB_sum = p4_sum;
                else
                    possTTB_de = possTA_de;
                    possTTB_de(index) = 1;
                    possB_sel = poss2_sel;
                    mat_possB = mat_poss2;
                    pB_sum = p2_sum;
                end
            elseif PS_com(2) == p3_sum
                possTTB_de = possTB_de;
                possTTB_de(index) = 0;
                possB_sel = poss3_sel;
                mat_possB = mat_poss3;
                pB_sum = p3_sum;
            end
        elseif PS_com(1) == p2_sum
            if pT1_sum < pT2_sum
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
            else
                possTTA_de = possTB_de;
                possTTA_de(index) = 1;
                possA_sel = poss4_sel;
                mat_possA = mat_poss4;
                pA_sum = p4_sum;
                possTTB_de = possTA_de;
                possTTB_de(index) = 1;
                possB_sel = poss2_sel;
                mat_possB = mat_poss2;
                pB_sum = p2_sum;
            end
        elseif PS_com(1) == p3_sum
            possTTA_de = possTB_de;
            possTTA_de(index) = 0;
            possA_sel = poss3_sel;
            mat_possA = mat_poss3;
            pA_sum = p3_sum;
            if PS_com(2) == p2_sum
                if pT1_sum < pT2_sum
                    possTTB_de = possTA_de;
                    possTTB_de(index) = 1;
                    possB_sel = poss2_sel;
                    mat_possB = mat_poss2;
                    pB_sum = p2_sum;
                else
                    possTTB_de = possTB_de;
                    possTTB_de(index) = 1;
                    possB_sel = poss4_sel;
                    mat_possB = mat_poss4;
                    pB_sum = p4_sum;
                end
            elseif PS_com(2) == p1_sum
                possTTB_de = possTA_de;
                possTTB_de(index) = 0;
                possB_sel = poss1_sel;
                mat_possB = mat_poss1;
                pB_sum = p1_sum;
            end
        end %PS_com(1) == p1_sum
    elseif ((F1==1)&&(F2==0)&&(F3==1)&&(F4==0)&&(F5==1))%p1=p2=p4~=p3
        if PS_com(1) == p1_sum
            if pT1_sum < pT2_sum
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
            else
                possTTA_de = possTB_de;
                possTTA_de(index) = 1;
                possA_sel = poss4_sel;
                mat_possA = mat_poss4;
                pA_sum = p4_sum;
                possTTB_de = possTA_de;
                possTTB_de(index) = 0;
                possB_sel = poss1_sel;
                mat_possB = mat_poss1;
                pB_sum = p1_sum;
            end
        elseif PS_com(1) == p3_sum
            possTTA_de = possTB_de;
            possTTA_de(index) = 0;
            possA_sel = poss3_sel;
            mat_possA = mat_poss3;
            pA_sum = p3_sum;
            if pT1_sum < pT2_sum
                possTTB_de = possTA_de;
                possTTB_de(index) = 0;
                possB_sel = poss1_sel;
                mat_possB = mat_poss1;
                pB_sum = p1_sum;
            else
                possTTB_de = possTB_de;
                possTTB_de(index) = 1;
                possB_sel = poss4_sel;
                mat_possB = mat_poss4;
                pB_sum = p4_sum;
            end
        end %PS_com(1) == p1_sum
    elseif ((F1==0)&&(F2==1)&&(F3==0)&&(F4==0)&&(F5==0))%only p3=p1
        if PS_com(1) == p1_sum
            if pT1_sum < pT2_sum
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
            else
                possTTA_de = possTB_de;
                possTTA_de(index) = 0;
                possA_sel = poss3_sel;
                mat_possA = mat_poss3;
                pA_sum = p3_sum;
                possTTB_de = possTA_de;
                possTTB_de(index) = 0;
                possB_sel = poss1_sel;
                mat_possB = mat_poss1;
                pB_sum = p1_sum;
            end
        elseif PS_com(1) == p2_sum
            possTTA_de = possTA_de;
            possTTA_de(index) = 1;
            possA_sel = poss2_sel;
            mat_possA = mat_poss2;
            pA_sum = p2_sum;
            if PS_com(2) == p1_sum
                if pT2_sum < pT1_sum
                    possTTB_de = possTB_de;
                    possTTB_de(index) = 0;
                    possB_sel = poss3_sel;
                    mat_possB = mat_poss3;
                    pB_sum = p3_sum;
                else
                    possTTB_de = possTA_de;
                    possTTB_de(index) = 0;
                    possB_sel = poss1_sel;
                    mat_possB = mat_poss1;
                    pB_sum = p1_sum;
                end
            elseif PS_com(2) == p4_sum
                possTTB_de = possTB_de;
                possTTB_de(index) = 1;
                possB_sel = poss4_sel;
                mat_possB = mat_poss4;
                pB_sum = p4_sum;
            end
        elseif PS_com(1) == p4_sum
            possTTA_de = possTB_de;
            possTTA_de(index) = 1;
            possA_sel = poss4_sel;
            mat_possA = mat_poss4;
            pA_sum = p4_sum;
            if PS_com(2) == p1_sum
                if pT1_sum < pT2_sum
                    possTTB_de = possTA_de;
                    possTTB_de(index) = 0;
                    possB_sel = poss1_sel;
                    mat_possB = mat_poss1;
                    pB_sum = p1_sum;
                else
                    possTTB_de = possTB_de;
                    possTTB_de(index) = 0;
                    possB_sel = poss3_sel;
                    mat_possB = mat_poss3;
                    pB_sum = p3_sum;
                end
            elseif PS_com(2) == p2_sum
                possTTB_de = possTA_de;
                possTTB_de(index) = 1;
                possB_sel = poss2_sel;
                mat_possB = mat_poss2;
                pB_sum = p2_sum;
            end
        end
    elseif ((F1==1)&&(F2==1)&&(F3==0)&&(F4==1)&&(F5==0))%p1=p2=p3~=p4
        if PS_com(1) == p1_sum
            if pT1_sum < pT2_sum
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
            else
                possTTA_de = possTB_de;
                possTTA_de(index) = 0;
                possA_sel = poss3_sel;
                mat_possA = mat_poss3;
                pA_sum = p3_sum;
                possTTB_de = possTA_de;
                possTTB_de(index) = 0;
                possB_sel = poss1_sel;
                mat_possB = mat_poss1;
                pB_sum = p1_sum;
            end
        elseif PS_com(1) == p4_sum
            possTTA_de = possTB_de;
            possTTA_de(index) = 1;
            possA_sel = poss4_sel;
            mat_possA = mat_poss4;
            pA_sum = p4_sum;
            if PS_com(2) == p1_sum
                if pT1_sum < pT2_sum
                    possTTB_de = possTA_de;
                    possTTB_de(index) = 0;
                    possB_sel = poss1_sel;
                    mat_possB = mat_poss1;
                    pB_sum = p1_sum;
                else
                    possTTB_de = possTB_de;
                    possTTB_de(index) = 0;
                    possB_sel = poss3_sel;
                    mat_possB = mat_poss3;
                    pB_sum = p3_sum;
                end
            end
        end
    elseif ((F1==0)&&(F2==1)&&(F3==0)&&(F4==0)&&(F5==1))%p2=p4&p3=p1
        if PS_com(1) == p1_sum
            if pT1_sum < pT2_sum
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
            else
                possTTA_de = possTB_de;
                possTTA_de(index) = 0;
                possA_sel = poss3_sel;
                mat_possA = mat_poss3;
                pA_sum = p3_sum;
                possTTB_de = possTA_de;
                possTTB_de(index) = 0;
                possB_sel = poss1_sel;
                mat_possB = mat_poss1;
                pB_sum = p1_sum;
            end
        elseif PS_com(1) == p2_sum
            if pT1_sum < pT2_sum
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
            else
                possTTA_de = possTB_de;
                possTTA_de(index) = 1;
                possA_sel = poss4_sel;
                mat_possA = mat_poss4;
                pA_sum = p4_sum;
                possTTB_de = possTA_de;
                possTTB_de(index) = 1;
                possB_sel = poss2_sel;
                mat_possB = mat_poss2;
                pB_sum = p2_sum;
            end
        end
    elseif ((F1==0)&&(F2==0)&&(F3==0)&&(F4==1)&&(F5==0))%only p3=p2
        if PS_com(1) == p2_sum
            if pT1_sum < pT2_sum
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
            else
                possTTA_de = possTB_de;
                possTTA_de(index) = 0;
                possA_sel = poss3_sel;
                mat_possA = mat_poss3;
                pA_sum = p3_sum;
                possTTB_de = possTA_de;
                possTTB_de(index) = 1;
                possB_sel = poss2_sel;
                mat_possB = mat_poss2;
                pB_sum = p2_sum;
            end
        elseif PS_com(1) == p1_sum
            possTTA_de = possTA_de;
            possTTA_de(index) = 0;
            possA_sel = poss1_sel;
            mat_possA = mat_poss1;
            pA_sum = p1_sum;
            if PS_com(2) == p2_sum
                if pT2_sum < pT1_sum
                    possTTB_de = possTB_de;
                    possTTB_de(index) = 0;
                    possB_sel = poss3_sel;
                    mat_possB = mat_poss3;
                    pB_sum = p3_sum;
                else
                    possTTB_de = possTA_de;
                    possTTB_de(index) = 1;
                    possB_sel = poss2_sel;
                    mat_possB = mat_poss2;
                    pB_sum = p2_sum;
                end
            elseif PS_com(2) == p4_sum
                possTTB_de = possTB_de;
                possTTB_de(index) = 1;
                possB_sel = poss4_sel;
                mat_possB = mat_poss4;
                pB_sum = p4_sum;
            end
        elseif PS_com(1) == p4_sum
            possTTA_de = possTB_de;
            possTTA_de(index) = 1;
            possA_sel = poss4_sel;
            mat_possA = mat_poss4;
            pA_sum = p4_sum;
            if PS_com(2) == p2_sum
                if pT1_sum < pT2_sum
                    possTTB_de = possTA_de;
                    possTTB_de(index) = 1;
                    possB_sel = poss2_sel;
                    mat_possB = mat_poss2;
                    pB_sum = p2_sum;
                else
                    possTTB_de = possTB_de;
                    possTTB_de(index) = 0;
                    possB_sel = poss3_sel;
                    mat_possB = mat_poss3;
                    pB_sum = p3_sum;
                end
            elseif PS_com(2) == p1_sum
                possTTB_de = possTA_de;
                possTTB_de(index) = 0;
                possB_sel = poss1_sel;
                mat_possB = mat_poss1;
                pB_sum = p1_sum;
            end
        end
    elseif ((F1==0)&&(F2==0)&&(F3==1)&&(F4==1)&&(F5==0))%p1=p4&p3=p2
        if PS_com(1) == p1_sum
            if pT1_sum < pT2_sum
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
            else
                possTTA_de = possTB_de;
                possTTA_de(index) = 1;
                possA_sel = poss4_sel;
                mat_possA = mat_poss4;
                pA_sum = p4_sum;
                possTTB_de = possTA_de;
                possTTB_de(index) = 0;
                possB_sel = poss1_sel;
                mat_possB = mat_poss1;
                pB_sum = p1_sum;
            end
        elseif PS_com(1) == p2_sum
            if pT1_sum < pT2_sum
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
            else
                possTTA_de = possTB_de;
                possTTA_de(index) = 0;
                possA_sel = poss3_sel;
                mat_possA = mat_poss3;
                pA_sum = p3_sum;
                possTTB_de = possTA_de;
                possTTB_de(index) = 1;
                possB_sel = poss2_sel;
                mat_possB = mat_poss2;
                pB_sum = p2_sum;
            end
        end
    elseif ((F1==1)&&(F2==1)&&(F3==0)&&(F4==1)&&(F5==0))%p1=p2=p3~=p4
        if PS_com(1) == p1_sum
            if pT1_sum < pT2_sum
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
            else
                possTTA_de = possTB_de;
                possTTA_de(index) = 0;
                possA_sel = poss3_sel;
                mat_possA = mat_poss3;
                pA_sum = p3_sum;
                possTTB_de = possTA_de;
                possTTB_de(index) = 0;
                possB_sel = poss1_sel;
                mat_possB = mat_poss1;
                pB_sum = p1_sum;
            end
        elseif PS_com(1) == p4_sum
            possTTA_de = possTB_de;
            possTTA_de(index) = 1;
            possA_sel = poss4_sel;
            mat_possA = mat_poss4;
            pA_sum = p4_sum;
            if PS_com(2) == p1_sum
                if pT1_sum < pT2_sum
                    possTTB_de = possTA_de;
                    possTTB_de(index) = 0;
                    possB_sel = poss1_sel;
                    mat_possB = mat_poss1;
                    pB_sum = p1_sum;
                else
                    possTTB_de = possTB_de;
                    possTTB_de(index) = 0;
                    possB_sel = poss3_sel;
                    mat_possB = mat_poss3;
                    pB_sum = p3_sum;
                end
            end
        end %PS_com(1) == p1_sum

    end %( (F1==0)&&(F2==0)&&(F3==0)&&(F4==0)&&(F5==0) )
end %F6 == 1
end %check_p3 == 1


if ch == 0
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
elseif ch == 6
    if pT1_sum == pT2_sum
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
    elseif pT2_sum < pT1_sum
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
    else
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
    end %when ch == 6, check pT1_sum & pT2_sum
end % ch==0, ch==6

possDA_de = possTTA_de;
possDB_de = possTTB_de;

end
