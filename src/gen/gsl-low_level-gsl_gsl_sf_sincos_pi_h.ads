pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_sincos_pi_h is

  -- specfunc/gsl_sf_sincos_pi.h
  -- * 
  -- * Copyright (C) 2017 Konrad Griessinger
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

  -- Author:  G. Jungman, K. Griessinger  
  -- sin_pi(x) with GSL semantics. This is actually important
  -- * because we want to control the error estimate, and trying
  -- * to guess the error for the standard library implementation
  -- * every time it is used would be a little goofy.
  --  

   function gsl_sf_sin_pi_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_sincos_pi.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_sin_pi_e";

   function gsl_sf_sin_pi (x : double) return double  -- /usr/include/gsl/gsl_sf_sincos_pi.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_sin_pi";

  -- cos_pi(x) with GSL semantics.
  --  

   function gsl_sf_cos_pi_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_sincos_pi.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_cos_pi_e";

   function gsl_sf_cos_pi (x : double) return double  -- /usr/include/gsl/gsl_sf_sincos_pi.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_cos_pi";

end GSL.Low_Level.gsl_gsl_sf_sincos_pi_h;
