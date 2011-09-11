\version "2.12.3"
\header {
  title = "your title"
  poet = "T: poet"
  composer = "M: composer"
  }

global = {
	\time 4/4
	\key c \major
	}

Akkorde = \chords { 
	}

Melodie = \relative c' {
		\tempo 4 = 60
		\clef treble
	}

Begleitung = \relative c' {
		\clef treble
<<
		\new Voice {
			}	
\\
		\new Voice {
			}	
>>
	}
% alles zusammengebaut %

<<
\Akkorde
\Melodie
\Begleitung
>>
