    

clear;  clc


%(0) Load data:
dataset  = spm1d.data.uv1d.regress.SpeedGRF();
[Y,x]    = deal(dataset.Y, dataset.x);
% specify design matrix:
nCurves  = numel(x);
nFactors = 4;
X        = zeros(nCurves, nFactors);
X(:,1)   = x;
X(:,2)   = 1;
X(:,3)   = linspace(0, 1, nCurves);
X(:,4)   = sin( linspace(0, pi, nCurves)  );
% specify contrast vector:
c        = [1 0 0 0]';


%(0a) Create region(s) of interest (ROI):
roi        = false( 1, size(Y,2) );
roi(61:end) = true;


%(1) Conduct SPM analysis:
spm       = spm1d.stats.glm(Y, X, c, 'roi', roi);
spmi      = spm.inference(0.05, 'two_tailed', false);
disp(spmi)



%(2) Plot:
close all
spmi.plot()
spmi.plot_threshold_label();
spmi.plot_p_values();

















