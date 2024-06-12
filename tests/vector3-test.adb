with AUnit.Assertions; use AUnit.Assertions;
with Vector3; use Vector3;

package body Vector3.Test is


   procedure Test_Addition (T : in out Test) is
      pragma Unreferenced (T);
      V : Vector3;
      U : Vector3;
      R : Vector3;
   begin
      U.x := 10.0;
      U.y := 20.0;
      U.z := -1.0;
      V.x := 5.0;
      V.y := -5.0;
      V.z := 1.0;
      R := U + V;
      Assert (R.x = 15.0, "addition of x components wrong!");
      Assert (R.y = 15.0, "addition of y components wrong!");
      Assert (R.z = 0.0, "addition of z components wrong!");
   end Test_Addition;


   procedure Test_Subtraction (T : in out Test) is
      pragma Unreferenced (T);
      V : Vector3;
      U : Vector3;
      R : Vector3;
   begin
      U.x := 10.0;
      U.y := 20.0;
      U.z := 50.0;
      V.x := 5.0;
      V.y := -5.0;
      V.z := 10.0;
      R := U - V;
      Assert (R.x = 5.0, "subtraction of x components wrong!");
      Assert (R.y = 25.0, "subtraction of y components wrong!");
      Assert (R.z = 40.0, "subtraction of z components wrong!");
   end Test_Subtraction;

   procedure Test_DotProduct (T : in out Test) is
      pragma Unreferenced (T);
      V : Vector3;
      U : Vector3;
      R : Float;
   begin
      U.x := 10.0;
      U.y := 20.0;
      U.z := 30.0;
      V.x := 5.0;
      V.y := -5.0;
      V.z := 10.0;
      R := U * V;
      Assert (R = 250.0, "dot product wrong!");
   end Test_DotProduct;

   procedure Test_FloatMultiplication (T : in out Test) is
      pragma Unreferenced (T);
      F : Float;
      U : Vector3;
      R : Vector3;
   begin
      U.x := 10.0;
      U.y := 20.0;
      U.z := -5.0;
      F := 0.5;
      R := U * F;
      Assert (R.x = 5.0, "Float multiplication x component wrong!");
      Assert (R.y = 10.0, "Float multiplication y component wrong!");
      Assert (R.z = 2.5, "Float multiplication z component wrong!");
   end Test_FloatMultiplication;

end Vector3.Test;

