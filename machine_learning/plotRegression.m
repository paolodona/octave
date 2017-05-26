## Copyright (C) 2017 Paolo Dona
##
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} plotRegression (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Paolo Dona <paolo@fingus.local>
## Created: 2017-05-26

function [h] = plotRegression (theta)
  n = 3000;
  x = [1:n];
  X = [ones(n,1), x'];
  h = X .* theta;
  plot(x, sum(h'), '-');
  return;
endfunction
