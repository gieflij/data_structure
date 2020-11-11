function[CNT_NEQ, CNT_EQ] = test_channel
CNT_NEQ = zeros(1,1000);
CNT_EQ = zeros(1,1000);
for i = 1:1000
    [mat_ori, mat_de, cnt_eq, cnt_neq] = channel_coding;
    CNT_NEQ(i) = cnt_neq;
    CNT_EQ(i) = cnt_eq;
end
x = [1:1000];
figure(1)
subplot(2,1,1);
plot(x, CNT_NEQ, 'r*')
hold on
plot(x, CNT_EQ, 'b*')
xlabel('# of tries')
ylabel('equal/not equal')
axis([1 1000 400 600]) %bsc p = 0.3
%axis([1 1000 0 1000]) %bsc p = 0
grid on

subplot(2,1,2);
bar(x,CNT_EQ)
hold on
bar(x,CNT_NEQ, 0.5)
xlabel('# of tries')
ylabel('equal/not equal')

figure(2)
error_rate = CNT_NEQ/1000;
error_prob = mean(error_rate);
mean_e = x*0 + error_prob;
plot(x, error_rate, 'o')
hold on
plot(x,mean_e, 'LineWidth', 2)
xx = [0.4 0.4];
yy = [0.4 0.5]; %p=0.3
%yy = [0.4 0.55]; % p=0
annotation('textarrow', xx, yy, 'String', 'error prob. mean')
xlabel('# of tries')
ylabel('error rate')
axis([1 1000 0.4 0.55]) %bsc p = 0.3
%axis([1 1000 0.25 0.4]) %bsc p = 0
grid on

end
