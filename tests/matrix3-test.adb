with AUnit.Assertions; use AUnit.Assertions;
with Matrix3;          use Matrix3;
with Matrix2;          use Matrix2;
package body Matrix3.Test is

   procedure Test_Addition (T : in out Test) is
      pragma Unreferenced (T);
      V : Matrix3;
      U : Matrix3;
      R : Matrix3;
   begin
      U.m := (10.0, 20.0, 5.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
      V.m := (-5.0, -20.0, -5.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
      R       := U + V;
      Assert (R.m (1) = 5.0, "Matrix3 addition failed at component 1.");
      Assert (R.m (2) = 0.0, "Matrix3 addition failed at component 2.");
      Assert (R.m (3) = 0.0, "Matrix3 addition failed at component 3.");
      Assert (R.m (4) = 0.0, "Matrix3 addition failed at component 4.");
   end Test_Addition;

   procedure Test_Subtraction (T : in out Test) is
      pragma Unreferenced (T);
      V : Matrix3;
      U : Matrix3;
      R : Matrix3;
   begin
      U.m := (10.0, 20.0, 5.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
      V.m := (25.0, 2.0, -4.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0);
      R       := U - V;
      Assert (R.m (1) = -15.0, "Matrix3 subtraction failed at component 1.");
      Assert (R.m (2) = 18.0, "Matrix3 subtraction failed at component 2.");
      Assert (R.m (3) = 9.0, "Matrix3 subtraction failed at component 3.");
      Assert (R.m (4) = -1.0, "Matrix3 subtraction failed at component 4.");

   end Test_Subtraction;

   procedure Test_MatrixMultiplication (T : in out Test) is
      pragma Unreferenced (T);
      V : Matrix3;
      U : Matrix3;
      R : Matrix3;
   begin
      U.m := (1.0, 2.0, 3.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
      V.m := (5.0, -2.0, -4.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0);
      R       := U * V;
      Assert (R.m (1) = 7.0, "Matrix3 multiplication failed at component 1.");
      Assert (R.m (2) = -2.0, "Matrix3 multiplication failed at component 2.");
      Assert (R.m (3) = -4.0, "Matrix3 multiplication failed at component 3.");
      Assert (R.m (4) = 0.0, "Matrix3 multiplication failed at component 4.");
   end Test_MatrixMultiplication;

   procedure Test_MatrixInverse1 (T : in out Test) is
      pragma Unreferenced (T);
      V : Matrix3;
      U : Matrix3;
   begin
      V.m := (1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0);
      U       := Inverse (V);

      Assert
        (U.m (1) = 1.0, "Error calculating Matrix3 inverse, component 1.");
      Assert
        (U.m (2) = 0.0, "Error calculating Matrix3 inverse, component 2.");
      Assert
        (U.m (3) = 0.0, "Error calculating Matrix3 inverse, component 3.");
      Assert
        (U.m (5) = 1.0, "Error calculating Matrix3 inverse, component 4.");
   end Test_MatrixInverse1;
   procedure Test_MatrixInverse2 (T : in out Test) is
      pragma Unreferenced (T);
      V : Matrix3;
      U : Matrix3;
   begin
      V.m := (1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0);
      U       := Inverse (V);

      Assert
        (U.m (1) = 1.0, "Error calculating Matrix3 inverse, component 1.");
      Assert
        (U.m (2) = 0.0, "Error calculating Matrix3 inverse, component 2.");
      Assert
        (U.m (3) = 0.0, "Error calculating Matrix3 inverse, component 3.");
      Assert
        (U.m (4) = 0.0, "Error calculating Matrix3 inverse, component 4.");
   end Test_MatrixInverse2;
   procedure Test_MatrixInverse3 (T : in out Test) is
      pragma Unreferenced (T);
      V : Matrix3;
      U : Matrix3;
   begin
      V.m := (2.0, 3.0, 0.0, -1.0, 0.0, 2.0, 0.0, 2.0, 1.0);
      U       := Inverse (V);

      Assert
        (U.m (1) = 0.8, "Error calculating Matrix3 inverse, component 1.");
      Assert
        (U.m (2) = 0.6, "Error calculating Matrix3 inverse, component 2.");
      Assert
        (U.m (3) = -1.2, "Error calculating Matrix3 inverse, component 3.");
      Assert
        (U.m (4) = -0.2, "Error calculating Matrix3 inverse, component 4.");
   end Test_MatrixInverse3;
   procedure Test_MatrixDeterminant1 (T : in out Test) is
      pragma Unreferenced (T);
      V : Matrix3;
      R : Float;
   begin
      V.m := (1.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0);
      R       := Det (V);

      Assert (R = 0.0, "Error calculating the determinant of Matrix3.");
   end Test_MatrixDeterminant1;
   procedure Test_MatrixDeterminant2 (T : in out Test) is
      pragma Unreferenced (T);
      V : Matrix3;
      R : Float;
   begin
      V.m := (0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
      R       := Det (V);

      Assert (R = 0.0, "Error calculating the determinant of Matrix3.");
   end Test_MatrixDeterminant2;
   procedure Test_MatrixMinorMat1 (T : in out Test) is
      pragma Unreferenced (T);
      V : Matrix3;
      U : Matrix2.Matrix2;
   begin
      V.m := (1.0, 0.0, 1.0, 0.0, 11.0, 3.0, 1.0, 0.0, 1.0);
      U       := MinorMatrix (V, 1, 1);
      Assert (U.m (1) = 11.0, "Error calculating Matrix3 Minor component 1!");
      Assert (U.m (2) = 3.0, "Error calculating Matrix3 Minor component 2!");
   end Test_MatrixMinorMat1;
end Matrix3.Test;
