floor0 = readtable("postlab_report/2025-02-03-16-57-55-0000-0000-6081-8676-S.csv");
floor1 = readtable("postlab_report/2025-02-03-16-45-34-0000-0000-6081-8676-S.csv");
floor2 = readtable("postlab_report/2025-02-03-16-50-16-0000-0000-6081-8676-S.csv");

floor0_RSRP_5G = floor0.SS_RSRP__PCell_(:,:); %select column
floor0_RSRP_4G = floor0.RSRP__PCell_(:,:);
floor0_RSRQ_5G = floor0.SS_RSRQ__PCell_(:,:);
floor0_RSRQ_4G = floor0.RSRQ__PCell_(:,:);
floor0_SINR_5G = floor0.SS_SINR__PCell_(:,:);
floor0_SINR_4G = floor0.SINRRx_0___PCell_(:,:);
floor0_DLthroughput_5G = floor0.NetPDSCHThp__PCell_(:,:);
floor0_DLthroughput_4G = floor0.PDSCHThrpt__PCell_(:,:);
floor0_ULthroughput_5G = floor0.NetPUSCHThp__PCell_(:,:);
floor0_ULthroughput_4G = floor0.PUSCHThrpt__PCell_(:,:);


floor1_RSRP_5G = floor1.SS_RSRP__PCell_(:,:); 
floor1_RSRP_4G = floor1.RSRP__PCell_(:,:);
floor1_RSRQ_5G = floor1.SS_RSRQ__PCell_(:,:);
floor1_RSRQ_4G = floor1.RSRQ__PCell_(:,:);
floor1_SINR_5G = floor1.SS_SINR__PCell_(:,:);
floor1_SINR_4G = floor1.SINRRx_0___PCell_(:,:);
floor1_DLthroughput_5G = floor1.NetPDSCHThp__PCell_(:,:);
floor1_DLthroughput_4G = floor1.PDSCHThrpt__PCell_(:,:);
floor1_ULthroughput_5G = floor1.NetPUSCHThp(:,:);
floor1_ULthroughput_4G = floor1.PUSCHThrpt__PCell_(:,:);

floor2_RSRP_5G = floor2.SS_RSRP__PCell_(:,:);
floor2_RSRP_4G = floor2.RSRP__PCell_(:,:);
floor2_RSRQ_5G = floor2.SS_RSRQ__PCell_(:,:);
floor2_RSRQ_4G = floor2.RSRQ__PCell_(:,:);
floor2_SINR_5G = floor2.SS_SINR__PCell_(:,:);
floor2_SINR_4G = floor2.SINRRx_0___PCell_(:,:);
floor2_DLthroughput_5G = floor2.NetPDSCHThp__PCell_(:,:);
floor2_DLthroughput_4G = floor2.PDSCHThrpt__PCell_(:,:);
floor2_ULthroughput_5G = floor2.NetPUSCHThp(:,:);
floor2_ULthroughput_4G = floor2.PUSCHThrpt__PCell_(:,:);

% average (mean) calculation
%recalculate the average of RSRP, RSRQ in linear, then convert to logarithm 
% RSRP (dBm)
% RSRQ (dB)

linear_floor0_RSRQ_4G = 10.^(floor0_RSRQ_4G / 10);
mean_avg_floor0_RSRQ_4G = mean(linear_floor0_RSRQ_4G, 'omitnan');
avg_floor0_RSRQ_4G = 10 * log10(mean_avg_floor0_RSRQ_4G);

linear_floor0_RSRQ_5G = 10.^(floor0_RSRQ_5G / 10);
mean_avg_floor0_RSRQ_5G = mean(linear_floor0_RSRQ_5G, 'omitnan');
avg_floor0_RSRQ_5G = 10 * log10(mean_avg_floor0_RSRQ_5G);

linear_floor0_RSRP_4G = 10.^(floor0_RSRP_4G / 10);
mean_avg_floor0_RSRP_4G = mean(linear_floor0_RSRP_4G, 'omitnan');
avg_floor0_RSRP_4G = 10 * log10(mean_avg_floor0_RSRP_4G);

