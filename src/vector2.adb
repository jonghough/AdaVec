with Ada.Numerics.Elementary_Functions;

package body Vector2 is

   function Magnitude (vec1 : Vector2) return Float is

   begin
      return Ada.Numerics.Elementary_Functions.Sqrt
      (MagnitudeSquared (vec1));

   end Magnitude;

   function MagnitudeSquared (vec1 : Vector2) return Float is

   begin
      return vec1.x * vec1.x + vec1.y * vec1.y;

   end MagnitudeSquared;

   procedure SetX (vec : out Vector2; vx : Float) is

   begin
      vec.x := vx;
   end SetX;

   procedure SetY (vec : out Vector2; vy : Float) is

   begin
      vec.y := vy;
   end SetY;

   function "+" (vec1, vec2 : Vector2) return Vector2 is
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

   function "*" (vec1 : Vector2; fl1 : Float) return Vector2 is
      res : Vector2;
   begin
      res.SetX (vec1.x * fl1);
      res.SetY (vec1.y * fl1);
      return res;
   end "*";

   function "*" (fl1 : Float; vec1 : Vector2) return Vector2 is
      res : Vector2;
   begin
      res.SetX (vec1.x * fl1);
      res.SetY (vec1.y * fl1);
      return res;
   end "*";

   function "/" (vec1 : Vector2; fl1 : Float) return Vector2 is
      res : Vector2;
   begin
      res.SetX (vec1.x / fl1);
      res.SetY (vec1.y / fl1);
      return res;
   end "/";
   function Normalize (vec1 : Vector2) return Vector2 is
      len : Float;
      res : Vector2;
   begin
      len := Magnitude (vec1);
      if len > 0.00001  then
         res := vec1 / len;
      else
         res.SetX (0.0);
         res.SetY (0.0);
      end if;
      return res;
   end Normalize;
   function ProjectOnto (vec1 : Vector2; vec2 : Vector2) return Vector2 is
      r1, r2 : Float;
      res : Vector2;
   begin
      r1 := vec1 * vec2;
      r2 := vec1 * vec2;
      res := (r1 / r2) * vec2;
      return res;
   end ProjectOnto;
   function Reflect (vec1 : Vector2; refLine : Vector2) return Vector2 is
      norm : Vector2;
      res : Vector2;
   begin
      norm := Normalize (refLine);
      res := vec1 - (vec1 * norm) * 2.0 * norm;
      return res;
   end Reflect;
end Vector2;
