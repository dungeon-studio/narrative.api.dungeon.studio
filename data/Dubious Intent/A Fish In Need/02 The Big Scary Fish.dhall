let Encounter = ./../../types/Encounter.dhall

let mission = λ(component : Text) → "Dubious Intent/A Fish In Need/${component}"

let element
    : Encounter
    = { identifier =
          mission "02 The Big Scary Fish"
      , location =
          "ocean or sea"
      , enemies =
          [ mission "Enemies/Big Scary Fish" ]
      , actions =
          [ { identifier =
                "Rock the Boat"
            , when =
                "continuously"
            , every =
                Some "6s"
            , splay =
                Some "2s"
            , outcome =
                "knocked overboard"
            }
          , { identifier =
                "Swim Away"
            , when =
                "hp <= 25%"
            , every =
                None Text
            , splay =
                None Text
            , outcome =
                "finish"
            }
          , { identifier =
                "Overboard"
            , when =
                "Rock the Boat occurred X times"
            , every =
                None Text
            , splay =
                None Text
            , outcome =
                "grapple and dive"
            }
          ]
      , responses =
          [ { identifier =
                "Octopus Ink"
            , aliases =
                [ "qaru su buludu", "Black Cloud Water" ]
            , outcome =
                "finish"
            }
          , { identifier =
                "Slap Water with Oars"
            , aliases =
                [] : List Text
            , outcome =
                "finish"
            }
          , { identifier =
                "Brace"
            , aliases =
                [] : List Text
            , outcome =
                "advantage on knocked overboard"
            }
          ]
      }

in  element
