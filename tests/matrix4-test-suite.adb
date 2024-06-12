with AUnit.Test_Caller;
with Matrix4.Test; use Matrix4.Test;

package body Matrix4.Test.Suite is

   package Caller is new AUnit.Test_Caller (Test);

   function Suite return Access_Test_Suite is
      Ret : constant Access_Test_Suite := new Test_Suite;
   begin
      Ret.Add_Test
        (Caller.Create ("Test Matrix4 Addition", Test_Addition'Access));
      Ret.Add_Test
        (Caller.Create ("Test Matrix4 Subtraction", Test_Subtraction'Access));
      Ret.Add_Test
        (Caller.Create ("Test Matrix4 Multiplication",
            Test_MatrixMultiplication'Access));
      Ret.Add_Test
        (Caller.Create ("Test Matrix4 Inverse 1",
            Test_MatrixInverse1'Access));
      Ret.Add_Test
        (Caller.Create ("Test Matrix4 Inverse 2",
            Test_MatrixInverse2'Access));
      Ret.Add_Test
        (Caller.Create ("Test Matrix4 Determinant 1",
            Test_MatrixDeterminant1'Access));
      Ret.Add_Test
        (Caller.Create ("Test Matrix4 Minor 1",
            Test_MatrixMinor1'Access));
      return Ret;
   end Suite;

end Matrix4.Test.Suite;
