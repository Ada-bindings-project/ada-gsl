pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;


package GSL.Low_Level.gsl_gsl_sort_short_h is

  -- sort/gsl_sort_short.h
  -- * 
  -- * Copyright (C) 1996, 1997, 1998, 1999, 2000, 2007 Thomas Walter, Brian Gough
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

   procedure gsl_sort_short
     (data : access short;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_sort_short.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_short";

   procedure gsl_sort2_short
     (data1 : access short;
      stride1 : size_t;
      data2 : access short;
      stride2 : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_sort_short.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort2_short";

   procedure gsl_sort_short_index
     (p : access size_t;
      data : access short;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_sort_short.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_short_index";

   function gsl_sort_short_smallest
     (dest : access short;
      k : size_t;
      src : access short;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_sort_short.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_short_smallest";

   function gsl_sort_short_smallest_index
     (p : access size_t;
      k : size_t;
      src : access short;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_sort_short.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_short_smallest_index";

   function gsl_sort_short_largest
     (dest : access short;
      k : size_t;
      src : access short;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_sort_short.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_short_largest";

   function gsl_sort_short_largest_index
     (p : access size_t;
      k : size_t;
      src : access short;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_sort_short.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_short_largest_index";

end GSL.Low_Level.gsl_gsl_sort_short_h;
