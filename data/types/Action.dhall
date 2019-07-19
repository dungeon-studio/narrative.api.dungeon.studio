let Action
    : Type
    = { identifier :
          Text
      , when :
          Text
      , every :
          Optional Text
      , splay :
          Optional Text
      , outcome :
          Text
      }

in  Action