linear_floor0_RSRP_5G = 10.^(floor0_RSRP_5G / 10);
mean_avg_floor0_RSRP_5G = mean(linear_floor0_RSRP_5G, 'omitnan');
avg_floor0_RSRP_5G = 10 * log10(mean_avg_floor0_RSRP_5G);

avg_floor0_DLthroughput_5G = mean(floor0_DLthroughput_5G, "omitnan");
avg_floor0_DLthroughput_4G = mean(floor0_DLthroughput_4G, "omitnan");
avg_floor0_ULthroughput_5G = mean(floor0_ULthroughput_5G, "omitnan");
avg_floor0_ULthroughput_4G = mean(floor0_ULthroughput_4G, "omitnan");


linear_floor1_RSRQ_4G = 10.^(floor1_RSRQ_4G / 10);
mean_avg_floor1_RSRQ_4G = mean(linear_floor1_RSRQ_4G, 'omitnan');
avg_floor1_RSRQ_4G = 10 * log10(mean_avg_floor1_RSRQ_4G);

linear_floor1_RSRQ_5G = 10.^(floor1_RSRQ_5G / 10);
mean_avg_floor1_RSRQ_5G = mean(linear_floor1_RSRQ_5G, 'omitnan');
avg_floor1_RSRQ_5G = 10 * log10(mean_avg_floor1_RSRQ_5G);

linear_floor1_RSRP_4G = 10.^(floor1_RSRP_4G / 10);
mean_avg_floor1_RSRP_4G = mean(linear_floor1_RSRP_4G, 'omitnan');
avg_floor1_RSRP_4G = 10 * log10(mean_avg_floor1_RSRP_4G);

linear_floor1_RSRP_5G = 10.^(floor1_RSRP_5G / 10);
mean_avg_floor1_RSRP_5G = mean(linear_floor1_RSRP_5G, 'omitnan');
avg_floor1_RSRP_5G = 10 * log10(mean_avg_floor1_RSRP_5G);

avg_floor1_DLthroughput_5G = mean(floor1_DLthroughput_5G, "omitnan");
avg_floor1_DLthroughput_4G = mean(floor1_DLthroughput_4G, "omitnan");                                  
avg_floor1_ULthroughput_5G = mean(floor1_ULthroughput_5G, "omitnan");
avg_floor1_ULthroughput_4G = mean(floor1_ULthroughput_4G, "omitnan");


linear_floor2_RSRQ_4G = 10.^(floor2_RSRQ_4G / 10);
mean_avg_floor2_RSRQ_4G = mean(linear_floor2_RSRQ_4G, 'omitnan');
avg_floor2_RSRQ_4G = 10 * log10(mean_avg_floor2_RSRQ_4G);

linear_floor2_RSRQ_5G = 10.^(floor2_RSRQ_5G / 10);
mean_avg_floor2_RSRQ_5G = mean(linear_floor2_RSRQ_5G, 'omitnan');
avg_floor2_RSRQ_5G = 10 * log10(mean_avg_floor2_RSRQ_5G);

linear_floor2_RSRP_4G = 10.^(floor2_RSRP_4G / 10);
mean_avg_floor2_RSRP_4G = mean(linear_floor2_RSRP_4G, 'omitnan');
avg_floor2_RSRP_4G = 10 * log10(mean_avg_floor2_RSRP_4G);

linear_floor2_RSRP_5G = 10.^(floor2_RSRP_5G / 10);
mean_avg_floor2_RSRP_5G = mean(linear_floor2_RSRP_5G, 'omitnan');
avg_floor2_RSRP_5G = 10 * log10(mean_avg_floor2_RSRP_5G);

avg_floor2_DLthroughput_5G = mean(floor2_DLthroughput_5G, "omitnan");
avg_floor2_DLthroughupt_4G = mean(floor2_DLthroughput_4G, "omitnan");
avg_floor2_ULthroughput_5G = mean(floor2_ULthroughput_5G, "omitnan");
avg_floor2_ULthroughput_4G = mean(floor2_ULthroughput_4G, "omitnan");


