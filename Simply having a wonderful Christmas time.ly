\version "2.19.82"

melodyA = { r1 r r r r r r r }

melodyB = { r1 r r r }

melodyC = { r4 g' c''8 d'' e''4~ |  e'' r2. }

melodyD = { e''2 d'' f'' e''4. a'8 | g''4 f''8 e'' c''4 c'' | c''2 r2 }

harmonyA = {
  c1 | bes | c | a | c | g | c | a |
}

harmonyB = {
  d'2 g | e' a | f' bes | c'1 |
}

harmonyC = { c1~ | c2. r4 }

chordsA = \chordmode { r1 r r r r r r r }

chordsB = \chordmode {
  d2:min g:min
  e:min a:min
  f:maj7 bes:5
  c1:5
}

refrain = \lyricmode {
  Sim -- ply ha -- ving a won -- der -- ful Christ -- mas time.
  Sim -- ply ha -- ving a won -- der -- ful Christ -- mas time.
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
      }
    }
    \new Lyrics \lyricsto "melody" {
      \verseOne
      \refrain
      \verseTwo
      \refrain
    }
    \new Staff {
      \clef "bass"
      \key c \mixolydian
      \harmonyA

      %\clef "treble"
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
    }
  >>
}
