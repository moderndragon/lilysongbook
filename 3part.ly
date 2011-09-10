\version "2.12.3"
\header {
  title = "your title"
  poet = "T:"
  composer = "M: "
  }

global = {
	\tempo 4. = 66
	\time 4/4 
}

Akkorde = \chords { % Begleitakkorde werden hier notiert / chords go here % 
		a2.:m c
		} 

StropheEins = \lyricmode {
		aaa bbb
	}


Oberstimme = \relative c' {	\tempo 4. = 66
	\new Voice {
		\voiceOne
		c'2 c4 d e1
		}
	}

Hauptstimme = \relative c' {
	\new Voice = "hauptstimme" {
		\voiceTwo
		a a b c b c c2.
	  	}
	}

Unterstimme = \relative c' {
	\new Staff {
		a8 a g e a a g2.
		}
	}

% das Ganze zusammengebaut

<<
	\Akkorde
	<<
		\Oberstimme
	\\
		\Hauptstimme
		\new Lyrics
		\context Lyrics = Hauptstimme \lyricsto hauptstimme \StropheEins
	>>
	\Unterstimme
>>