% all floors mean, combining all values from each floor then calculate
combine_avg_RSRP_5G = [floor0_RSRP_5G; floor1_RSRP_5G; floor2_RSRP_5G];
linear_all_floor_RSRP_5G = 10.^(combine_avg_RSRP_5G / 10);
mean_avg_all_floor_RSRP_5G = mean(linear_all_floor_RSRP_5G, 'omitnan');
all_floor_avg_RSRP_5G = 10 * log10(mean_avg_all_floor_RSRP_5G);

combine_avg_RSRP_4G = [floor0_RSRP_4G; floor1_RSRP_4G; floor2_RSRP_4G];
linear_all_floor_RSRP_4G = 10.^(combine_avg_RSRP_4G / 10);
mean_avg_all_floor_RSRP_4G = mean(linear_all_floor_RSRP_4G, 'omitnan');
all_floor_avg_RSRP_4G = 10 * log10(mean_avg_all_floor_RSRP_4G);

combine_avg_RSRQ_5G = [floor0_RSRQ_5G; floor1_RSRQ_5G; floor2_RSRQ_5G];
linear_all_floor_RSRQ_5G = 10.^(combine_avg_RSRQ_5G / 10);
mean_avg_all_floor_RSRQ_5G = mean(linear_all_floor_RSRQ_5G, 'omitnan');
all_floor_avg_RSRQ_5G = 10 * log10(mean_avg_all_floor_RSRQ_5G);

combine_avg_RSRQ_4G = [floor0_RSRQ_4G; floor1_RSRQ_4G; floor2_RSRQ_4G];
linear_all_floor_RSRQ_4G = 10.^(combine_avg_RSRQ_4G / 10);
mean_avg_all_floor_RSRQ_4G = mean(linear_all_floor_RSRQ_4G, 'omitnan');
all_floor_avg_RSRQ_4G = 10 * log10(mean_avg_all_floor_RSRQ_4G);



%histogram removes NaN values, shows distribution
% ========== 5G 
figure(Name='Floor 0')
subplot(5, 2, 1)
histogram(floor0_RSRP_5G, 'Normalization','probability', 'FaceColor','blue')
xlabel('(dBm)')
ylabel('Normalized data')
title('SS-RSRP')
grid on


subplot(5, 2, 3)
histogram(floor0_RSRQ_5G, 'Normalization','probability', 'FaceColor','blue')
xlabel('(dB)')
ylabel('Normalized data')
title('SS-RSRQ')
grid on



subplot(5, 2, 5)
histogram(floor0_SINR_5G, 'Normalization','probability', 'FaceColor','blue')
xlabel('(dB)')
ylabel('Normalized data')
title('SS-SINR')
grid on



subplot(5, 2, 7)
histogram(floor0_DLthroughput_5G, 'Normalization','probability', 'FaceColor','blue')
xlabel('(Mbps)')
ylabel('Normalized data')
title('5G DL throughput')
grid on



subplot(5, 2, 9)
histogram(floor0_ULthroughput_5G, 'Normalization','probability', 'FaceColor','blue')
xlabel('(Mbps)')
ylabel('Normalized data')
title('5G UL throughput')
grid on



% ========== 4G
subplot(5, 2, 2)
histogram(floor0_RSRP_4G, 'Normalization','probability')
xlabel('(dBm)')
ylabel('Normalized data')
title('4G RSRP')
grid on



subplot(5, 2, 4)
histogram(floor0_RSRQ_4G, 'Normalization','probability')
xlabel('(dB)')
ylabel('Normalized data')
title('4G RSRQ')
grid on



subplot(5, 2, 6)
histogram(floor0_SINR_4G, 'Normalization','probability')
xlabel('(dB)')
ylabel('Normalized data')
title('4G SINR')
grid on



subplot(5, 2, 8)
histogram(floor0_DLthroughput_4G, 'Normalization','probability')
xlabel('(Mbps)')
ylabel('Normalized data')
title('4G DL throughput')
grid on



subplot(5, 2, 10)
histogram(floor0_ULthroughput_4G, 'Normalization','probability')
xlabel('(Mbps)')
ylabel('Normalized data')
title('4G UL throughput')
grid on



