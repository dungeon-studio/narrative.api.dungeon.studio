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
                "6s"
            , splay =
                "2s"
            , outcome =
                "knocked overboard"
            }
          , { identifier = "Swim Away", when = "hp <= 25%", outcome = "finish" }
          , { identifier =
                "Overboard"
            , when =
                "Rock the Boat occurred X times"
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
          , { identifier = "Slap Water with Oars", outcome = "finish" }
          , { identifier = "Brace", outcome = "advantage on knocked overboard" }
          ]
      }

in  element
