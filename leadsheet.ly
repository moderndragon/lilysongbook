\version "2.12.3"
% Leadsheet für eine Stimme mit Gitarre

\header {
  title = "my title"
  poet = "T: poet"
  composer = "M: composer"
  }

Akkorde = \chords { % In diesem Teil werden die Begleitakkorde notiert.
  a2:m c a:m e:7 a:m
  } 

Melodie = \new Staff {
  <<
  \relative c'' {
    \clef treble
    \time 4/4
    \tempo 4 = 120
    a4 b c b c2 b a1
    }
  \addlyrics { % Lyrics zur ersten Strophe
    aaa bbb ccc ddd aaa ddd aaa
    }
  \addlyrics  { % Lyrics zur zweiten Strophe
    aaa bbb ccc ddd aaa ddd aaa
    }
  >>
  }

% Hier werden die Elemente angeordnet 
<<
  \Akkorde
  \Melodie
>>
