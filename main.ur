(* values: *)
val a = 7
val s = "oth"
val c = #"o"


(*  KIND 1: Type *)
(*   basic types: *)
type type_int = int
type type_float = float
type type_string = string
type type_char = char
type type_void = unit
type type_time = time
type type_blob = blob
type type_unit = unit # ?

# type unit = {}

con con_type_int :: Type = int

# A signature item or declaration type x or type x = τ is elaborated into con x :: Type or con x :: Type = τ, respectively.

val my_rec : $[A=int] = { A = 1 }
val my_rec : {A:int} = { A = 1 }

(* KIND 2: Unit *)
con type_level_unit :: Unit = ()
(* KIND 3: Name *)

con abc :: Name = #Abc
val my_rec_abc : $[abc=int] = { Abc = 1 }

(* KIND 4: kappa -> kappa : type-level functions *)
(*  sample1: change name *)
con change_name :: Name -> Name = fn _ => #Boo
con n2 :: Name = change_name #Arbitrary
val my_rec_abc : $[n2=int] = ({ Boo = 1 } : {Boo : int})
  # there is not much more you can do with names..

# val mapX : {A = int, B= int}

# con change_name_toggle :: Name -> Name = fn name =>
# if name = #Boo then #Bar else #Boo

(* KIND 5: {K}            :type-level records *)
# type level records having Types, Names as values:

con tr_types :: {Type} = [A = int, B = string]
val x : tr_types.A = 7
con tr_names :: {Name} = [A = #A]
con tr_units :: {Unit} = [A = ()]

  # TODO how to use those values ?
  # val my_int : tr_types.A = 7

(* KIND 6: (Kx+)          :type-level tuples *)
con tt_type_name = (int, #A)

(* KIND 7: X variable *)
# TODO
(* KIND 8: X --> k : kind polymorphic type-level-function *)
# TODO
(* KIND 9: _ : wildcard  *)
# TODO
(* explicit precedence (kappa) *)
# TODO

(* various TODO *)




fun main () =
  let
    val b:int = 7
  in
    return <xml>
      <head> <title>Hello world!!</title> </head>
      <body>
        <h1>My tests</h1>
        {[a]}
      </body>
    </xml>
  end
