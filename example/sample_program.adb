with Vector2; use Vector2;
with Ada.Text_IO;

procedure sample_program is
    V : Vector2.Vector2;
    U : Vector2.Vector2;
    R : Vector2.Vector2;
begin
    U.x := 10.0;
    U.y := 20.0;
    V.x := 5.0;
    V.y := -5.0;
    R := U + V;
    Ada.Text_IO.Put_Line (Float'Image (R.x));   
    Ada.Text_IO.New_Line;  
    Ada.Text_IO.Put_Line (Float'Image (R.y));    
    Ada.Text_IO.New_Line;  
end sample_program;