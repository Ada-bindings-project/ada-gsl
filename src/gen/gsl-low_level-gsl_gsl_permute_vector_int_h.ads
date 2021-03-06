pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_permutation_h;
limited with GSL.Low_Level.gsl_gsl_vector_int_h;

package GSL.Low_Level.gsl_gsl_permute_vector_int_h is

  -- permutation/gsl_permute_vector_int.h
  -- * 
  -- * Copyright (C) 1996, 1997, 1998, 1999, 2000, 2007 Brian Gough
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

   function gsl_permute_vector_int (p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation; v : access GSL.Low_Level.gsl_gsl_vector_int_h.gsl_vector_int) return int  -- /usr/include/gsl/gsl_permute_vector_int.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_vector_int";

   function gsl_permute_vector_int_inverse (p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation; v : access GSL.Low_Level.gsl_gsl_vector_int_h.gsl_vector_int) return int  -- /usr/include/gsl/gsl_permute_vector_int.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_vector_int_inverse";

end GSL.Low_Level.gsl_gsl_permute_vector_int_h;
