with AUnit.Assertions; use AUnit.Assertions;
with Vector2; use Vector2;

package body Vector2.Test is


   procedure Test_Addition (T : in out Test) is
      pragma Unreferenced (T);
      V : Vector2;
      U : Vector2;
      R : Vector2;
   begin
      U.x := 10.0;
      U.y := 20.0;
      V.x := 5.0;
      V.y := -5.0;
      R := U + V;
      Assert (R.x = 15.0, "addition of x components wrong!");
      Assert (R.y = 15.0, "addition of y components wrong!");
   end Test_Addition;


   procedure Test_Subtraction (T : in out Test) is
      pragma Unreferenced (T);
      V : Vector2;
      U : Vector2;
      R : Vector2;
   begin
      U.x := 10.0;
      U.y := 20.0;
      V.x := 5.0;
      V.y := -5.0;
      R := U - V;
      Assert (R.x = 5.0, "subtraction of x components wrong!");
      Assert (R.y = 25.0, "subtraction of y components wrong!");
   end Test_Subtraction;

   procedure Test_DotProduct (T : in out Test) is
      pragma Unreferenced (T);
      V : Vector2;
      U : Vector2;
      R : Float;
   begin
      U.x := 10.0;
      U.y := 20.0;
      V.x := 5.0;
      V.y := -5.0;
      R := U * V;
      Assert (R = -50.0, "dot product wrong!");
   end Test_DotProduct;

   procedure Test_FloatMultiplication (T : in out Test) is
      pragma Unreferenced (T);
      F : Float;
      U : Vector2;
      R : Vector2;
   begin
      U.x := 10.0;
      U.y := 20.0;
      F := 0.5;
      R := U * F;
      Assert (R.x = 5.0, "Float multiplication x component wrong!");
      Assert (R.y = 10.0, "Float multiplication y component wrong!");
   end Test_FloatMultiplication;

   procedure Test_Magnitude (T : in out Test) is
      pragma Unreferenced (T);
      R : Float;
      U : Vector2;
   begin
      U.x := 3.0;
      U.y := 4.0;
      R := U.Magnitude;
      Assert (R  = 5.0, "Magnitude of Vector 2 is wrong!");
   end Test_Magnitude;

   procedure Test_MagnitudeSquared (T : in out Test) is
      pragma Unreferenced (T);
      R : Float;
      U : Vector2;
   begin
      U.x := 3.0;
      U.y := 4.0;
      R := U.MagnitudeSquared;
      Assert (R  = 25.0, "MagnitudeSquared of Vector 2 is wrong!");
   end Test_MagnitudeSquared;
end Vector2.Test;

