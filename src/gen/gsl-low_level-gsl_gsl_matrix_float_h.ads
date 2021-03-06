pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with GSL.Low_Level.gsl_gsl_block_float_h;
with GSL.Low_Level.gsl_gsl_vector_float_h;
with Interfaces.C_Streams;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_matrix_float_h is

  -- matrix/gsl_matrix_float.h
  -- * 
  -- * Copyright (C) 1996, 1997, 1998, 1999, 2000, 2007 Gerard Jungman, Brian Gough
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

   type gsl_matrix_float is record
      size1 : aliased size_t;  -- /usr/include/gsl/gsl_matrix_float.h:44
      size2 : aliased size_t;  -- /usr/include/gsl/gsl_matrix_float.h:45
      tda : aliased size_t;  -- /usr/include/gsl/gsl_matrix_float.h:46
      data : access float;  -- /usr/include/gsl/gsl_matrix_float.h:47
      block : access GSL.Low_Level.gsl_gsl_block_float_h.gsl_block_float;  -- /usr/include/gsl/gsl_matrix_float.h:48
      owner : aliased int;  -- /usr/include/gsl/gsl_matrix_float.h:49
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_float.h:50

   type u_gsl_matrix_float_view is record
      matrix : aliased gsl_matrix_float;  -- /usr/include/gsl/gsl_matrix_float.h:54
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_float.h:55

   subtype gsl_matrix_float_view is u_gsl_matrix_float_view;  -- /usr/include/gsl/gsl_matrix_float.h:57

   type u_gsl_matrix_float_const_view is record
      matrix : aliased gsl_matrix_float;  -- /usr/include/gsl/gsl_matrix_float.h:61
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_float.h:62

   subtype gsl_matrix_float_const_view is u_gsl_matrix_float_const_view;  -- /usr/include/gsl/gsl_matrix_float.h:64

  -- Allocation  
   function gsl_matrix_float_alloc (arg1 : size_t; arg2 : size_t) return access gsl_matrix_float  -- /usr/include/gsl/gsl_matrix_float.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_alloc";

   function gsl_matrix_float_calloc (arg1 : size_t; arg2 : size_t) return access gsl_matrix_float  -- /usr/include/gsl/gsl_matrix_float.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_calloc";

   function gsl_matrix_float_alloc_from_block
     (arg1 : access GSL.Low_Level.gsl_gsl_block_float_h.gsl_block_float;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t;
      arg5 : size_t) return access gsl_matrix_float  -- /usr/include/gsl/gsl_matrix_float.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_alloc_from_block";

   function gsl_matrix_float_alloc_from_matrix
     (arg1 : access gsl_matrix_float;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t;
      arg5 : size_t) return access gsl_matrix_float  -- /usr/include/gsl/gsl_matrix_float.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_alloc_from_matrix";

   function gsl_vector_float_alloc_row_from_matrix (arg1 : access gsl_matrix_float; arg2 : size_t) return access GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float  -- /usr/include/gsl/gsl_matrix_float.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_alloc_row_from_matrix";

   function gsl_vector_float_alloc_col_from_matrix (arg1 : access gsl_matrix_float; arg2 : size_t) return access GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float  -- /usr/include/gsl/gsl_matrix_float.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_alloc_col_from_matrix";

   procedure gsl_matrix_float_free (m : access gsl_matrix_float)  -- /usr/include/gsl/gsl_matrix_float.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_free";

  -- Views  
   function gsl_matrix_float_submatrix
     (m : access gsl_matrix_float;
      i : size_t;
      j : size_t;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_float_view  -- /usr/include/gsl/gsl_matrix_float.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_submatrix";

   function gsl_matrix_float_row (m : access gsl_matrix_float; i : size_t) return GSL.Low_Level.gsl_gsl_vector_float_h.u_gsl_vector_float_view  -- /usr/include/gsl/gsl_matrix_float.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_row";

   function gsl_matrix_float_column (m : access gsl_matrix_float; j : size_t) return GSL.Low_Level.gsl_gsl_vector_float_h.u_gsl_vector_float_view  -- /usr/include/gsl/gsl_matrix_float.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_column";

   function gsl_matrix_float_diagonal (m : access gsl_matrix_float) return GSL.Low_Level.gsl_gsl_vector_float_h.u_gsl_vector_float_view  -- /usr/include/gsl/gsl_matrix_float.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_diagonal";

   function gsl_matrix_float_subdiagonal (m : access gsl_matrix_float; k : size_t) return GSL.Low_Level.gsl_gsl_vector_float_h.u_gsl_vector_float_view  -- /usr/include/gsl/gsl_matrix_float.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_subdiagonal";

   function gsl_matrix_float_superdiagonal (m : access gsl_matrix_float; k : size_t) return GSL.Low_Level.gsl_gsl_vector_float_h.u_gsl_vector_float_view  -- /usr/include/gsl/gsl_matrix_float.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_superdiagonal";

   function gsl_matrix_float_subrow
     (m : access gsl_matrix_float;
      i : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_float_h.u_gsl_vector_float_view  -- /usr/include/gsl/gsl_matrix_float.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_subrow";

   function gsl_matrix_float_subcolumn
     (m : access gsl_matrix_float;
      j : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_float_h.u_gsl_vector_float_view  -- /usr/include/gsl/gsl_matrix_float.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_subcolumn";

   function gsl_matrix_float_view_array
     (base : access float;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_float_view  -- /usr/include/gsl/gsl_matrix_float.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_view_array";

   function gsl_matrix_float_view_array_with_tda
     (base : access float;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_float_view  -- /usr/include/gsl/gsl_matrix_float.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_view_array_with_tda";

   function gsl_matrix_float_view_vector
     (v : access GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_float_view  -- /usr/include/gsl/gsl_matrix_float.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_view_vector";

   function gsl_matrix_float_view_vector_with_tda
     (v : access GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_float_view  -- /usr/include/gsl/gsl_matrix_float.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_view_vector_with_tda";

   function gsl_matrix_float_const_submatrix
     (m : access constant gsl_matrix_float;
      i : size_t;
      j : size_t;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_float_const_view  -- /usr/include/gsl/gsl_matrix_float.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_const_submatrix";

   function gsl_matrix_float_const_row (m : access constant gsl_matrix_float; i : size_t) return GSL.Low_Level.gsl_gsl_vector_float_h.u_gsl_vector_float_const_view  -- /usr/include/gsl/gsl_matrix_float.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_const_row";

   function gsl_matrix_float_const_column (m : access constant gsl_matrix_float; j : size_t) return GSL.Low_Level.gsl_gsl_vector_float_h.u_gsl_vector_float_const_view  -- /usr/include/gsl/gsl_matrix_float.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_const_column";

   function gsl_matrix_float_const_diagonal (m : access constant gsl_matrix_float) return GSL.Low_Level.gsl_gsl_vector_float_h.u_gsl_vector_float_const_view  -- /usr/include/gsl/gsl_matrix_float.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_const_diagonal";

   function gsl_matrix_float_const_subdiagonal (m : access constant gsl_matrix_float; k : size_t) return GSL.Low_Level.gsl_gsl_vector_float_h.u_gsl_vector_float_const_view  -- /usr/include/gsl/gsl_matrix_float.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_const_subdiagonal";

   function gsl_matrix_float_const_superdiagonal (m : access constant gsl_matrix_float; k : size_t) return GSL.Low_Level.gsl_gsl_vector_float_h.u_gsl_vector_float_const_view  -- /usr/include/gsl/gsl_matrix_float.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_const_superdiagonal";

   function gsl_matrix_float_const_subrow
     (m : access constant gsl_matrix_float;
      i : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_float_h.u_gsl_vector_float_const_view  -- /usr/include/gsl/gsl_matrix_float.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_const_subrow";

   function gsl_matrix_float_const_subcolumn
     (m : access constant gsl_matrix_float;
      j : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_float_h.u_gsl_vector_float_const_view  -- /usr/include/gsl/gsl_matrix_float.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_const_subcolumn";

   function gsl_matrix_float_const_view_array
     (base : access float;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_float_const_view  -- /usr/include/gsl/gsl_matrix_float.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_const_view_array";

   function gsl_matrix_float_const_view_array_with_tda
     (base : access float;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_float_const_view  -- /usr/include/gsl/gsl_matrix_float.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_const_view_array_with_tda";

   function gsl_matrix_float_const_view_vector
     (v : access constant GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_float_const_view  -- /usr/include/gsl/gsl_matrix_float.h:196
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_const_view_vector";

   function gsl_matrix_float_const_view_vector_with_tda
     (v : access constant GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_float_const_view  -- /usr/include/gsl/gsl_matrix_float.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_const_view_vector_with_tda";

  -- Operations  
   procedure gsl_matrix_float_set_zero (m : access gsl_matrix_float)  -- /usr/include/gsl/gsl_matrix_float.h:208
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_set_zero";

   procedure gsl_matrix_float_set_identity (m : access gsl_matrix_float)  -- /usr/include/gsl/gsl_matrix_float.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_set_identity";

   procedure gsl_matrix_float_set_all (m : access gsl_matrix_float; x : float)  -- /usr/include/gsl/gsl_matrix_float.h:210
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_set_all";

   function gsl_matrix_float_fread (stream : Interfaces.C_Streams.FILEs; m : access gsl_matrix_float) return int  -- /usr/include/gsl/gsl_matrix_float.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_fread";

   function gsl_matrix_float_fwrite (stream : Interfaces.C_Streams.FILEs; m : access constant gsl_matrix_float) return int  -- /usr/include/gsl/gsl_matrix_float.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_fwrite";

   function gsl_matrix_float_fscanf (stream : Interfaces.C_Streams.FILEs; m : access gsl_matrix_float) return int  -- /usr/include/gsl/gsl_matrix_float.h:214
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_fscanf";

   function gsl_matrix_float_fprintf
     (stream : Interfaces.C_Streams.FILEs;
      m : access constant gsl_matrix_float;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_matrix_float.h:215
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_fprintf";

   function gsl_matrix_float_memcpy (dest : access gsl_matrix_float; src : access constant gsl_matrix_float) return int  -- /usr/include/gsl/gsl_matrix_float.h:217
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_memcpy";

   function gsl_matrix_float_swap (m1 : access gsl_matrix_float; m2 : access gsl_matrix_float) return int  -- /usr/include/gsl/gsl_matrix_float.h:218
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_swap";

   function gsl_matrix_float_tricpy
     (uplo_src : char;
      copy_diag : int;
      dest : access gsl_matrix_float;
      src : access constant gsl_matrix_float) return int  -- /usr/include/gsl/gsl_matrix_float.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_tricpy";

   function gsl_matrix_float_swap_rows
     (m : access gsl_matrix_float;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_float.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_swap_rows";

   function gsl_matrix_float_swap_columns
     (m : access gsl_matrix_float;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_float.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_swap_columns";

   function gsl_matrix_float_swap_rowcol
     (m : access gsl_matrix_float;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_float.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_swap_rowcol";

   function gsl_matrix_float_transpose (m : access gsl_matrix_float) return int  -- /usr/include/gsl/gsl_matrix_float.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_transpose";

   function gsl_matrix_float_transpose_memcpy (dest : access gsl_matrix_float; src : access constant gsl_matrix_float) return int  -- /usr/include/gsl/gsl_matrix_float.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_transpose_memcpy";

   function gsl_matrix_float_transpose_tricpy
     (uplo_src : char;
      copy_diag : int;
      dest : access gsl_matrix_float;
      src : access constant gsl_matrix_float) return int  -- /usr/include/gsl/gsl_matrix_float.h:226
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_transpose_tricpy";

   function gsl_matrix_float_max (m : access constant gsl_matrix_float) return float  -- /usr/include/gsl/gsl_matrix_float.h:228
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_max";

   function gsl_matrix_float_min (m : access constant gsl_matrix_float) return float  -- /usr/include/gsl/gsl_matrix_float.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_min";

   procedure gsl_matrix_float_minmax
     (m : access constant gsl_matrix_float;
      min_out : access float;
      max_out : access float)  -- /usr/include/gsl/gsl_matrix_float.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_minmax";

   procedure gsl_matrix_float_max_index
     (m : access constant gsl_matrix_float;
      imax : access size_t;
      jmax : access size_t)  -- /usr/include/gsl/gsl_matrix_float.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_max_index";

   procedure gsl_matrix_float_min_index
     (m : access constant gsl_matrix_float;
      imin : access size_t;
      jmin : access size_t)  -- /usr/include/gsl/gsl_matrix_float.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_min_index";

   procedure gsl_matrix_float_minmax_index
     (m : access constant gsl_matrix_float;
      imin : access size_t;
      jmin : access size_t;
      imax : access size_t;
      jmax : access size_t)  -- /usr/include/gsl/gsl_matrix_float.h:234
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_minmax_index";

   function gsl_matrix_float_equal (a : access constant gsl_matrix_float; b : access constant gsl_matrix_float) return int  -- /usr/include/gsl/gsl_matrix_float.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_equal";

   function gsl_matrix_float_isnull (m : access constant gsl_matrix_float) return int  -- /usr/include/gsl/gsl_matrix_float.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_isnull";

   function gsl_matrix_float_ispos (m : access constant gsl_matrix_float) return int  -- /usr/include/gsl/gsl_matrix_float.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_ispos";

   function gsl_matrix_float_isneg (m : access constant gsl_matrix_float) return int  -- /usr/include/gsl/gsl_matrix_float.h:240
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_isneg";

   function gsl_matrix_float_isnonneg (m : access constant gsl_matrix_float) return int  -- /usr/include/gsl/gsl_matrix_float.h:241
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_isnonneg";

   function gsl_matrix_float_add (a : access gsl_matrix_float; b : access constant gsl_matrix_float) return int  -- /usr/include/gsl/gsl_matrix_float.h:243
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_add";

   function gsl_matrix_float_sub (a : access gsl_matrix_float; b : access constant gsl_matrix_float) return int  -- /usr/include/gsl/gsl_matrix_float.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_sub";

   function gsl_matrix_float_mul_elements (a : access gsl_matrix_float; b : access constant gsl_matrix_float) return int  -- /usr/include/gsl/gsl_matrix_float.h:245
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_mul_elements";

   function gsl_matrix_float_div_elements (a : access gsl_matrix_float; b : access constant gsl_matrix_float) return int  -- /usr/include/gsl/gsl_matrix_float.h:246
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_div_elements";

   function gsl_matrix_float_scale (a : access gsl_matrix_float; x : double) return int  -- /usr/include/gsl/gsl_matrix_float.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_scale";

   function gsl_matrix_float_add_constant (a : access gsl_matrix_float; x : double) return int  -- /usr/include/gsl/gsl_matrix_float.h:248
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_add_constant";

   function gsl_matrix_float_add_diagonal (a : access gsl_matrix_float; x : double) return int  -- /usr/include/gsl/gsl_matrix_float.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_add_diagonal";

  --********************************************************************* 
  -- The functions below are obsolete                                     
  --********************************************************************* 
   function gsl_matrix_float_get_row
     (v : access GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float;
      m : access constant gsl_matrix_float;
      i : size_t) return int  -- /usr/include/gsl/gsl_matrix_float.h:254
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_get_row";

   function gsl_matrix_float_get_col
     (v : access GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float;
      m : access constant gsl_matrix_float;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_float.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_get_col";

   function gsl_matrix_float_set_row
     (m : access gsl_matrix_float;
      i : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float) return int  -- /usr/include/gsl/gsl_matrix_float.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_set_row";

   function gsl_matrix_float_set_col
     (m : access gsl_matrix_float;
      j : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_float_h.gsl_vector_float) return int  -- /usr/include/gsl/gsl_matrix_float.h:257
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_set_col";

  --********************************************************************* 
  -- inline functions if you are using GCC  
   function gsl_matrix_float_get
     (m : access constant gsl_matrix_float;
      i : size_t;
      j : size_t) return float  -- /usr/include/gsl/gsl_matrix_float.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_get";

   procedure gsl_matrix_float_set
     (m : access gsl_matrix_float;
      i : size_t;
      j : size_t;
      x : float)  -- /usr/include/gsl/gsl_matrix_float.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_set";

   function gsl_matrix_float_ptr
     (arg1 : access gsl_matrix_float;
      arg2 : size_t;
      arg3 : size_t) return access float  -- /usr/include/gsl/gsl_matrix_float.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_ptr";

   function gsl_matrix_float_const_ptr
     (arg1 : access constant gsl_matrix_float;
      arg2 : size_t;
      arg3 : size_t) return access float  -- /usr/include/gsl/gsl_matrix_float.h:265
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_float_const_ptr";

end GSL.Low_Level.gsl_gsl_matrix_float_h;
