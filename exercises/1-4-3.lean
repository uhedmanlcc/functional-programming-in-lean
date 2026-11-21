structure RectangularPrism where
  height : Float
  width : Float
  depth : Float

def volume (p : RectangularPrism) : Float :=
  p.height * p.width * p.depth

structure Segment where
  startPoint : Float
  endPoint : Float

def length (s : Segment) : Float :=
  s.endPoint - s.startPoint

-- The declaration of `RectangularPrism` introduces the name `RectangularPrism` into the current namespace. The declaration of `Segment` introduces the name `Segment` into the current namespace. The declaration of `volume` introduces the name `volume` into the current namespace. The declaration of `length` introduces the following names:
-- 1. `RectangularPrism`
-- 2. `RectangularPrism.mk`
-- 3. `RectangularPrism.height`
-- 4. `RectangularPrism.width`
-- 5. `RectangularPrism.depth`

structure Hamster where
  name : String
  fluffy : Bool

structure Book where
  makeBook ::
  title : String
  author : String
  price : Float

-- The declaration of `Hamster` introduces the following names:
-- 1. `Hamster : Type`
-- 2. `Hamster.mk : String → Bool → Hamster`
-- 3. `Hamster.name : Hamster → String`
-- 4. `Hamster.fluffy : Hamster → Bool`

-- The declaration of `Book` introduces the following names:
-- 1. `Book : Type`
-- 2. `Book.makeBook : String → String → Float → Book`
-- 3. `Book.title : Book → String`
-- 4. `Book.author : Book → String`
-- 5. `Book.price : Book → Float`
  