-----------------------------------------------------------------
--                                                             --
-- PRIMATIVES                                                  --
--                                                             --
-- Copyright (c) 2016, John Leimon                             --
--                                                             --
-- Permission to use, copy, modify, and/or distribute          --
-- this software for any purpose with or without fee           --
-- is hereby granted, provided that the above copyright        --
-- notice and this permission notice appear in all copies.     --
--                                                             --
-- THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR             --
-- DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE       --
-- INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY         --
-- AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE         --
-- FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL         --
-- DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS       --
-- OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF            --
-- CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING      --
-- OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF      --
-- THIS SOFTWARE.                                              --
-----------------------------------------------------------------
package body Primatives is

   -------------------
   -- VALUES_BUFFER --
   -------------------

   protected body Values_Buffer is

      -----------------------
      -- VALUES_BUFFER.ADD --
      -----------------------

      procedure Add(Value : in Name_Value_Pair) is
      begin
         Elements.Append(Value);
      end Add;

      -----------------------
      -- VALUES_BUFFER.SET --
      -----------------------

      procedure Set (Values : in Name_Value_Pair_Vectors.Vector) is
      begin
         Elements := Values;
      end Set;

      -------------------------
      -- VALUES_BUFFER.CLEAR --
      -------------------------

      procedure Clear is
      begin
         Elements.Clear;
      end Clear;

      ------------------------------
      -- VALUES_BUFFER.GET_VALUES --
      ------------------------------

      function Get_Values return Name_Value_Pair_Vectors.Vector is
      begin
         return Elements;
      end Get_Values;

   end Values_Buffer;

   ---------------------
   -- REQUESTS_BUFFER --
   ---------------------

   protected body Requests_Buffer is

      -------------------------
      -- REQUESTS_BUFFER.ADD --
      -------------------------

      procedure Add(Request : in Unsigned_16) is
      begin
         Elements.Append(Request);
      end Add;

      -------------------------
      -- REQUESTS_BUFFER.SET --
      -------------------------

      procedure Set (Requests : in Unsigned_16_Vectors.Vector) is
      begin
         Elements := Requests;
      end Set;

      ----------------------------
      -- REQUESTs_BUFFER.REMOVE --
      ----------------------------

      procedure Clear is
      begin
         Elements.Clear;
      end Clear;

      ----------------------------------
      -- REQUESTS_BUFFER.GET_REQUESTS --
      ----------------------------------

      function Get_Requests return Unsigned_16_Vectors.Vector is
      begin
         return Elements;
      end Get_Requests;

   end Requests_Buffer;

end Primatives;