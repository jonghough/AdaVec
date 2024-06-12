with Vector4;
with Matrix3;

package Matrix4 is
   type marray is array (1 .. 16) of Float;
   type Matrix4 is tagged record
      m : marray;
   end record;
   function GetAt (mat : Matrix4; row, col : Natural) return Float;
   function "+" (mat1, mat2 : Matrix4) return Matrix4;
   function "-" (mat1, mat2 : Matrix4) return Matrix4;
   function "*" (mat1 : Matrix4; vec1 : Vector4.Vector4)
   return Vector4.Vector4;
   function "*" (mat1 : Matrix4; fl1 : Float) return Matrix4;
   function "*" (mat1, mat2 : Matrix4) return Matrix4;
   function Inverse (mat1 : Matrix4) return Matrix4;
   function Det (mat1 : Matrix4) return Float;
   function MinorMatrix (mat1 : Matrix4; row, col : Natural)
   return Matrix3.Matrix3;
   function Transpose (mat1 : Matrix4) return Matrix4;
   function Trace (mat1 : Matrix4) return Float;
   procedure SetAt (mat : out Matrix4; row, col : Natural; value : Float);
   procedure Identity (mat : out Matrix4);
end Matrix4;