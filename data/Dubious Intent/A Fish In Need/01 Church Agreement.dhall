-- TODO Share characters between plot elements.
-- * Hayley Yewenbow

let Dialogue = ./../../types/Dialogue.dhall

let mission = λ(component : Text) → "Dubious Intent/A Fish In Need/${component}"

let element
    : Dialogue
    = { name =
          mission "01 Church Agreement"
      , location =
          "church of a seaside town"
      , activates =
          [ "Followers/Hayley Yewenbow", "Followers/Retinue", "Props/Skiff" ]
      , character =
          "Hayley Yewenbow"
      , dialogue =
          ''
          As requisition for payment, the church has agreed to provide the
          services including but not limited to the following:
          
          * The scribe services of one Hayley Yewenbow, Scrivner of the Blue
            Sash
          * Inspection, research, and identification of any requested items of
            arcane nature.
          * Porter services for individuals without their own retinue.
          * The use of one skiff whose replacement is not covered.
          * Service personnel to attend a camp while performing missions for
            the church.
          * Last rites and funerary services performed by an ordained member of
            the church if necessary.
          ''
      }

in  element
