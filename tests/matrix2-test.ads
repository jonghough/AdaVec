with AUnit.Test_Fixtures;

package Matrix2.Test is

   type Test is new AUnit.Test_Fixtures.Test_Fixture with null record;

   procedure Test_Addition (T : in out Test);
   procedure Test_Subtraction (T : in out Test);
   procedure Test_MatrixMultiplication (T : in out Test);
   procedure Test_MatrixDeterminant1 (T : in out Test);
   procedure Test_MatrixDeterminant2 (T : in out Test);
   procedure Test_MatrixInverse1 (T : in out Test);
   procedure Test_MatrixInverse2 (T : in out Test);
   procedure Test_MatrixInverse3 (T : in out Test);

end Matrix2.Test;

