with AUnit.Test_Fixtures;

package Matrix4.Test is

   type Test is new AUnit.Test_Fixtures.Test_Fixture with null record;

   procedure Test_Addition (T : in out Test);
   procedure Test_Subtraction (T : in out Test);
   procedure Test_MatrixMultiplication (T : in out Test);
   procedure Test_MatrixInverse1 (T : in out Test);
   procedure Test_MatrixInverse2 (T : in out Test);
   procedure Test_MatrixDeterminant1 (T : in out Test);
   procedure Test_MatrixMinor1 (T : in out Test);

end Matrix4.Test;