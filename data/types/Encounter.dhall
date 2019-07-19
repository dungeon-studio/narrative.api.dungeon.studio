let Action = ./Action.dhall

let Response = ./Response.dhall

let Encounter
    : Type
    = { identifier :
          Text
      , location :
          Text
      , enemies :
          List Text
      , actions :
          List Action
      , responses :
          List Response
      }

in  Encounter
