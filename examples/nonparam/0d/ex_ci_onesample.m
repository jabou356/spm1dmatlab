

clear;  clc


%(0) Load dataset:
% dataset    = spm1d.data.uv0d.ci1.MinnesotaGeyerRate();
dataset    = spm1d.data.uv0d.ci1.WebsterSleep();
y          = dataset.Y;


%(1) Compute parametric and non-parametric CIs:
rng(0)
alpha      = 0.05;
mu         = 9;
iterations = 1000;
ci         = spm1d.stats.ci_onesample(y, alpha, 'mu',mu);
cin        = spm1d.stats.nonparam.ci_onesample(y, alpha, 'mu',mu, 'iterations',iterations);
disp(ci)
disp(cin)


%(2) Plot:
close all
ax1=subplot(121);  ci.plot();   title('Parametric CI')
ax2=subplot(122);  cin.plot();  title('Non-parametric CI')
%set the y limits
[y1,y2] = deal( get(ax1, 'ylim'), get(ax2, 'ylim') );
ylims   = [min(y1(1), y2(1))   max(y1(2), y2(2))];
set([ax1 ax2], 'ylim', ylims)
 











