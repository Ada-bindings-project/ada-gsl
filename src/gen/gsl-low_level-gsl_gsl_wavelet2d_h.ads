pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_wavelet_h;

limited with GSL.Low_Level.gsl_gsl_matrix_double_h;

package GSL.Low_Level.gsl_gsl_wavelet2d_h is

   function gsl_wavelet2d_transform
     (w : access constant GSL.Low_Level.gsl_gsl_wavelet_h.gsl_wavelet;
      data : access double;
      tda : size_t;
      size1 : size_t;
      size2 : size_t;
      dir : GSL.Low_Level.gsl_gsl_wavelet_h.gsl_wavelet_direction;
      work : access GSL.Low_Level.gsl_gsl_wavelet_h.gsl_wavelet_workspace) return int  -- /usr/include/gsl/gsl_wavelet2d.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_wavelet2d_transform";

   function gsl_wavelet2d_transform_forward
     (w : access constant GSL.Low_Level.gsl_gsl_wavelet_h.gsl_wavelet;
      data : access double;
      tda : size_t;
      size1 : size_t;
      size2 : size_t;
      work : access GSL.Low_Level.gsl_gsl_wavelet_h.gsl_wavelet_workspace) return int  -- /usr/include/gsl/gsl_wavelet2d.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_wavelet2d_transform_forward";

   function gsl_wavelet2d_transform_inverse
     (w : access constant GSL.Low_Level.gsl_gsl_wavelet_h.gsl_wavelet;
      data : access double;
      tda : size_t;
      size1 : size_t;
      size2 : size_t;
      work : access GSL.Low_Level.gsl_gsl_wavelet_h.gsl_wavelet_workspace) return int  -- /usr/include/gsl/gsl_wavelet2d.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_wavelet2d_transform_inverse";

   function gsl_wavelet2d_nstransform
     (w : access constant GSL.Low_Level.gsl_gsl_wavelet_h.gsl_wavelet;
      data : access double;
      tda : size_t;
      size1 : size_t;
      size2 : size_t;
      dir : GSL.Low_Level.gsl_gsl_wavelet_h.gsl_wavelet_direction;
      work : access GSL.Low_Level.gsl_gsl_wavelet_h.gsl_wavelet_workspace) return int  -- /usr/include/gsl/gsl_wavelet2d.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_wavelet2d_nstransform";

   function gsl_wavelet2d_nstransform_forward
     (w : access constant GSL.Low_Level.gsl_gsl_wavelet_h.gsl_wavelet;
      data : access double;
      tda : size_t;
      size1 : size_t;
      size2 : size_t;
      work : access GSL.Low_Level.gsl_gsl_wavelet_h.gsl_wavelet_workspace) return int  -- /usr/include/gsl/gsl_wavelet2d.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_wavelet2d_nstransform_forward";

   function gsl_wavelet2d_nstransform_inverse
     (w : access constant GSL.Low_Level.gsl_gsl_wavelet_h.gsl_wavelet;
      data : access double;
      tda : size_t;
      size1 : size_t;
      size2 : size_t;
      work : access GSL.Low_Level.gsl_gsl_wavelet_h.gsl_wavelet_workspace) return int  -- /usr/include/gsl/gsl_wavelet2d.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_wavelet2d_nstransform_inverse";

   function gsl_wavelet2d_transform_matrix
     (w : access constant GSL.Low_Level.gsl_gsl_wavelet_h.gsl_wavelet;
      a : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      dir : GSL.Low_Level.gsl_gsl_wavelet_h.gsl_wavelet_direction;
      work : access GSL.Low_Level.gsl_gsl_wavelet_h.gsl_wavelet_workspace) return int  -- /usr/include/gsl/gsl_wavelet2d.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_wavelet2d_transform_matrix";

   function gsl_wavelet2d_transform_matrix_forward
     (w : access constant GSL.Low_Level.gsl_gsl_wavelet_h.gsl_wavelet;
      a : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      work : access GSL.Low_Level.gsl_gsl_wavelet_h.gsl_wavelet_workspace) return int  -- /usr/include/gsl/gsl_wavelet2d.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_wavelet2d_transform_matrix_forward";

   function gsl_wavelet2d_transform_matrix_inverse
     (w : access constant GSL.Low_Level.gsl_gsl_wavelet_h.gsl_wavelet;
      a : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      work : access GSL.Low_Level.gsl_gsl_wavelet_h.gsl_wavelet_workspace) return int  -- /usr/include/gsl/gsl_wavelet2d.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_wavelet2d_transform_matrix_inverse";

   function gsl_wavelet2d_nstransform_matrix
     (w : access constant GSL.Low_Level.gsl_gsl_wavelet_h.gsl_wavelet;
      a : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      dir : GSL.Low_Level.gsl_gsl_wavelet_h.gsl_wavelet_direction;
      work : access GSL.Low_Level.gsl_gsl_wavelet_h.gsl_wavelet_workspace) return int  -- /usr/include/gsl/gsl_wavelet2d.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_wavelet2d_nstransform_matrix";

   function gsl_wavelet2d_nstransform_matrix_forward
     (w : access constant GSL.Low_Level.gsl_gsl_wavelet_h.gsl_wavelet;
      a : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      work : access GSL.Low_Level.gsl_gsl_wavelet_h.gsl_wavelet_workspace) return int  -- /usr/include/gsl/gsl_wavelet2d.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_wavelet2d_nstransform_matrix_forward";

   function gsl_wavelet2d_nstransform_matrix_inverse
     (w : access constant GSL.Low_Level.gsl_gsl_wavelet_h.gsl_wavelet;
      a : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      work : access GSL.Low_Level.gsl_gsl_wavelet_h.gsl_wavelet_workspace) return int  -- /usr/include/gsl/gsl_wavelet2d.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_wavelet2d_nstransform_matrix_inverse";

end GSL.Low_Level.gsl_gsl_wavelet2d_h;
