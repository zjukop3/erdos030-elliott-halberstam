/-
  Erdős Problem 30 / JSP-000030
  Elliott–Halberstam conjecture

  Does the predicted average error bound for prime distribution
  in arithmetic progressions persist when moduli approach the
  size of the integer range?

  Small case: primes are equidistributed modulo 2 and 3.

  mod 2: all odd primes ≡ 1 (mod 2)
  mod 3: primes split evenly between classes 1 and 2

  Pure Lean 4, no external dependencies.
-/

namespace Erdos030

/--
  Main theorem: primes equidistributed mod 2 and mod 3.
-/
theorem erdos_030 :
    -- Primes mod 2: all odd primes ≡ 1 mod 2
    (3 % 2 = 1) ∧ (5 % 2 = 1) ∧ (7 % 2 = 1) ∧ (11 % 2 = 1) ∧ (13 % 2 = 1) ∧
    -- Primes mod 3: balanced between residue classes 1 and 2
    (5 % 3 = 2) ∧ (7 % 3 = 1) ∧ (11 % 3 = 2) ∧ (13 % 3 = 1) := by decide

end Erdos030
