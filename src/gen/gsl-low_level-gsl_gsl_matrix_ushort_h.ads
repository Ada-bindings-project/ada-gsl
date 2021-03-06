pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with GSL.Low_Level.gsl_gsl_block_ushort_h;
with GSL.Low_Level.gsl_gsl_vector_ushort_h;
with Interfaces.C_Streams;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_matrix_ushort_h is

  -- matrix/gsl_matrix_ushort.h
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

   type gsl_matrix_ushort is record
      size1 : aliased size_t;  -- /usr/include/gsl/gsl_matrix_ushort.h:44
      size2 : aliased size_t;  -- /usr/include/gsl/gsl_matrix_ushort.h:45
      tda : aliased size_t;  -- /usr/include/gsl/gsl_matrix_ushort.h:46
      data : access unsigned_short;  -- /usr/include/gsl/gsl_matrix_ushort.h:47
      block : access GSL.Low_Level.gsl_gsl_block_ushort_h.gsl_block_ushort;  -- /usr/include/gsl/gsl_matrix_ushort.h:48
      owner : aliased int;  -- /usr/include/gsl/gsl_matrix_ushort.h:49
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_ushort.h:50

   type u_gsl_matrix_ushort_view is record
      matrix : aliased gsl_matrix_ushort;  -- /usr/include/gsl/gsl_matrix_ushort.h:54
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_ushort.h:55

   subtype gsl_matrix_ushort_view is u_gsl_matrix_ushort_view;  -- /usr/include/gsl/gsl_matrix_ushort.h:57

   type u_gsl_matrix_ushort_const_view is record
      matrix : aliased gsl_matrix_ushort;  -- /usr/include/gsl/gsl_matrix_ushort.h:61
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_ushort.h:62

   subtype gsl_matrix_ushort_const_view is u_gsl_matrix_ushort_const_view;  -- /usr/include/gsl/gsl_matrix_ushort.h:64

  -- Allocation  
   function gsl_matrix_ushort_alloc (arg1 : size_t; arg2 : size_t) return access gsl_matrix_ushort  -- /usr/include/gsl/gsl_matrix_ushort.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_alloc";

   function gsl_matrix_ushort_calloc (arg1 : size_t; arg2 : size_t) return access gsl_matrix_ushort  -- /usr/include/gsl/gsl_matrix_ushort.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_calloc";

   function gsl_matrix_ushort_alloc_from_block
     (arg1 : access GSL.Low_Level.gsl_gsl_block_ushort_h.gsl_block_ushort;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t;
      arg5 : size_t) return access gsl_matrix_ushort  -- /usr/include/gsl/gsl_matrix_ushort.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_alloc_from_block";

   function gsl_matrix_ushort_alloc_from_matrix
     (arg1 : access gsl_matrix_ushort;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t;
      arg5 : size_t) return access gsl_matrix_ushort  -- /usr/include/gsl/gsl_matrix_ushort.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_alloc_from_matrix";

   function gsl_vector_ushort_alloc_row_from_matrix (arg1 : access gsl_matrix_ushort; arg2 : size_t) return access GSL.Low_Level.gsl_gsl_vector_ushort_h.gsl_vector_ushort  -- /usr/include/gsl/gsl_matrix_ushort.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_alloc_row_from_matrix";

   function gsl_vector_ushort_alloc_col_from_matrix (arg1 : access gsl_matrix_ushort; arg2 : size_t) return access GSL.Low_Level.gsl_gsl_vector_ushort_h.gsl_vector_ushort  -- /usr/include/gsl/gsl_matrix_ushort.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_alloc_col_from_matrix";

   procedure gsl_matrix_ushort_free (m : access gsl_matrix_ushort)  -- /usr/include/gsl/gsl_matrix_ushort.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_free";

  -- Views  
   function gsl_matrix_ushort_submatrix
     (m : access gsl_matrix_ushort;
      i : size_t;
      j : size_t;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_ushort_view  -- /usr/include/gsl/gsl_matrix_ushort.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_submatrix";

   function gsl_matrix_ushort_row (m : access gsl_matrix_ushort; i : size_t) return GSL.Low_Level.gsl_gsl_vector_ushort_h.u_gsl_vector_ushort_view  -- /usr/include/gsl/gsl_matrix_ushort.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_row";

   function gsl_matrix_ushort_column (m : access gsl_matrix_ushort; j : size_t) return GSL.Low_Level.gsl_gsl_vector_ushort_h.u_gsl_vector_ushort_view  -- /usr/include/gsl/gsl_matrix_ushort.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_column";

   function gsl_matrix_ushort_diagonal (m : access gsl_matrix_ushort) return GSL.Low_Level.gsl_gsl_vector_ushort_h.u_gsl_vector_ushort_view  -- /usr/include/gsl/gsl_matrix_ushort.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_diagonal";

   function gsl_matrix_ushort_subdiagonal (m : access gsl_matrix_ushort; k : size_t) return GSL.Low_Level.gsl_gsl_vector_ushort_h.u_gsl_vector_ushort_view  -- /usr/include/gsl/gsl_matrix_ushort.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_subdiagonal";

   function gsl_matrix_ushort_superdiagonal (m : access gsl_matrix_ushort; k : size_t) return GSL.Low_Level.gsl_gsl_vector_ushort_h.u_gsl_vector_ushort_view  -- /usr/include/gsl/gsl_matrix_ushort.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_superdiagonal";

   function gsl_matrix_ushort_subrow
     (m : access gsl_matrix_ushort;
      i : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_ushort_h.u_gsl_vector_ushort_view  -- /usr/include/gsl/gsl_matrix_ushort.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_subrow";

   function gsl_matrix_ushort_subcolumn
     (m : access gsl_matrix_ushort;
      j : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_ushort_h.u_gsl_vector_ushort_view  -- /usr/include/gsl/gsl_matrix_ushort.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_subcolumn";

   function gsl_matrix_ushort_view_array
     (base : access unsigned_short;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_ushort_view  -- /usr/include/gsl/gsl_matrix_ushort.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_view_array";

   function gsl_matrix_ushort_view_array_with_tda
     (base : access unsigned_short;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_ushort_view  -- /usr/include/gsl/gsl_matrix_ushort.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_view_array_with_tda";

   function gsl_matrix_ushort_view_vector
     (v : access GSL.Low_Level.gsl_gsl_vector_ushort_h.gsl_vector_ushort;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_ushort_view  -- /usr/include/gsl/gsl_matrix_ushort.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_view_vector";

   function gsl_matrix_ushort_view_vector_with_tda
     (v : access GSL.Low_Level.gsl_gsl_vector_ushort_h.gsl_vector_ushort;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_ushort_view  -- /usr/include/gsl/gsl_matrix_ushort.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_view_vector_with_tda";

   function gsl_matrix_ushort_const_submatrix
     (m : access constant gsl_matrix_ushort;
      i : size_t;
      j : size_t;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_ushort_const_view  -- /usr/include/gsl/gsl_matrix_ushort.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_const_submatrix";

   function gsl_matrix_ushort_const_row (m : access constant gsl_matrix_ushort; i : size_t) return GSL.Low_Level.gsl_gsl_vector_ushort_h.u_gsl_vector_ushort_const_view  -- /usr/include/gsl/gsl_matrix_ushort.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_const_row";

   function gsl_matrix_ushort_const_column (m : access constant gsl_matrix_ushort; j : size_t) return GSL.Low_Level.gsl_gsl_vector_ushort_h.u_gsl_vector_ushort_const_view  -- /usr/include/gsl/gsl_matrix_ushort.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_const_column";

   function gsl_matrix_ushort_const_diagonal (m : access constant gsl_matrix_ushort) return GSL.Low_Level.gsl_gsl_vector_ushort_h.u_gsl_vector_ushort_const_view  -- /usr/include/gsl/gsl_matrix_ushort.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_const_diagonal";

   function gsl_matrix_ushort_const_subdiagonal (m : access constant gsl_matrix_ushort; k : size_t) return GSL.Low_Level.gsl_gsl_vector_ushort_h.u_gsl_vector_ushort_const_view  -- /usr/include/gsl/gsl_matrix_ushort.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_const_subdiagonal";

   function gsl_matrix_ushort_const_superdiagonal (m : access constant gsl_matrix_ushort; k : size_t) return GSL.Low_Level.gsl_gsl_vector_ushort_h.u_gsl_vector_ushort_const_view  -- /usr/include/gsl/gsl_matrix_ushort.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_const_superdiagonal";

   function gsl_matrix_ushort_const_subrow
     (m : access constant gsl_matrix_ushort;
      i : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_ushort_h.u_gsl_vector_ushort_const_view  -- /usr/include/gsl/gsl_matrix_ushort.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_const_subrow";

   function gsl_matrix_ushort_const_subcolumn
     (m : access constant gsl_matrix_ushort;
      j : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_ushort_h.u_gsl_vector_ushort_const_view  -- /usr/include/gsl/gsl_matrix_ushort.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_const_subcolumn";

   function gsl_matrix_ushort_const_view_array
     (base : access unsigned_short;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_ushort_const_view  -- /usr/include/gsl/gsl_matrix_ushort.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_const_view_array";

   function gsl_matrix_ushort_const_view_array_with_tda
     (base : access unsigned_short;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_ushort_const_view  -- /usr/include/gsl/gsl_matrix_ushort.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_const_view_array_with_tda";

   function gsl_matrix_ushort_const_view_vector
     (v : access constant GSL.Low_Level.gsl_gsl_vector_ushort_h.gsl_vector_ushort;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_ushort_const_view  -- /usr/include/gsl/gsl_matrix_ushort.h:196
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_const_view_vector";

   function gsl_matrix_ushort_const_view_vector_with_tda
     (v : access constant GSL.Low_Level.gsl_gsl_vector_ushort_h.gsl_vector_ushort;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_ushort_const_view  -- /usr/include/gsl/gsl_matrix_ushort.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_const_view_vector_with_tda";

  -- Operations  
   procedure gsl_matrix_ushort_set_zero (m : access gsl_matrix_ushort)  -- /usr/include/gsl/gsl_matrix_ushort.h:208
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_set_zero";

   procedure gsl_matrix_ushort_set_identity (m : access gsl_matrix_ushort)  -- /usr/include/gsl/gsl_matrix_ushort.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_set_identity";

   procedure gsl_matrix_ushort_set_all (m : access gsl_matrix_ushort; x : unsigned_short)  -- /usr/include/gsl/gsl_matrix_ushort.h:210
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_set_all";

   function gsl_matrix_ushort_fread (stream : Interfaces.C_Streams.FILEs; m : access gsl_matrix_ushort) return int  -- /usr/include/gsl/gsl_matrix_ushort.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_fread";

   function gsl_matrix_ushort_fwrite (stream : Interfaces.C_Streams.FILEs; m : access constant gsl_matrix_ushort) return int  -- /usr/include/gsl/gsl_matrix_ushort.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_fwrite";

   function gsl_matrix_ushort_fscanf (stream : Interfaces.C_Streams.FILEs; m : access gsl_matrix_ushort) return int  -- /usr/include/gsl/gsl_matrix_ushort.h:214
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_fscanf";

   function gsl_matrix_ushort_fprintf
     (stream : Interfaces.C_Streams.FILEs;
      m : access constant gsl_matrix_ushort;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_matrix_ushort.h:215
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_fprintf";

   function gsl_matrix_ushort_memcpy (dest : access gsl_matrix_ushort; src : access constant gsl_matrix_ushort) return int  -- /usr/include/gsl/gsl_matrix_ushort.h:217
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_memcpy";

   function gsl_matrix_ushort_swap (m1 : access gsl_matrix_ushort; m2 : access gsl_matrix_ushort) return int  -- /usr/include/gsl/gsl_matrix_ushort.h:218
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_swap";

   function gsl_matrix_ushort_tricpy
     (uplo_src : char;
      copy_diag : int;
      dest : access gsl_matrix_ushort;
      src : access constant gsl_matrix_ushort) return int  -- /usr/include/gsl/gsl_matrix_ushort.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_tricpy";

   function gsl_matrix_ushort_swap_rows
     (m : access gsl_matrix_ushort;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_ushort.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_swap_rows";

   function gsl_matrix_ushort_swap_columns
     (m : access gsl_matrix_ushort;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_ushort.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_swap_columns";

   function gsl_matrix_ushort_swap_rowcol
     (m : access gsl_matrix_ushort;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_ushort.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_swap_rowcol";

   function gsl_matrix_ushort_transpose (m : access gsl_matrix_ushort) return int  -- /usr/include/gsl/gsl_matrix_ushort.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_transpose";

   function gsl_matrix_ushort_transpose_memcpy (dest : access gsl_matrix_ushort; src : access constant gsl_matrix_ushort) return int  -- /usr/include/gsl/gsl_matrix_ushort.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_transpose_memcpy";

   function gsl_matrix_ushort_transpose_tricpy
     (uplo_src : char;
      copy_diag : int;
      dest : access gsl_matrix_ushort;
      src : access constant gsl_matrix_ushort) return int  -- /usr/include/gsl/gsl_matrix_ushort.h:226
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_transpose_tricpy";

   function gsl_matrix_ushort_max (m : access constant gsl_matrix_ushort) return unsigned_short  -- /usr/include/gsl/gsl_matrix_ushort.h:228
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_max";

   function gsl_matrix_ushort_min (m : access constant gsl_matrix_ushort) return unsigned_short  -- /usr/include/gsl/gsl_matrix_ushort.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_min";

   procedure gsl_matrix_ushort_minmax
     (m : access constant gsl_matrix_ushort;
      min_out : access unsigned_short;
      max_out : access unsigned_short)  -- /usr/include/gsl/gsl_matrix_ushort.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_minmax";

   procedure gsl_matrix_ushort_max_index
     (m : access constant gsl_matrix_ushort;
      imax : access size_t;
      jmax : access size_t)  -- /usr/include/gsl/gsl_matrix_ushort.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_max_index";

   procedure gsl_matrix_ushort_min_index
     (m : access constant gsl_matrix_ushort;
      imin : access size_t;
      jmin : access size_t)  -- /usr/include/gsl/gsl_matrix_ushort.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_min_index";

   procedure gsl_matrix_ushort_minmax_index
     (m : access constant gsl_matrix_ushort;
      imin : access size_t;
      jmin : access size_t;
      imax : access size_t;
      jmax : access size_t)  -- /usr/include/gsl/gsl_matrix_ushort.h:234
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_minmax_index";

   function gsl_matrix_ushort_equal (a : access constant gsl_matrix_ushort; b : access constant gsl_matrix_ushort) return int  -- /usr/include/gsl/gsl_matrix_ushort.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_equal";

   function gsl_matrix_ushort_isnull (m : access constant gsl_matrix_ushort) return int  -- /usr/include/gsl/gsl_matrix_ushort.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_isnull";

   function gsl_matrix_ushort_ispos (m : access constant gsl_matrix_ushort) return int  -- /usr/include/gsl/gsl_matrix_ushort.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_ispos";

   function gsl_matrix_ushort_isneg (m : access constant gsl_matrix_ushort) return int  -- /usr/include/gsl/gsl_matrix_ushort.h:240
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_isneg";

   function gsl_matrix_ushort_isnonneg (m : access constant gsl_matrix_ushort) return int  -- /usr/include/gsl/gsl_matrix_ushort.h:241
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_isnonneg";

   function gsl_matrix_ushort_add (a : access gsl_matrix_ushort; b : access constant gsl_matrix_ushort) return int  -- /usr/include/gsl/gsl_matrix_ushort.h:243
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_add";

   function gsl_matrix_ushort_sub (a : access gsl_matrix_ushort; b : access constant gsl_matrix_ushort) return int  -- /usr/include/gsl/gsl_matrix_ushort.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_sub";

   function gsl_matrix_ushort_mul_elements (a : access gsl_matrix_ushort; b : access constant gsl_matrix_ushort) return int  -- /usr/include/gsl/gsl_matrix_ushort.h:245
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_mul_elements";

   function gsl_matrix_ushort_div_elements (a : access gsl_matrix_ushort; b : access constant gsl_matrix_ushort) return int  -- /usr/include/gsl/gsl_matrix_ushort.h:246
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_div_elements";

   function gsl_matrix_ushort_scale (a : access gsl_matrix_ushort; x : double) return int  -- /usr/include/gsl/gsl_matrix_ushort.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_scale";

   function gsl_matrix_ushort_add_constant (a : access gsl_matrix_ushort; x : double) return int  -- /usr/include/gsl/gsl_matrix_ushort.h:248
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_add_constant";

   function gsl_matrix_ushort_add_diagonal (a : access gsl_matrix_ushort; x : double) return int  -- /usr/include/gsl/gsl_matrix_ushort.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_add_diagonal";

  --********************************************************************* 
  -- The functions below are obsolete                                     
  --********************************************************************* 
   function gsl_matrix_ushort_get_row
     (v : access GSL.Low_Level.gsl_gsl_vector_ushort_h.gsl_vector_ushort;
      m : access constant gsl_matrix_ushort;
      i : size_t) return int  -- /usr/include/gsl/gsl_matrix_ushort.h:254
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_get_row";

   function gsl_matrix_ushort_get_col
     (v : access GSL.Low_Level.gsl_gsl_vector_ushort_h.gsl_vector_ushort;
      m : access constant gsl_matrix_ushort;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_ushort.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_get_col";

   function gsl_matrix_ushort_set_row
     (m : access gsl_matrix_ushort;
      i : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_ushort_h.gsl_vector_ushort) return int  -- /usr/include/gsl/gsl_matrix_ushort.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_set_row";

   function gsl_matrix_ushort_set_col
     (m : access gsl_matrix_ushort;
      j : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_ushort_h.gsl_vector_ushort) return int  -- /usr/include/gsl/gsl_matrix_ushort.h:257
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_set_col";

  --********************************************************************* 
  -- inline functions if you are using GCC  
   function gsl_matrix_ushort_get
     (m : access constant gsl_matrix_ushort;
      i : size_t;
      j : size_t) return unsigned_short  -- /usr/include/gsl/gsl_matrix_ushort.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_get";

   procedure gsl_matrix_ushort_set
     (m : access gsl_matrix_ushort;
      i : size_t;
      j : size_t;
      x : unsigned_short)  -- /usr/include/gsl/gsl_matrix_ushort.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_set";

   function gsl_matrix_ushort_ptr
     (arg1 : access gsl_matrix_ushort;
      arg2 : size_t;
      arg3 : size_t) return access unsigned_short  -- /usr/include/gsl/gsl_matrix_ushort.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_ptr";

   function gsl_matrix_ushort_const_ptr
     (arg1 : access constant gsl_matrix_ushort;
      arg2 : size_t;
      arg3 : size_t) return access unsigned_short  -- /usr/include/gsl/gsl_matrix_ushort.h:265
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ushort_const_ptr";

end GSL.Low_Level.gsl_gsl_matrix_ushort_h;
