with AUnit.Test_Caller;
with Vector2.Test; use Vector2.Test;

package body Vector2.Test.Suite is

   package Caller is new AUnit.Test_Caller (Test);

   function Suite return Access_Test_Suite is
      Ret : constant Access_Test_Suite := new Test_Suite;
   begin
      Ret.Add_Test
        (Caller.Create ("Test Vector2 Addition", Test_Addition'Access));
      Ret.Add_Test
        (Caller.Create ("Test Vector2 Subtraction", Test_Subtraction'Access));
      Ret.Add_Test
        (Caller.Create ("Test Vector2 Dot Product", Test_DotProduct'Access));
      Ret.Add_Test
        (Caller.Create ("Test Vector2 Magnitude", Test_DotProduct'Access));
      Ret.Add_Test
        (Caller.Create ("Test Vector2 Mag Sqrd", Test_DotProduct'Access));
      return Ret;
   end Suite;

end Vector2.Test.Suite;
