with AUnit.Test_Fixtures;

package Vector3.Test is

   type Test is new AUnit.Test_Fixtures.Test_Fixture with null record;

   procedure Test_Addition (T : in out Test);

   procedure Test_Subtraction (T : in out Test);

   procedure Test_DotProduct (T : in out Test);

   procedure Test_FloatMultiplication (T : in out Test);

end Vector3.Test;

