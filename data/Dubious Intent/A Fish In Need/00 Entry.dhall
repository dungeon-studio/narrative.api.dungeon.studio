let Dialogue = ./../../types/Dialogue.dhall

let scribe = ./../../Characters/"Hayley Yewenbow.dhall"

let element
    : Dialogue
    = { identifier =
          "00 Entry"
      , location =
          "church of a seaside town"
      , activates =
          [ (./"01 Church Agreement.dhall").identifer
          , (./"02 The Big Scary Fish.dhall").identifier
          , (./"03 The Drow.dhall").identifier
          , (./"04 Koa-Toa Sacrifices.dhall").identifier
          , (./"05 Koa-Toa Tribe of Glugblubloop.dhall").identifier
          , (./"06 The Summoned Creature.dhall").identifier
          ]
      , character =
          (./../../Characters/"Serafin Pavlenco.dhall").identifier
      , dialogue =
          ''
          Adventurer, this town is suffering from the loss of many.  The
          villagers believe many of their friends and family have been taken by
          Deniz Setan, devils of the sea.  The must have been taken to one of
          the nearby islands.  There is a strange glow at night as if a large
          group is camped there.
          
          If you would aid us in this search we would be forever indebted for
          the return of our missing.  If you come across these Deniz Setan I'd
          ask that you not harm them but instead determine their motives.
          
          The church believes all endeavours should aim for peace and while we
          mourn our losses we cannot abide a violent end to this unfortunate
          happening.  Please speak with my scribe, ${scribe.identifier}, to
          hear the church's terms of payment for return of our friends.
          ''
      }

in  element
