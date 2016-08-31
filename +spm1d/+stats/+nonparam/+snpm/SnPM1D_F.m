%__________________________________________________________________________
% Copyright (C) 2016 Todd Pataky
% $Id: SPM0D.m 1 2016-01-04 16:07 todd $


classdef SnPM1D_F < spm1d.stats.nonparam.snpm.ASnPM1D
    properties
        effect  = 'Main A';
    end
    
    
    methods
        function [self] = SnPM1D_F(z, perm, varargin)
            self@spm1d.stats.nonparam.snpm.ASnPM1D(z, perm, varargin{:})
            self.STAT    = 'F';
            self.isanova = true;
        end
    end
end