with AUnit.Assertions; use AUnit.Assertions;
with Matrix4;          use Matrix4;

--  with Matrix3;          use Matrix3;

package body Matrix4.Test is

   procedure Test_Addition (T : in out Test) is
      pragma Unreferenced (T);
      V : Matrix4;
      U : Matrix4;
      R : Matrix4;
   begin
      U.m := (10.0, 20.0, 5.0, 20.0, 5.0, 11.0, 6.0, 2.0,
      -4.0, 3.0, 2.0, 12.0, 33.0, 5.0, 1.0, 0.0);
      V.m := (-5.0, -20.0, -5.0, -20.0, 5.0, 11.0, 6.0, 2.0,
      -4.0, 3.0, 2.0, 12.0, 33.0, 5.0, 1.0, 0.0);

      R       := U + V;
      Assert (R.m (1) = 5.0, "Matrix4 addition failed at component 1.");
      Assert (R.m (2) = 0.0, "Matrix4 addition failed at component 2.");
      Assert (R.m (3) = 0.0, "Matrix4 addition failed at component 3.");
      Assert (R.m (4) = 0.0, "Matrix4 addition failed at component 4.");
   end Test_Addition;

   procedure Test_Subtraction (T : in out Test) is
      pragma Unreferenced (T);
      V : Matrix4;
      U : Matrix4;
      R : Matrix4;
   begin
      U.m := (10.0, 20.0, 5.0, 20.0, 5.0, 11.0, 6.0, 2.0,
      -4.0, 3.0, 2.0, 12.0, 33.0, 5.0, 1.0, 0.0);
      V.m := (25.0, 2.0, -4.0, 21.0, 5.0, 11.0, 6.0, 2.0,
      -4.0, 3.0, 2.0, 12.0, 33.0, 5.0, 1.0, 0.0);

      R       := U - V;
      Assert (R.m (1) = -15.0, "Matrix4 subtraction failed at component 1.");
      Assert (R.m (2) = 18.0, "Matrix4 subtraction failed at component 2.");
      Assert (R.m (3) = 9.0, "Matrix4 subtraction failed at component 3.");
      Assert (R.m (4) = -1.0, "Matrix4 subtraction failed at component 4.");

   end Test_Subtraction;

   procedure Test_MatrixMultiplication (T : in out Test) is
      pragma Unreferenced (T);
      V : Matrix4;
      U : Matrix4;
      R : Matrix4;
   begin
      U.m := (10.0, 20.0, 5.0, 20.0, 5.0, 11.0, 6.0, 2.0,
      -4.0, 3.0, 2.0, 12.0, 33.0, 5.0, 1.0, 0.0);
      V.m := (25.0, 2.0, -4.0, 21.0, 5.0, 11.0, 6.0, 2.0,
      -4.0, 3.0, 2.0, 12.0, 33.0, 5.0, 1.0, 0.0);
      R       := U * V;
      Assert (R.m (1) = 990.0,
      "Matrix4 multiplication failed at component 1.");
      Assert (R.m (2) = 355.0,
      "Matrix4 multiplication failed at component 2.");
      Assert (R.m (3) = 110.0,
      "Matrix4 multiplication failed at component 3.");
      Assert (R.m (4) = 310.0,
      "Matrix4 multiplication failed at component 4.");
   end Test_MatrixMultiplication;

   procedure Test_MatrixInverse1 (T : in out Test) is
      pragma Unreferenced (T);
      V : Matrix4;
      U : Matrix4;
   begin
      V.m := (1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0,
      0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 1.0);
      U       := Inverse (V);

      Assert
        (U.m (1) = 1.0, "Error calculating Matrix4 inverse, component 1.");
      Assert
        (U.m (2) = 0.0, "Error calculating Matrix4 inverse, component 2.");
      Assert
        (U.m (3) = 0.0, "Error calculating Matrix4 inverse, component 3.");
      Assert
        (U.m (4) = 0.0, "Error calculating Matrix4 inverse, component 4.");
      Assert
        (U.m (6) = 1.0, "Error calculating Matrix4 inverse, component 6.");
      Assert
        (U.m (11) = 1.0, "Error calculating Matrix4 inverse, component 11.");
      Assert
        (U.m (16) = 1.0, "Error calculating Matrix4 inverse, component 16.");
   end Test_MatrixInverse1;

   --    %. X
   --    1 0  0 1
   --    1 1  0 1
   --    1 1 _1 1
   --    0 0  0 1
   --    X
   --    1 0 0 _1
   --    _1 1 0 0
   --    0 1 _1 0
   --    0 0  0 1
   procedure Test_MatrixInverse2 (T : in out Test) is
      pragma Unreferenced (T);
      V : Matrix4;
      U : Matrix4;
   begin
      V.m := (1.0, 0.0, 0.0, -1.0, -1.0, 1.0, 0.0, 0.0,
      0.0, 1.0, -1.0, 0.0, 0.0, 0.0, 0.0, 1.0);
      U       := Inverse (V);

      Assert
        (U.m (1) = 1.0, "Error calculating Matrix4 inverse, component 1.");
      Assert
        (U.m (2) = 0.0, "Error calculating Matrix4 inverse, component 2.");
      Assert
        (U.m (3) = 0.0, "Error calculating Matrix4 inverse, component 3.");
      Assert
        (U.m (4) = 1.0, "Error calculating Matrix4 inverse, component 4.");
      Assert
        (U.m (6) = 1.0, "Error calculating Matrix4 inverse, component 6.");
      Assert
        (U.m (11) = -1.0, "Error calculating Matrix4 inverse, component 11.");
      Assert
        (U.m (16) = 1.0, "Error calculating Matrix4 inverse, component 16.");
   end Test_MatrixInverse2;

   procedure Test_MatrixDeterminant1 (T : in out Test) is
      pragma Unreferenced (T);
      V : Matrix4;
      F : Float;
   begin
      V.m := (1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0,
      0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 1.0);
      F := Det (V);
      Assert
        (F = 1.0, "Error calculating Matrix4 determinant.");
      V.SetAt (1, 1, 5.0);
      F := Det (V);
      Assert
        (F = 5.0, "Error calculating Matrix4 determinant.");

   end Test_MatrixDeterminant1;
   procedure Test_MatrixMinor1 (T : in out Test) is
      pragma Unreferenced (T);
      V : Matrix4;
      U : Matrix3.Matrix3;
   begin
      V.m := (1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0,
      0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 1.0);
      U := MinorMatrix (V, 1, 1);
      Assert
        (U.m (1) = 1.0, "Error calculating Matrix4 minor, component 1.");
      Assert
        (U.m (2) = 0.0, "Error calculating Matrix4 minor, component 2.");
      Assert
        (U.m (3) = 0.0, "Error calculating Matrix4 minor, component 3.");
      Assert
        (U.m (4) = 0.0, "Error calculating Matrix4 minor, component 4.");
      Assert
        (U.m (5) = 1.0, "Error calculating Matrix4 minor, component 5.");
   end Test_MatrixMinor1;
end Matrix4.Test;
