with AUnit.Assertions; use AUnit.Assertions;
with Matrix2; use Matrix2;

package body Matrix2.Test is

   procedure Test_Addition (T : in out Test) is
      pragma Unreferenced (T);
      V : Matrix2;
      U : Matrix2;
      R : Matrix2;
   begin
      U.m := (10.0, 20.0, 5.0, 0.0);
      V.m := (-5.0, -20.0, -5.0, 0.0);
      R := U + V;
      Assert (R.m (1) = 5.0, "addition of x components wrong!");
      Assert (R.m (2) = 0.0, "addition of y components wrong!");
      Assert (R.m (3) = 0.0, "addition of y components wrong!");
      Assert (R.m (4) = 0.0, "addition of y components wrong!");
   end Test_Addition;


   procedure Test_Subtraction (T : in out Test) is
   pragma Unreferenced (T);
      V : Matrix2;
      U : Matrix2;
      R : Matrix2;
   begin
      U.m := (10.0, 20.0, 5.0, 0.0);
      V.m := (25.0, 2.0, -4.0, 1.0);
      R := U - V;
      Assert (R.m (1) = -15.0, "addition of x components wrong!");
      Assert (R.m (2) = 18.0, "addition of y components wrong!");
      Assert (R.m (3) = 9.0, "addition of y components wrong!");
      Assert (R.m (4) = -1.0, "addition of y components wrong!");

   end Test_Subtraction;

   procedure Test_MatrixMultiplication (T : in out Test) is
   pragma Unreferenced (T);
      V : Matrix2;
      U : Matrix2;
      R : Matrix2;
   begin
      U.m := (1.0, 2.0, 3.0, 0.0);
      V.m := (5.0, -2.0, -4.0, 1.0);
      R := U * V;
      Assert (R.m (1) = -3.0, "addition of x components wrong!");
      Assert (R.m (2) = 0.0, "addition of y components wrong!");
      Assert (R.m (3) = 15.0, "addition of y components wrong!");
      Assert (R.m (4) = -6.0, "addition of y components wrong!");
   end Test_MatrixMultiplication;

   procedure Test_MatrixInverse1 (T : in out Test) is
   pragma Unreferenced (T);
      V : Matrix2;
      U : Matrix2;
   begin
      V.m := (1.0, 0.0, 0.0, 1.0);
      U := Inverse (V);

      Assert (U.m (1) = 1.0, "addition of x components wrong!");
      Assert (U.m (2) = 0.0, "addition of x components wrong!");
      Assert (U.m (3) = 0.0, "addition of x components wrong!");
      Assert (U.m (4) = 1.0, "addition of x components wrong!");
   end Test_MatrixInverse1;
   procedure Test_MatrixInverse2 (T : in out Test) is
   pragma Unreferenced (T);
      V : Matrix2;
      U : Matrix2;
   begin
      V.m := (1.0, 0.0, 0.0, 1.0);
      U := Inverse (V);

      Assert (U.m (1) = 1.0, "addition of x components wrong!");
      Assert (U.m (2) = 0.0, "addition of x components wrong!");
      Assert (U.m (3) = 0.0, "addition of x components wrong!");
      Assert (U.m (4) = 1.0, "addition of x components wrong!");
   end Test_MatrixInverse2;
   procedure Test_MatrixInverse3 (T : in out Test) is
   pragma Unreferenced (T);
      V : Matrix2;
      U : Matrix2;
   begin
      V.m := (2.5, 3.0, 0.5, -1.0);
      V.m (1) := 2.5;
      V.m (2) := 3.0;
      V.m (3) := 0.5;
      V.m (4) := -1.0;
      U := Inverse (V);

      Assert (U.m (1) = 0.25, "addition of x components wrong!");
      Assert (U.m (2) = 0.75, "addition of x components wrong!");
      Assert (U.m (3) = 0.125, "addition of x components wrong!");
      Assert (U.m (4) = -0.625, "addition of x components wrong!");
   end Test_MatrixInverse3;
   procedure Test_MatrixDeterminant1 (T : in out Test) is
   pragma Unreferenced (T);
      V : Matrix2;
      R : Float;
   begin
      V.m := (1.0, 0.0, 0.0, 1.0);
      R := Det (V);

      Assert (R = 1.0, "addition of x components wrong!");
   end Test_MatrixDeterminant1;
   procedure Test_MatrixDeterminant2 (T : in out Test) is
   pragma Unreferenced (T);
      V : Matrix2;
      R : Float;
   begin
      V.m := (0.0, 0.0, 0.0, 0.0);
      R := Det (V);

      Assert (R = 0.0, "addition of x components wrong!");
   end Test_MatrixDeterminant2;
end Matrix2.Test;

