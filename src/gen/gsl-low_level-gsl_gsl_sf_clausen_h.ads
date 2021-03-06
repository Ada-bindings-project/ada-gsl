pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_clausen_h is

  -- specfunc/gsl_sf_clausen.h
  -- * 
  -- * Copyright (C) 1996, 1997, 1998, 1999, 2000 Gerard Jungman
  -- * 
  -- * This program is free software; you can redistribute it and/or modify
  -- * it under the terms of the GNU General Public License as published by
  -- * the Free Software Foundation; either version 3 of the License, or (at
  -- * your option) any later version.
  -- * 
  -- * This program is distributed in the hope that it will be useful, but
  -- * WITHOUT ANY WARRANTY; without even the implied warranty of
  -- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  -- * General Public License for more details.
  -- * 
  -- * You should have received a copy of the GNU General Public License
  -- * along with this program; if not, write to the Free Software
  -- * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
  --  

  -- Author:  G. Jungman  
  -- Calculate the Clausen integral:
  -- *   Cl_2(x) := Integrate[-Log[2 Sin[t/2]], {t,0,x}]
  -- *
  -- * Relation to dilogarithm:
  -- *   Cl_2(theta) = Im[ Li_2(e^(i theta)) ]
  --  

   function gsl_sf_clausen_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_clausen.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_clausen_e";

   function gsl_sf_clausen (x : double) return double  -- /usr/include/gsl/gsl_sf_clausen.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_clausen";

end GSL.Low_Level.gsl_gsl_sf_clausen_h;
