with AUnit.Test_Caller;
with Vector4.Test; use Vector4.Test;

package body Vector4.Test.Suite is

   package Caller is new AUnit.Test_Caller (Test);

   function Suite return Access_Test_Suite is
      Ret : constant Access_Test_Suite := new Test_Suite;
   begin
      Ret.Add_Test
        (Caller.Create ("Test Vector4 Addition", Test_Addition'Access));
      Ret.Add_Test
        (Caller.Create ("Test Vector4 Subtraction", Test_Subtraction'Access));
      Ret.Add_Test
        (Caller.Create ("Test Vector4 Dot Product", Test_DotProduct'Access));
      return Ret;
   end Suite;

end Vector4.Test.Suite;