%===============Floor 1================
figure(Name='Floor 1')
subplot(5, 2, 1)
histogram(floor1_RSRP_5G, 'Normalization','probability', 'FaceColor','blue')
xlabel('(dBm)')
ylabel('Normalized data')
title('SS-RSRP')
grid on



subplot(5, 2, 3)
histogram(floor1_RSRQ_5G, 'Normalization','probability', 'FaceColor','blue')
xlabel('(dB)')
ylabel('Normalized data')
title('SS-RSRQ')
grid on



subplot(5, 2, 5)
histogram(floor1_SINR_5G, 'Normalization','probability', 'FaceColor','blue')
xlabel('(dB)')
ylabel('Normalized data')
title('SS-SINR')
grid on



subplot(5, 2, 7)
histogram(floor1_DLthroughput_5G, 'Normalization','probability', 'FaceColor','blue')
xlabel('(Mbps)')
ylabel('Normalized data')
title('5G DL throughput')
grid on



subplot(5, 2, 9)
histogram(floor1_ULthroughput_5G, 'Normalization','probability', 'FaceColor','blue')
xlabel('(Mbps)')
ylabel('Normalized data')
title('5G UL throughput')
grid on



% ========== 4G
subplot(5, 2, 2)
histogram(floor1_RSRP_4G, 'Normalization','probability')
xlabel('(dBm)')
ylabel('Normalized data')
title('4G RSRP')
grid on



subplot(5, 2, 4)
histogram(floor1_RSRQ_4G, 'Normalization','probability')
xlabel('(dB)')
ylabel('Normalized data')
title('4G RSRQ')
grid on



subplot(5, 2, 6)
histogram(floor1_SINR_4G, 'Normalization','probability')
xlabel('(dB)')
ylabel('Normalized data')
title('4G SINR')
grid on



subplot(5, 2, 8)
histogram(floor1_DLthroughput_4G, 'Normalization','probability')
xlabel('(Mbps)')
ylabel('Normalized data')
title('4G DL throughput')
grid on



subplot(5, 2, 10)
histogram(floor1_ULthroughput_4G, 'Normalization','probability')
xlabel('(Mbps)')
ylabel('Normalized data')
title('4G UL throughput')
grid on



%===============Floor 2================
figure(Name='Floor 2')
subplot(5, 2, 1)
histogram(floor2_RSRP_5G, 'Normalization','probability', 'FaceColor','blue')
xlabel('(dBm)')
ylabel('Normalized data')
title('SS-RSRP')
grid on


subplot(5, 2, 3)
histogram(floor2_RSRQ_5G, 'Normalization','probability', 'FaceColor','blue')
xlabel('(dB)')
ylabel('Normalized data')
title('SS-RSRQ')
grid on


subplot(5, 2, 5)
histogram(floor2_SINR_5G, 'Normalization','probability', 'FaceColor','blue')
xlabel('(dB)')
ylabel('Normalized data')
title('SS-SINR')
grid on


subplot(5, 2, 7)
histogram(floor2_DLthroughput_5G, 'Normalization','probability', 'FaceColor','blue')
xlabel('(Mbps)')
ylabel('Normalized data')
title('5G DL throughput')
grid on


subplot(5, 2, 9)
histogram(floor2_ULthroughput_5G, 'Normalization','probability', 'FaceColor','blue')
xlabel('(Mbps)')
ylabel('Normalized data')
title('5G UL throughput')
grid on


% ========== 4G
subplot(5, 2, 2)
histogram(floor2_RSRP_4G, 'Normalization','probability')
xlabel('(dBm)')
ylabel('Normalized data')
title('4G RSRP')
grid on


subplot(5, 2, 4)
histogram(floor2_RSRQ_4G, 'Normalization','probability')
xlabel('(dB)')
ylabel('Normalized data')
title('4G RSRQ')
grid on


subplot(5, 2, 6)
histogram(floor2_SINR_4G, 'Normalization','probability')
xlabel('(dB)')
ylabel('Normalized data')
title('4G SINR')
grid on


