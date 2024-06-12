with Vector2;

package Matrix2 is
   type marray is array (1 .. 4) of Float;
   type Matrix2 is tagged record
      m : marray;
   end record;
   function GetAt (mat : Matrix2; row, col : Natural) return Float;
   function "+" (mat1, mat2 : in Matrix2) return Matrix2;
   function "-" (mat1, mat2 : Matrix2) return Matrix2;
   function "*"
     (mat1 : Matrix2;
      vec1 : Vector2.Vector2) return Vector2.Vector2;
   function "*" (mat1 : Matrix2; fl1 : in Float) return Matrix2;
   function "*" (mat1, mat2 : Matrix2) return Matrix2;
   procedure SetAt (mat : in out Matrix2; row, col : Natural; value : Float);
   procedure Identity (mat : in out Matrix2);

end Matrix2;
