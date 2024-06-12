with AUnit.Test_Caller;
with Matrix2.Test; use Matrix2.Test;

package body Matrix2.Test.Suite is

   package Caller is new AUnit.Test_Caller (Test);

   function Suite return Access_Test_Suite is
      Ret : constant Access_Test_Suite := new Test_Suite;
   begin
      Ret.Add_Test
        (Caller.Create ("Test Matrix2 Addition", Test_Addition'Access));
      Ret.Add_Test
        (Caller.Create ("Test Matrix2 Subtraction", Test_Subtraction'Access));
      Ret.Add_Test
        (Caller.Create ("Test Matrix2 Multiplication",
            Test_MatrixMultiplication'Access));
      Ret.Add_Test
        (Caller.Create ("Test Matrix2 Determinant 1",
            Test_MatrixDeterminant1'Access));
      Ret.Add_Test
        (Caller.Create ("Test Matrix2 Determinant 2",
            Test_MatrixDeterminant2'Access));
      Ret.Add_Test
        (Caller.Create ("Test Matrix2 Inverse 1",
            Test_MatrixInverse1'Access));
      Ret.Add_Test
        (Caller.Create ("Test Matrix2 Inverse 2",
            Test_MatrixInverse2'Access));
      Ret.Add_Test
        (Caller.Create ("Test Matrix2 Inverse 3",
            Test_MatrixInverse3'Access));
      return Ret;
   end Suite;

end Matrix2.Test.Suite;
