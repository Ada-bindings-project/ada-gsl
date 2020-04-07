pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_permutation_h;
limited with GSL.Low_Level.gsl_gsl_matrix_ulong_h;

package GSL.Low_Level.gsl_gsl_permute_matrix_ulong_h is

   function gsl_permute_matrix_ulong (p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation; A : access GSL.Low_Level.gsl_gsl_matrix_ulong_h.gsl_matrix_ulong) return int  -- /usr/include/gsl/gsl_permute_matrix_ulong.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_matrix_ulong";

end GSL.Low_Level.gsl_gsl_permute_matrix_ulong_h;
