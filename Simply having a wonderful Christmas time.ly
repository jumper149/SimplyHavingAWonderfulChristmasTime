\version "2.19.82"
\header {
  title = "Simply having a wonderful Christmas time"
}

melodyA = { r1 r r r r r r r }

melodyB = { r1 r r r }

melodyC = { r4 g' c''8 d'' e''4~ |  e'' r2. }

melodyD = { e''2 d'' f'' e''4. a'8 | g''4 f''8 e'' c''4 c'' | c''2 r2 }

melodyE = {
  r2 e'' | c'' a' | f' d' | g' g' |
  c' e'' | c'' a' | f' d' | g'1 
}

melodyF = { r4 g'' g''8 g'' c''4~ | c'' r2. | }

harmonyA = {
  c1 | bes | c | a | c | g | c | a |
}

harmonyB = {
  d'2 g | e' a | f' bes | c'1 |
}

harmonyC = { c1~ | c2. r4 }

harmonyE = {
  r1 |
  c8 c c c c c c c | 
  f f f f f f f f |
  g g g g g g g g |
  c c c c c c c c | 
  c c c c c c c c | 
  f f f f f f f f |
  g g g g g g g g |
}

chordsA = \chordmode { r1 r r r r r r r }

chordsB = \chordmode {
  d2:min g:min
  e:min a:min
  f:maj7 bes:5
  c1:5
}

chordsE = \chordmode {
  r1 c:5 f:5 g:5 c:5
  c:5 f:5 g:5
}

refrain = \lyricmode {
  Sim -- ply ha -- ving a won -- der -- ful Christ -- mas time.
  Sim -- ply ha -- ving a won -- der -- ful Christ -- mas time.
}

bridge = \lyricmode {
  The choir of chil -- dren sing their song.
  They prac -- ticed all year long.
}

verseOne = \lyricmode {
  The moon is right.
  The spi -- rit's up.
  We're here to -- night
  and that's e -- nough.
}

verseTwo = \lyricmode {
  The par -- ty's on.
  The fee -- lin's here.
  That on -- ly comes
  this time of year
}

verseThree = \lyricmode {
  The word is out.
  A -- bout the town.
  To lift a glass,
  ah, don't look down.
}

{
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \chordsA
      \chordsB
      \chordsB

      \chordsA

      \chordsB
      \chordsB

      \chordsA

      \chordsB
      \chordsB

      \chordsE

      \chordsA

      \chordsB
      \chordsB
      \chordsB
      \chordsB
      \chordsB
      \chordsB
    }
    \new Staff {
      \new Voice = "melody" {
        \clef "treble"
        \key c \mixolydian
        \melodyA
        \melodyB
        \melodyB

        \melodyC
        \melodyC
        \melodyC
        \melodyC

        \melodyD
        \melodyD

        \melodyC
        \melodyC
        \melodyC
        \melodyC

        \melodyD
        \melodyD

        \melodyE

        \melodyC
        \melodyC
        \melodyC
        \melodyF

        \melodyD
        \melodyD
        \melodyD
        \melodyD
        \melodyD
        \melodyD
      }
    }
    \new Lyrics \lyricsto "melody" {
      \verseOne
      \refrain
      \verseTwo
      \refrain
      \bridge
      \verseThree
      \refrain
      \refrain
      \refrain
    }
    \new Staff {
      \clef "bass"
      \key c \mixolydian
      \harmonyA

      \harmonyB
      \harmonyB

      \harmonyC
      \harmonyC
      \harmonyC
      \harmonyC

      \harmonyB
      \harmonyB

      \harmonyC
      \harmonyC
      \harmonyC
      \harmonyC

      \harmonyB
      \harmonyB

      \harmonyE

      \harmonyC
      \harmonyC
      \harmonyC
      \harmonyC

      \harmonyB
      \harmonyB
      \harmonyB
      \harmonyB
      \harmonyB
      \harmonyB
    }
  >>
}
