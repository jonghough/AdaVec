package body Vector2 is

   procedure SetX (vec : in out Vector2; vx : in Float) is

   begin
      vec.x := vx;
   end SetX;

   procedure SetY (vec : in out Vector2; vy : in Float) is

   begin
      vec.y := vy;
   end SetY;

   function "+" (vec1, vec2 : in Vector2) return Vector2 is
      res : Vector2;
   begin
      res.SetX (vec1.x + vec2.x);
      res.SetY (vec1.y + vec2.y);
      return res;
   end "+";

   function "-" (vec1, vec2 : Vector2) return Vector2 is
      res : Vector2;
   begin
      res.SetX (vec1.x - vec2.x);
      res.SetY (vec1.y - vec2.y);
      return res;
   end "-";

   function "*" (vec1, vec2 : Vector2) return Float is
      res : Float;
   begin
      res := vec1.x * vec2.x + vec1.y * vec2.y;
      return res;
   end "*";

   function "*" (vec1 : Vector2; fl1 : in Float) return Vector2 is
      res : Vector2;
   begin
      res.SetX (vec1.x * fl1);
      res.SetY (vec1.y * fl1);
      return res;
   end "*";

   function "*" (fl1 : in Float; vec1 : Vector2) return Vector2 is
      res : Vector2;
   begin
      res.SetX (vec1.x * fl1);
      res.SetY (vec1.y * fl1);
      return res;
   end "*";

   function "/" (vec1 : Vector2; fl1 : in Float) return Vector2 is
      res : Vector2;
   begin
      res.SetX (vec1.x / fl1);
      res.SetY (vec1.y / fl1);
      return res;
   end "/";

end Vector2;
