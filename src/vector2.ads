--  vector2

package Vector2 is

   type Vector2 is tagged record

      x : Float;
      y : Float;
   end record;
   function "+" (vec1, vec2 : Vector2) return Vector2;
   function "-" (vec1, vec2 : Vector2) return Vector2;
   function "*" (vec1, vec2 : Vector2) return Float;
   function "*" (vec1 : Vector2; fl1 : Float) return Vector2;
   function "*" (fl1 : Float; vec1 : Vector2) return Vector2;
   function "/" (vec1 : Vector2; fl1 : Float) return Vector2;
   function Magnitude (vec1 : Vector2) return Float;
   function MagnitudeSquared (vec1 : Vector2) return Float;
   procedure SetX (vec : out Vector2; vx : Float);
   procedure SetY (vec : out Vector2; vy : Float);
   function Normalize (vec1 : Vector2) return Vector2;
   function ProjectOnto (vec1 : Vector2; vec2 : Vector2) return Vector2;
   function Reflect (vec1 : Vector2; refLine : Vector2) return Vector2;
end Vector2;
