function [self] = SPM1D_ANOVA3TWORM_2x3x4()
dir0      = spm1d.data.get_matfile_path();
fname     = fullfile(dir0, 'spm1d_anova3tworm_2x3x4.mat');
s         = load(fname);
self.Y    = s.Y;
self.A    = s.A;
self.B    = s.B;
self.C    = s.C;
self.SUBJ = s.SUBJ;
end


