import Sets.Basic

open Set

variable {α : Type}
variable (X Y : Set α)

-- Fill in the three sorries

theorem problem1 : X ∩ Xᶜ = ∅ := by 
  set_extensionality a 
  · intro ⟨g₁,g₂⟩
    exact sorry   
  · intro h 
    exact False.elim h  

theorem problem2 : X ∪ Xᶜ = Univ := by 
  set_extensionality a 
  · intro h 
    exact sorry 
  · exact fun _ => Classical.em (a ∈ X) 

theorem problem3 : Xᶜ ∪ X = Univ := by 
  rw [comm_union]
  exact sorry 

