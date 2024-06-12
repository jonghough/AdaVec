with Vector2.Test.Suite;
with Vector3.Test.Suite;
with Vector4.Test.Suite;
with Matrix2.Test.Suite;
with Matrix3.Test.Suite;
with Matrix4.Test.Suite;

package body Main_Suite is

   function Suite return Access_Test_Suite is
      Ret : constant Access_Test_Suite := new Test_Suite;
   begin
      Ret.Add_Test (Vector2.Test.Suite.Suite);
      Ret.Add_Test (Vector3.Test.Suite.Suite);
      Ret.Add_Test (Vector4.Test.Suite.Suite);
      Ret.Add_Test (Matrix2.Test.Suite.Suite);
      Ret.Add_Test (Matrix3.Test.Suite.Suite);
      Ret.Add_Test (Matrix4.Test.Suite.Suite);
      return Ret;
   end Suite;

end Main_Suite;
