with AUnit.Test_Caller;
with Matrix3.Test; use Matrix3.Test;

package body Matrix3.Test.Suite is

   package Caller is new AUnit.Test_Caller (Test);

   function Suite return Access_Test_Suite is
      Ret : constant Access_Test_Suite := new Test_Suite;
   begin
      Ret.Add_Test
        (Caller.Create ("Test Matrix3 Addition", Test_Addition'Access));
      Ret.Add_Test
        (Caller.Create ("Test Matrix3 Subtraction", Test_Subtraction'Access));
      Ret.Add_Test
        (Caller.Create ("Test Matrix3 Multiplication",
            Test_MatrixMultiplication'Access));
      Ret.Add_Test
        (Caller.Create ("Test Matrix3 Determinant 1",
            Test_MatrixDeterminant1'Access));
      Ret.Add_Test
        (Caller.Create ("Test Matrix3 Determinant 2",
            Test_MatrixDeterminant2'Access));
      Ret.Add_Test
        (Caller.Create ("Test Matrix3 Inverse 1",
            Test_MatrixInverse1'Access));
      Ret.Add_Test
        (Caller.Create ("Test Matrix3 Inverse 2",
            Test_MatrixInverse2'Access));
      Ret.Add_Test
        (Caller.Create ("Test Matrix3 Inverse 3",
            Test_MatrixInverse3'Access));
      Ret.Add_Test
        (Caller.Create ("Test Matrix3 Minor 1",
            Test_MatrixMinorMat1'Access));
      return Ret;
   end Suite;

end Matrix3.Test.Suite;
