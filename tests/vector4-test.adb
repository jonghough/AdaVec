with AUnit.Assertions; use AUnit.Assertions;
with Vector4; use Vector4;

package body Vector4.Test is


   procedure Test_Addition (T : in out Test) is
      pragma Unreferenced (T);
      V : Vector4;
      U : Vector4;
      R : Vector4;
   begin
      U.x := 10.0;
      U.y := 20.0;
      U.z := -1.0;
      U.t := 7.0;
      V.x := 5.0;
      V.y := -5.0;
      V.z := 1.0;
      V.t := -8.0;
      R := U + V;
      Assert (R.x = 15.0, "addition of x components wrong!");
      Assert (R.y = 15.0, "addition of y components wrong!");
      Assert (R.z = 0.0, "addition of z components wrong!");
      Assert (R.t = -1.0, "addition of t components wrong!");
   end Test_Addition;


   procedure Test_Subtraction (T : in out Test) is
      pragma Unreferenced (T);
      V : Vector4;
      U : Vector4;
      R : Vector4;
   begin
      U.x := 10.0;
      U.y := 20.0;
      U.z := 50.0;
      U.t := 5.5;
      V.x := 5.0;
      V.y := -5.0;
      V.z := 10.0;
      V.t := -5.4;
      R := U - V;
      Assert (R.x = 5.0, "subtraction of x components wrong!");
      Assert (R.y = 25.0, "subtraction of y components wrong!");
      Assert (R.z = 40.0, "subtraction of z components wrong!");
      Assert (R.t = 10.9, "subtraction of z components wrong!");
   end Test_Subtraction;

   procedure Test_DotProduct (T : in out Test) is
      pragma Unreferenced (T);
      V : Vector4;
      U : Vector4;
      R : Float;
   begin
      U.x := 10.0;
      U.y := 20.0;
      U.z := 30.0;
      U.t := 12.0;
      V.x := 5.0;
      V.y := -5.0;
      V.z := 10.0;
      V.t := 3.0;
      R := U * V;
      Assert (R = 286.0, "dot product of Vector4s is wrong!");
   end Test_DotProduct;

   procedure Test_FloatMultiplication (T : in out Test) is
      pragma Unreferenced (T);
      F : Float;
      U : Vector4;
      R : Vector4;
   begin
      U.x := 10.0;
      U.y := 20.0;
      U.z := -5.0;
      U.t := 2.0;
      F := 0.5;
      R := U * F;
      Assert (R.x = 5.0, "Float multiplication x component wrong!");
      Assert (R.y = 10.0, "Float multiplication y component wrong!");
      Assert (R.z = 2.5, "Float multiplication z component wrong!");
      Assert (R.t = 1.0, "Float multiplication t component wrong!");
   end Test_FloatMultiplication;

end Vector4.Test;

