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
## @deftypefn {} {@var{retval} =} rsq (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Paolo Dona <paolo@fingus.local>
## Created: 2017-05-12

function [output] = rsq (x, y)
  output = corr(x, y)^2*100;
  return;
endfunction