subplot(5, 2, 8)
histogram(floor2_DLthroughput_4G, 'Normalization','probability')
xlabel('(Mbps)')
ylabel('Normalized data')
title('4G DL throughput')
grid on


subplot(5, 2, 10)
histogram(floor2_ULthroughput_4G, 'Normalization','probability')
xlabel('(Mbps)')
ylabel('Normalized data')
title('4G UL throughput')
grid on

% ======== Presenting figures following our report structure
% and adding export figure function for our report
figure(Name='Floor 0 RSRP')
subplot(1, 2, 1)
histogram(floor0_RSRP_5G, 'Normalization','probability', 'FaceColor','blue')
xlabel('(dBm)')
ylabel('Normalized data')
title('SS-RSRP')
grid on

subplot(1, 2, 2)
histogram(floor0_RSRP_4G, 'Normalization','probability')
xlabel('(dBm)')
ylabel('Normalized data')
title('4G RSRP')
grid on
exportFigure('Floor0_RSRP.png', 400, 150);

figure(Name='Floor 0 RSRQ')
subplot(1, 2, 1)
histogram(floor0_RSRQ_5G, 'Normalization','probability', 'FaceColor','blue')
xlabel('(dB)')
ylabel('Normalized data')
title('SS-RSRQ')
grid on

subplot(1, 2, 2)
histogram(floor0_RSRQ_4G, 'Normalization','probability')
xlabel('(dB)')
ylabel('Normalized data')
title('4G RSRQ')
grid on
exportFigure('Floor0_RSRQ.png', 400, 150);

figure(Name='Floor 0 SINR')
subplot(1, 2, 1)
histogram(floor0_SINR_5G, 'Normalization','probability', 'FaceColor','blue')
xlabel('(dB)')
ylabel('Normalized data')
title('SS-SINR')
grid on

subplot(1, 2, 2)
histogram(floor0_SINR_4G, 'Normalization','probability')
xlabel('(dB)')
ylabel('Normalized data')
title('4G SINR')
grid on
exportFigure('Floor0_SINR.png', 400, 150);

figure(Name='Floor 0 Throughput')
subplot(2, 2, 1)
histogram(floor0_DLthroughput_5G, 'Normalization','probability', 'FaceColor','blue')
xlabel('(Mbps)')
ylabel('Normalized data')
title('5G DL throughput')
grid on

subplot(2, 2, 2)
histogram(floor0_DLthroughput_4G, 'Normalization','probability')
xlabel('(Mbps)')
ylabel('Normalized data')
title('4G DL throughput')
grid on


subplot(2, 2, 3)
histogram(floor0_ULthroughput_5G, 'Normalization','probability', 'FaceColor','blue')
xlabel('(Mbps)')
ylabel('Normalized data')
title('5G UL throughput')
grid on

subplot(2, 2, 4)
histogram(floor0_ULthroughput_4G, 'Normalization','probability')
xlabel('(Mbps)')
ylabel('Normalized data')
title('4G UL throughput')
grid on
exportFigure('Floor0_throughput.png', 500, 200);


% ========== Floor 1 ===========


figure(Name='Floor 1 RSRP')
subplot(1, 2, 1)
histogram(floor1_RSRP_5G, 'Normalization','probability', 'FaceColor','blue')
xlabel('(dBm)')
ylabel('Normalized data')
title('SS-RSRP')
grid on

subplot(1, 2, 2)
histogram(floor1_RSRP_4G, 'Normalization','probability')
xlabel('(dBm)')
ylabel('Normalized data')
title('4G RSRP')
grid on
exportFigure('Floor1_RSRP.png', 400, 150);

figure(Name='Floor 1 RSRQ')
subplot(1, 2, 1)
histogram(floor1_RSRQ_5G, 'Normalization','probability', 'FaceColor','blue')
xlabel('(dB)')
ylabel('Normalized data')
title('SS-RSRQ')
grid on

subplot(1, 2, 2)
histogram(floor1_RSRQ_4G, 'Normalization','probability')
xlabel('(dB)')
ylabel('Normalized data')
title('4G RSRQ')
grid on
exportFigure('Floor1_RSRQ.png', 400, 150);

