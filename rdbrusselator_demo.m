function M = rdbrusselator_demo(N)

%   M = RDBRUSSELATOR_DEMO(N) returns Matrix Market reaction-diffusion
%   brusselator model (N can be 800 or 3200). The routine mmread.m is 
%   supplied by the Matrix Market of NIST:
%    http://math.nist.gov/MatrixMarket/
%   For more information, please see
%    http://math.nist.gov/MatrixMarket/data/NEP/brussel/brussel.html

% Version 2.3 (Sat Sep  6 16:27:02 EDT 2014)
% Copyright (c) 2002-2014, The Chancellor, Masters and Scholars
% of the University of Oxford, and the EigTool Developers. All rights reserved.
% EigTool is maintained on GitHub:  https://github.com/eigtool
% Please report bugs and request features at https://github.com/eigtool/eigtool/issues

  if N==800,
    M = mmread('rdb800l.mtx');
  elseif N==3200,
    M = mmread('rdb3200l.mtx');
  else
    error('Sorry, no data for that dimension.');
  end;