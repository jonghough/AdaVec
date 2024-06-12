
package body Matrix4 is
   function GetAt (mat : Matrix4; row, col : Natural) return Float is

   begin
      return mat.m ((row - 1) * 4 + col);
   end GetAt;
   function "+" (mat1, mat2 : Matrix4) return Matrix4 is
      res : Matrix4;
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
      res.m (10) := mat1.m (10) + mat2.m (10);
      res.m (11) := mat1.m (11) + mat2.m (11);
      res.m (12) := mat1.m (12) + mat2.m (12);
      res.m (13) := mat1.m (13) + mat2.m (13);
      res.m (14) := mat1.m (14) + mat2.m (14);
      res.m (15) := mat1.m (15) + mat2.m (15);
      res.m (16) := mat1.m (16) + mat2.m (16);
      return res;
   end "+";
   function "-" (mat1, mat2 : Matrix4) return Matrix4 is
      res : Matrix4;
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
      res.m (10) := mat1.m (10) - mat2.m (10);
      res.m (11) := mat1.m (11) - mat2.m (11);
      res.m (12) := mat1.m (12) - mat2.m (12);
      res.m (13) := mat1.m (13) - mat2.m (13);
      res.m (14) := mat1.m (14) - mat2.m (14);
      res.m (15) := mat1.m (15) - mat2.m (15);
      res.m (16) := mat1.m (16) - mat2.m (16);
      return res;
   end "-";
   function "*" (mat1 : Matrix4; vec1 : Vector4.Vector4)
      return Vector4.Vector4 is
      res : Vector4.Vector4;
   begin
      res.x := mat1.m (1) * vec1.x + mat1.m (2) * vec1.y
      + mat1.m (3) * vec1.z + mat1.m (4) * vec1.t;
      res.y := mat1.m (5) * vec1.x + mat1.m (6) * vec1.y
      + mat1.m (7) * vec1.z + mat1.m (8) * vec1.t;
      res.z := mat1.m (9) * vec1.x + mat1.m (10) * vec1.y
      + mat1.m (11) * vec1.z + mat1.m (12) * vec1.t;
      res.t := mat1.m (13) * vec1.x + mat1.m (14) * vec1.y
      + mat1.m (15) * vec1.z + mat1.m (16) * vec1.t;
      return res;
   end "*";
   function "*" (mat1 :  Matrix4; fl1 : Float) return Matrix4 is
      res : Matrix4;
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
      res.m (10) := mat1.m (10) * fl1;
      res.m (11) := mat1.m (11) * fl1;
      res.m (12) := mat1.m (12) * fl1;
      res.m (13) := mat1.m (13) * fl1;
      res.m (14) := mat1.m (14) * fl1;
      res.m (15) := mat1.m (15) * fl1;
      res.m (16) := mat1.m (16) * fl1;
      return res;
   end "*";
   function "*" (mat1, mat2 : Matrix4) return Matrix4 is
      res : Matrix4;
   begin
      res.m (1) := mat1.m (1) * mat2.m (1) + mat1.m (2) * mat2.m (5)
      + mat1.m (3) * mat2.m (9) + mat1.m (4) * mat2.m (13);
      res.m (2) := mat1.m (1) * mat2.m (2) + mat1.m (2) * mat2.m (6)
      + mat1.m (3) * mat2.m (10) + mat1.m (4) * mat2.m (14);
      res.m (3) := mat1.m (1) * mat2.m (3) + mat1.m (2) * mat2.m (7)
      + mat1.m (3) * mat2.m (11) + mat1.m (4) * mat2.m (15);
      res.m (4) := mat1.m (1) * mat2.m (4) + mat1.m (2) * mat2.m (8)
      + mat1.m (3) * mat2.m (12) + mat1.m (4) * mat2.m (16);

      res.m (5) := mat1.m (5) * mat2.m (1) + mat1.m (6) * mat2.m (5)
      + mat1.m (7) * mat2.m (9) + mat1.m (8) * mat2.m (13);
      res.m (6) := mat1.m (5) * mat2.m (2) + mat1.m (6) * mat2.m (6)
      + mat1.m (7) * mat2.m (10) + mat1.m (8) * mat2.m (14);
      res.m (7) := mat1.m (5) * mat2.m (3) + mat1.m (6) * mat2.m (7)
      + mat1.m (7) * mat2.m (11) + mat1.m (8) * mat2.m (15);
      res.m (8) := mat1.m (5) * mat2.m (4) + mat1.m (6) * mat2.m (8)
      + mat1.m (7) * mat2.m (12) + mat1.m (8) * mat2.m (16);

      res.m (9) := mat1.m (9) * mat2.m (1) + mat1.m (10) * mat2.m (5)
      + mat1.m (11) * mat2.m (9) + mat1.m (12) * mat2.m (13);
      res.m (10) := mat1.m (9) * mat2.m (2) + mat1.m (10) * mat2.m (6)
      + mat1.m (11) * mat2.m (10) + mat1.m (12) * mat2.m (14);
      res.m (11) := mat1.m (9) * mat2.m (3) + mat1.m (10) * mat2.m (7)
      + mat1.m (11) * mat2.m (11) + mat1.m (12) * mat2.m (15);
      res.m (12) := mat1.m (9) * mat2.m (4) + mat1.m (10) * mat2.m (8)
      + mat1.m (11) * mat2.m (12) + mat1.m (12) * mat2.m (16);

      res.m (13) := mat1.m (13) * mat2.m (1) + mat1.m (14) * mat2.m (5)
      + mat1.m (15) * mat2.m (9) + mat1.m (16) * mat2.m (13);
      res.m (14) := mat1.m (13) * mat2.m (2) + mat1.m (14) * mat2.m (6)
      + mat1.m (15) * mat2.m (10) + mat1.m (16) * mat2.m (14);
      res.m (15) := mat1.m (13) * mat2.m (3) + mat1.m (14) * mat2.m (7)
      + mat1.m (15) * mat2.m (11) + mat1.m (16) * mat2.m (15);
      res.m (16) := mat1.m (13) * mat2.m (4) + mat1.m (14) * mat2.m (8)
      + mat1.m (15) * mat2.m (12) + mat1.m (16) * mat2.m (16);
      return res;
   end "*";
   function Inverse (mat1 : Matrix4) return Matrix4 is
      res : Matrix4;
      tr : Matrix4;
      minor : Matrix3.Matrix3;
      determinant : Float;
      minorDet, mult : Float;
      ctr : Natural;
   begin
      mult := -1.0;
      ctr := 1;
      determinant := Det (mat1);
      tr := Transpose (mat1);
      for x in 1 .. 4 loop
         mult := mult * (-1.0);
         for y in 1 .. 4 loop
            minor := MinorMatrix (tr, x, y);
            minorDet := Matrix3.Det (minor);
            res.m (ctr) := minorDet * mult / determinant;
            ctr := ctr + 1;
            mult :=  -1.0 * mult;
         end loop;
      end loop;

      return res;
   end Inverse;

   function Det (mat1 : Matrix4) return Float is
      res : Float;
   begin
      res :=  mat1.m (1) * mat1.MinorMatrix (1, 1).Det
      - mat1.m (2) * mat1.MinorMatrix (1, 2).Det
      + mat1.m (3) * mat1.MinorMatrix (1, 3).Det
      - mat1.m (4) * mat1.MinorMatrix (1, 4).Det;
      return res;
   end Det;

   function MinorMatrix (mat1 : Matrix4; row, col : Natural)
   return Matrix3.Matrix3 is
      res : Matrix3.Matrix3;
      ctr : Natural := 1;
   begin
      for x in 1 .. 4 loop
         for y in 1 .. 4 loop
            if x /= row and y /= col then
               res.m (ctr) := mat1.GetAt (x, y);
               ctr := ctr + 1;
            end if;
         end loop;
      end loop;
      return res;
   end MinorMatrix;
   function Transpose (mat1 : Matrix4) return Matrix4 is
      res : Matrix4;
   begin
      res.m (1) := mat1.m (1);
      res.m (2) := mat1.m (5);
      res.m (3) := mat1.m (9);
      res.m (4) := mat1.m (13);
      res.m (5) := mat1.m (2);
      res.m (6) := mat1.m (6);
      res.m (7) := mat1.m (10);
      res.m (8) := mat1.m (14);
      res.m (9) := mat1.m (3);
      res.m (10) := mat1.m (7);
      res.m (11) := mat1.m (11);
      res.m (12) := mat1.m (15);
      res.m (13) := mat1.m (4);
      res.m (14) := mat1.m (8);
      res.m (15) := mat1.m (12);
      res.m (16) := mat1.m (16);
      return res;
   end Transpose;
   function Trace (mat1 : Matrix4) return Float is
      res : Float;
   begin
      res := mat1.m (1) + mat1.m (6) + mat1.m (11) * mat1.m (16);
      return res;
   end Trace;
   procedure SetAt (mat : out Matrix4; row, col : Natural; value : Float) is
   begin
      mat.m ((row - 1) * 4 + col) := value;
   end SetAt;
   procedure Identity (mat : out Matrix4) is

   begin
      mat.m (1) := 1.0;
      mat.m (2) := 0.0;
      mat.m (3) := 0.0;
      mat.m (4) := 0.0;
      mat.m (5) := 0.0;
      mat.m (6) := 1.0;
      mat.m (7) := 0.0;
      mat.m (8) := 0.0;
      mat.m (9) := 0.0;
      mat.m (10) := 0.0;
      mat.m (11) := 1.0;
      mat.m (12) := 0.0;
      mat.m (13) := 0.0;
      mat.m (14) := 0.0;
      mat.m (15) := 0.0;
      mat.m (16) := 1.0;
   end Identity;

end Matrix4;