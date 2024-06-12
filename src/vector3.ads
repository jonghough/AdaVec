--  vector3

package Vector3 is

   type Vector3 is tagged record

      x : Float;
      y : Float;
      z : Float;
   end record;
   function "+" (vec1, vec2 : Vector3) return Vector3;
   function "-" (vec1, vec2 : Vector3) return Vector3;
   function "*" (vec1, vec2 : Vector3) return Float;
   function "*" (vec1 : Vector3; fl1 : Float) return Vector3;
   function "*" (fl1 : Float; vec1 : Vector3) return Vector3;
   function "/" (vec1 : Vector3; fl1 : Float) return Vector3;
   function Magnitude (vec1 : Vector3) return Float;
   function MagnitudeSquared (vec1 : Vector3) return Float;
   function Cross (vec1 : Vector3; vec2 : Vector3) return Vector3;
   procedure SetX (vec : in out Vector3; vx : Float);
   procedure SetY (vec : in out Vector3; vy : Float);
   procedure SetZ (vec : in out Vector3; vz : Float);
   function Normalize (vec1 : Vector3) return Vector3;
   function ProjectOnto (vec1 : Vector3; vec2 : Vector3) return Vector3;
   function Reflect (vec1 : Vector3; refLine : Vector3) return Vector3;
end Vector3;
