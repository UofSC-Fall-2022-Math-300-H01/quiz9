import Quiz9
import Sets.Basic
import Lean.Elab.Print
import Lean.Elab.Command

open Set 

variable {α : Type}
variable (X Y : Set α)

theorem desiredType1 : X ∩ Xᶜ = ∅ := sorry 

theorem desiredType2 : X ∪ Xᶜ = Univ := sorry 

theorem desiredType3 : Xᶜ ∪ X = Univ := sorry 

open Lean
open Lean.Meta
open Lean.Elab.Command

def n : String := "3"

def problem : String := "problem"++n

def desired : String := "desiredType"++n

def collectAxiomsOf (constName : Name) : MetaM (List String) := do
  let env ← getEnv
  let (_, s) := ((CollectAxioms.collect constName).run env).run {}
  let a := s.axioms.toList.map toString
  return a

#eval isDefEq (Expr.const desired []) (Expr.const problem [])
#eval collectAxiomsOf problem
