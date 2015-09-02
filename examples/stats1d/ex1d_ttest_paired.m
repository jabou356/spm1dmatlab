    

clear all;  clc


%(0) Load dataset:
dataset = spm1d.data.uv1d.tpaired.PlantarArchAngle();
[YA,YB] = deal(dataset.YA, dataset.YB);



%(1) Conduct SPM analysis:
spm       = spm1d.stats.ttest_paired(YA, YB);
spmi      = spm.inference(0.05, 'two_tailed', false);
disp(spmi)


%(2) Plot:
close all
spmi.plot()
spmi.plot_threshold_label();
spmi.plot_p_values();

















