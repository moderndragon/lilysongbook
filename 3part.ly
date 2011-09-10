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
		\partial 8
		e8
		c' c d e d e e2.
		c8 c d e d e e2.
		c8 c d e d e
		e8 c4 r4 e8
		f4 f8 f e d 
		d e4 r4
		}
	}

Hauptstimme = \relative c' {
	\new Voice = "hauptstimme" {
		\voiceTwo
		\partial 8
		e8 
		a a b c b c c2.
		a8 a b c b c c2.
		a8 a b c b c
		c g4 r4 g8
		d'4 d8 d c d 
		b e,4 r4
	  	}
	}

Unterstimme = \relative c' {
	\time 6/8 
	\new Staff {
		\partial 8
		e8 
		a8 a g e a a g2.
		a8 a g e a a g2.
		a8 a g e a a
		g e4 r4 e8
		a4 a8 a g f 
		e e4 r4 r8
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
