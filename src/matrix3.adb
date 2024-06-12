
package body Matrix3 is
   function GetAt (mat : Matrix3; row, col : Natural) return Float is

   begin
      return mat.m ((row - 1) * 3 + col);
   end GetAt;
   function "+" (mat1, mat2 : Matrix3) return Matrix3 is
      res : Matrix3;
   begin
      res.m (1) := mat1.m (1) + mat2.m (1);
      res.m (2) := mat1.m (2) + mat2.m (2);
      res.m (3) := mat1.m (3) + mat2.m (3);
      res.m (4) := mat1.m (4) + mat2.m (4);
      res.m (5) := mat1.m (5) + mat2.m (5);
      res.m (6) := mat1.m (6) + mat2.m (6);
      res.m (7) := mat1.m (7) + mat2.m (7);
      res.m (8) := mat1.m (8) + mat2.m (8);
      res.m (9) := mat1.m (9) + mat2.m (9);
      return res;
   end "+";
   function "-" (mat1, mat2 : Matrix3) return Matrix3 is
      res : Matrix3;
   begin
      res.m (1) := mat1.m (1) - mat2.m (1);
      res.m (2) := mat1.m (2) - mat2.m (2);
      res.m (3) := mat1.m (3) - mat2.m (3);
      res.m (4) := mat1.m (4) - mat2.m (4);
      res.m (5) := mat1.m (5) - mat2.m (5);
      res.m (6) := mat1.m (6) - mat2.m (6);
      res.m (7) := mat1.m (7) - mat2.m (7);
      res.m (8) := mat1.m (8) - mat2.m (8);
      res.m (9) := mat1.m (9) - mat2.m (9);
      return res;
   end "-";
   function "*" (mat1 : Matrix3; vec1 : Vector3.Vector3)
      return Vector3.Vector3 is
      res : Vector3.Vector3;
   begin
      res.x := mat1.m (1) * vec1.x + mat1.m (2) * vec1.y + mat1.m (3) * vec1.z;
      res.y := mat1.m (4) * vec1.x + mat1.m (5) * vec1.y + mat1.m (6) * vec1.z;
      res.z := mat1.m (7) * vec1.x + mat1.m (8) * vec1.y + mat1.m (9) * vec1.z;
      return res;
   end "*";
   function "*" (mat1 :  Matrix3; fl1 : Float) return Matrix3 is
      res : Matrix3;
   begin
      res.m (1) := mat1.m (1) * fl1;
      res.m (2) := mat1.m (2) * fl1;
      res.m (3) := mat1.m (3) * fl1;
      res.m (4) := mat1.m (4) * fl1;
      res.m (5) := mat1.m (5) * fl1;
      res.m (6) := mat1.m (6) * fl1;
      res.m (7) := mat1.m (7) * fl1;
      res.m (8) := mat1.m (8) * fl1;
      res.m (9) := mat1.m (9) * fl1;
      return res;
   end "*";
   function "*" (mat1, mat2 : Matrix3) return Matrix3 is
      res : Matrix3;
   begin
      res.m (1) := mat1.m (1) * mat2.m (1) + mat1.m (2) * mat2.m (4)
      + mat1.m (3) * mat2.m (7);
      res.m (2) := mat1.m (1) * mat2.m (2) + mat1.m (2) * mat2.m (5)
      + mat1.m (3) * mat2.m (8);
      res.m (3) := mat1.m (1) * mat2.m (3) + mat1.m (2) * mat2.m (6)
      + mat1.m (3) * mat2.m (9);
      res.m (4) := mat1.m (4) * mat2.m (1) + mat1.m (5) * mat2.m (4)
      + mat1.m (6) * mat2.m (7);
      res.m (5) := mat1.m (4) * mat2.m (2) + mat1.m (5) * mat2.m (5)
      + mat1.m (6) * mat2.m (8);
      res.m (6) := mat1.m (4) * mat2.m (3) + mat1.m (5) * mat2.m (6)
      + mat1.m (6) * mat2.m (9);
      res.m (7) := mat1.m (7) * mat2.m (1) + mat1.m (8) * mat2.m (4)
      + mat1.m (9) * mat2.m (7);
      res.m (8) := mat1.m (7) * mat2.m (2) + mat1.m (8) * mat2.m (5)
      + mat1.m (9) * mat2.m (8);
      res.m (9) := mat1.m (7) * mat2.m (3) + mat1.m (8) * mat2.m (6)
      + mat1.m (9) * mat2.m (9);
      return res;
   end "*";
   function Inverse (mat1 : Matrix3) return Matrix3 is
      res : Matrix3;
      tr : Matrix3;
      minor : Matrix2.Matrix2;
      determinant : Float;
      minorDet, mult : Float;
      ctr : Natural;
   begin
      mult := 1.0;
      ctr := 1;
      determinant := Det (mat1);
      tr := Transpose (mat1);
      for x in 1 .. 3 loop
         for y in 1 .. 3 loop
            minor := MinorMatrix (tr, x, y);
            minorDet := Matrix2.Det (minor);
            res.m (ctr) := minorDet * mult / determinant;
            ctr := ctr + 1;
            mult :=  -1.0 * mult;
         end loop;
      end loop;

      return res;
   end Inverse;

   function Det (mat1 : Matrix3) return Float is
      res : Float;
   begin
      res := mat1.m (1) * (mat1.m (5) * mat1.m (9) - mat1.m (6) * mat1.m (8))
      - mat1.m (2) * (mat1.m (4) * mat1.m (9) - mat1.m (7) * mat1.m (6))
      + mat1.m (3) * (mat1.m (4) * mat1.m (8) - mat1.m (5) * mat1.m (7));
      return res;
   end Det;

   function MinorMatrix (mat1 : Matrix3; row, col : Natural)
   return Matrix2.Matrix2 is
      res : Matrix2.Matrix2;
      ctr : Natural := 1;
   begin
      for x in 1 .. 3 loop
         for y in 1 .. 3 loop
            if x /= row and y /= col then
               res.m (ctr) := mat1.GetAt (x, y);
               ctr := ctr + 1;
            end if;
         end loop;
      end loop;
      return res;
   end MinorMatrix;
   function Transpose (mat1 : Matrix3) return Matrix3 is
      res : Matrix3;
   begin
      res.m (1) := mat1.m (1);
      res.m (2) := mat1.m (4);
      res.m (3) := mat1.m (7);
      res.m (4) := mat1.m (2);
      res.m (5) := mat1.m (5);
      res.m (6) := mat1.m (8);
      res.m (7) := mat1.m (3);
      res.m (8) := mat1.m (6);
      res.m (9) := mat1.m (9);
      return res;
   end Transpose;
   function Trace (mat1 : Matrix3) return Float is
      res : Float;
   begin
      res := mat1.m (1) + mat1.m (5) + mat1.m (9);
      return res;
   end Trace;
   procedure SetAt (mat : out Matrix3; row, col : Natural; value : Float) is
   begin
      mat.m ((row - 1) * 3 + col) := value;
   end SetAt;
   procedure Identity (mat : out Matrix3) is

   begin
      mat.m (1) := 1.0;
      mat.m (2) := 0.0;
      mat.m (3) := 0.0;
      mat.m (4) := 0.0;
      mat.m (5) := 1.0;
      mat.m (6) := 0.0;
      mat.m (7) := 0.0;
      mat.m (8) := 0.0;
      mat.m (9) := 1.0;
   end Identity;

end Matrix3;