\version "2.12.3"
\header {
  title = "your title"
  poet = "T:"
  composer = "M: "
  }

global = {
	\tempo 4 = 66
	\time 4/4
}

Akkorde = \chords { % Begleitakkorde werden hier notiert / chords go here % 
		a1:m c
		} 

StropheEins = \lyricmode {
		aaa bbb ccc ddd
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
		a'2 a4 b c1
	  	}
	}

Unterstimme = \relative c' {
	\new Staff {
		a'2 a4 g e1
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
