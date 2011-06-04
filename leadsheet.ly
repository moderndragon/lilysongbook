\version "2.12.3"
% Leadsheet für eine Stimme mit Gitarre

\header {
  title = "my title"
  poet = "T: poet"
  composer = "M: composer"
  }

Akkorde = \chords { % In diesem Teil werden die Begleitakkorde notiert.
  } 

Melodie = \new Staff {
  <<
  relative c' {
    \clef treble
    \time 4/4
    \tempo 4 = 120
    a b c b c2 b a1
    }
  \addlyrics { % Lyrics zur ersten Strophe
    }
  \addlyrics  { % Lyrics zur zweiten Strophe
    }
  >>
  }

<<
  \Akkorde
  \Melodie
>>
