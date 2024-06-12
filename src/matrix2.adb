
package body Matrix2 is
   function GetAt (mat : Matrix2; row, col : Natural) return Float is

   begin
      return mat.m ((row - 1) * 2 + col);
   end GetAt;
   function "+" (mat1, mat2 : Matrix2) return Matrix2 is
      res : Matrix2;
   begin
      res.m (1) := mat1.m (1) + mat2.m (1);
      res.m (2) := mat1.m (2) + mat2.m (2);
      res.m (3) := mat1.m (3) + mat2.m (3);
      res.m (4) := mat1.m (4) + mat2.m (4);
      return res;
   end "+";
   function "-" (mat1, mat2 : Matrix2) return Matrix2 is
      res : Matrix2;
   begin
      res.m (1) := mat1.m (1) - mat2.m (1);
      res.m (2) := mat1.m (2) - mat2.m (2);
      res.m (3) := mat1.m (3) - mat2.m (3);
      res.m (4) := mat1.m (4) - mat2.m (4);
      return res;
   end "-";
   function "*" (mat1 : Matrix2; vec1 : Vector2.Vector2)
      return Vector2.Vector2 is
      res : Vector2.Vector2;
   begin
      res.x := mat1.m (1) * vec1.x + mat1.m (2) * vec1.y;
      res.y := mat1.m (3) * vec1.x + mat1.m (4) * vec1.y;
      return res;
   end "*";
   function "*" (mat1 :  Matrix2; fl1 : Float) return Matrix2 is
      res : Matrix2;
   begin
      res.m (1) := mat1.m (1) * fl1;
      res.m (2) := mat1.m (2) * fl1;
      res.m (3) := mat1.m (3) * fl1;
      res.m (4) := mat1.m (4) * fl1;
      return res;
   end "*";
   function "*" (mat1, mat2 : Matrix2) return Matrix2 is
      res : Matrix2;
   begin
      res.m (1) := mat1.m (1) * mat2.m (1) + mat1.m (2) * mat2.m (3);
      res.m (2) := mat1.m (1) * mat2.m (2) + mat1.m (2) * mat2.m (4);
      res.m (3) := mat1.m (3) * mat2.m (1) + mat1.m (4) * mat2.m (3);
      res.m (4) := mat1.m (3) * mat2.m (2) + mat1.m (4) * mat2.m (4);
      return res;
   end "*";
   function Inverse (mat1 : Matrix2) return Matrix2 is
      res : Matrix2;
      determinant : Float;
   begin
      determinant := Det (mat1);
      res.m (1) := mat1.m (4) / determinant;
      res.m (2) := mat1.m (2) * (-1.0) / determinant;
      res.m (3) := mat1.m (3) * (-1.0) / determinant;
      res.m (4) := mat1.m (1) / determinant;
      return res;
   end Inverse;
   function Det (mat1 : Matrix2) return Float is
      res : Float;
   begin
      res := mat1.m (1) * mat1.m (4) - mat1.m (2) * mat1.m (3);
      return res;
   end Det;
   function Transpose (mat1 : Matrix2) return Matrix2 is
      res : Matrix2;
   begin
      res.m (1) := mat1.m (1);
      res.m (2) := mat1.m (3);
      res.m (3) := mat1.m (2);
      res.m (4) := mat1.m (4);
      return res;
   end Transpose;
   function Trace (mat1 : Matrix2) return Float is
      res : Float;
   begin
      res := mat1.m (1) + mat1.m (4);
      return res;
   end Trace;
   procedure SetAt (mat : in out Matrix2; row, col : Natural; value : Float) is
   begin
      mat.m ((row - 1) * 2 + col) := value;
   end SetAt;
   procedure Identity (mat : in out Matrix2) is

   begin
      mat.m (1) := 1.0;
      mat.m (2) := 0.0;
      mat.m (3) := 0.0;
      mat.m (4) := 1.0;
   end Identity;

end Matrix2;