figure(Name='Floor 1 SINR')
subplot(1, 2, 1)
histogram(floor1_SINR_5G, 'Normalization','probability', 'FaceColor','blue')
xlabel('(dB)')
ylabel('Normalized data')
title('SS-SINR')
grid on

subplot(1, 2, 2)
histogram(floor1_SINR_4G, 'Normalization','probability')
xlabel('(dB)')
ylabel('Normalized data')
title('4G SINR')
grid on
exportFigure('Floor1_SINR.png', 400, 150);

figure(Name='Floor 1 Throughput')
subplot(2, 2, 1)
histogram(floor1_DLthroughput_5G, 'Normalization','probability', 'FaceColor','blue')
xlabel('(Mbps)')
ylabel('Normalized data')
title('5G DL throughput')
grid on

subplot(2, 2, 2)
histogram(floor1_DLthroughput_4G, 'Normalization','probability')
xlabel('(Mbps)')
ylabel('Normalized data')
title('4G DL throughput')
grid on


subplot(2, 2, 3)
histogram(floor1_ULthroughput_5G, 'Normalization','probability', 'FaceColor','blue')
xlabel('(Mbps)')
ylabel('Normalized data')
title('5G UL throughput')
grid on

subplot(2, 2, 4)
histogram(floor1_ULthroughput_4G, 'Normalization','probability')
xlabel('(Mbps)')
ylabel('Normalized data')
title('4G UL throughput')
grid on
exportFigure('Floor1_throughput.png', 500, 200);

%============= Floor 2 ===========

figure(Name='Floor 2 RSRP')
subplot(1, 2, 1)
histogram(floor2_RSRP_5G, 'Normalization','probability', 'FaceColor','blue')
xlabel('(dBm)')
ylabel('Normalized data')
title('SS-RSRP')
grid on

subplot(1, 2, 2)
histogram(floor2_RSRP_4G, 'Normalization','probability')
xlabel('(dBm)')
ylabel('Normalized data')
title('4G RSRP')
grid on
exportFigure('Floor2_RSRP.png', 400, 150);

figure(Name='Floor 2 RSRQ')
subplot(1, 2, 1)
histogram(floor2_RSRQ_5G, 'Normalization','probability', 'FaceColor','blue')
xlabel('(dB)')
ylabel('Normalized data')
title('SS-RSRQ')
grid on

subplot(1, 2, 2)
histogram(floor2_RSRQ_4G, 'Normalization','probability')
xlabel('(dB)')
ylabel('Normalized data')
title('4G RSRQ')
grid on
exportFigure('Floor2_RSRQ.png', 400, 150);

figure(Name='Floor 2 SINR')
subplot(1, 2, 1)
histogram(floor2_SINR_5G, 'Normalization','probability', 'FaceColor','blue')
xlabel('(dB)')
ylabel('Normalized data')
title('SS-SINR')
grid on

subplot(1, 2, 2)
histogram(floor2_SINR_4G, 'Normalization','probability')
xlabel('(dB)')
ylabel('Normalized data')
title('4G SINR')
grid on
exportFigure('Floor2_SINR.png', 400, 150);

figure(Name='Floor 2 Throughput')
subplot(2, 2, 1)
histogram(floor2_DLthroughput_5G, 'Normalization','probability', 'FaceColor','blue')
xlabel('(Mbps)')
ylabel('Normalized data')
title('5G DL throughput')
grid on

subplot(2, 2, 2)
histogram(floor2_DLthroughput_4G, 'Normalization','probability')
xlabel('(Mbps)')
ylabel('Normalized data')
title('4G DL throughput')
grid on


subplot(2, 2, 3)
histogram(floor2_ULthroughput_5G, 'Normalization','probability', 'FaceColor','blue')
xlabel('(Mbps)')
ylabel('Normalized data')
title('5G UL throughput')
grid on

subplot(2, 2, 4)
histogram(floor2_ULthroughput_4G, 'Normalization','probability')
xlabel('(Mbps)')
ylabel('Normalized data')
title('4G UL throughput')
grid on
exportFigure('Floor2_throughput.png', 500, 200);




