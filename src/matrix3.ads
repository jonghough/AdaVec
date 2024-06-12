with Vector3;
with Matrix2;

package Matrix3 is
   type marray is array (1 .. 9) of Float;
   type Matrix3 is tagged record
      m : marray;
   end record;
   function GetAt (mat : Matrix3; row, col : Natural) return Float;
   function "+" (mat1, mat2 : Matrix3) return Matrix3;
   function "-" (mat1, mat2 : Matrix3) return Matrix3;
   function "*" (mat1 : Matrix3; vec1 : Vector3.Vector3)
   return Vector3.Vector3;
   function "*" (mat1 : Matrix3; fl1 : Float) return Matrix3;
   function "*" (mat1, mat2 : Matrix3) return Matrix3;
   function Inverse (mat1 : Matrix3) return Matrix3;
   function Det (mat1 : Matrix3) return Float;
   function MinorMatrix (mat1 : Matrix3; row, col : Natural)
   return Matrix2.Matrix2;
   function Transpose (mat1 : Matrix3) return Matrix3;
   function Trace (mat1 : Matrix3) return Float;
   procedure SetAt (mat : out Matrix3; row, col : Natural; value : Float);
   procedure Identity (mat : out Matrix3);
end Matrix3;