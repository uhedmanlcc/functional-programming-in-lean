def last {α: Type} (xs : List α) : Option α :=
  match xs with
  | [] => none
  | [x] => some x
  | _ :: xs' => last xs'

def List.findFirst? {α : Type} (xs : List α) (predicate : α → Bool) : Option α :=
  match xs with
  | [] => none
  | x :: xs' => if predicate x then some x else List.findFirst? xs' predicate

def Prod.switch {α β : Type} (pair : α × β) : β × α :=
  match pair with
  | (a, b) => (b, a)

inductive PetName where
  | dogName : String -> PetName
  | catName : String -> PetName

def zip {α β : Type} (xs : List α) (ys : List β) : List (α × β) :=
  match xs, ys with
  | x :: xs', y :: ys' => (x, y) :: zip xs' ys'
  | _, _ => []

def take {α : Type} (n : Nat) (xs : List α) : List α :=
  match n, xs with
  | n + 1, x :: xs' => x :: take n xs'
  | _, _ => []

def distr {α β γ: Type} (pair : α × (β ⊕ γ)) : (α × β) ⊕ (α × γ) :=
  match pair with
  | (a, .inl b) => .inl (a, b)
  | (a, .inr c) => .inr (a, c)

def turn {α : Type} (pair : Bool × α) : α ⊕ α :=
  match pair with
  | (true, a) => .inl a
  | (false, a) => .inr a
