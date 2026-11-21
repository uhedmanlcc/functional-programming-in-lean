def joinStringsWith (str1 str2 str3: String) : String :=
  String.append (String.append str2 str1) str3

-- joinStringsWith ": " : String -> String -> String -> String
#check joinStringsWith ": "

def volume (height width depth: Nat) : Nat :=
  height * width * depth
