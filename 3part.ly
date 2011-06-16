\version "2.12.3"
\header {
  title = "Drei Frauen"
  poet = "T: Babs/Grenzgängerin"
  composer = "M: thursa"
  }
Akkorde = \chords { 
		\partial 8 r8
		a2.:m c
		a:m c
		a:m c
		d:m e
		} 

AkkordeII = \chords { 
		\partial 8 r8
		a2.:m c
		a:m c
		a:m c
		d2.:m e a:m
		}

StropheEins = \lyricmode {
		Drei Frau -- en, so alt wie der Traum
		sa -- ßen und sit -- zen am Baum,
		schau -- en ins Was -- ser und we -- ben
		das Schick -- sal auch für Dein Le -- ben.
	}

StropheFuenf = \lyricmode {
		Drei Frau -- en, so alt wie Dein Traum
		sa -- ßen und sit -- zen am Baum,
		Ich ver -- traue euch mein Le -- ben,
		denn das Schick -- sal wer -- det ihr _ stets we -- ben!
	}		

Oberstimme = \relative c' {
	\tempo 4. = 66
	\time 6/8 
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
	\time 6/8 
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

OberstimmeII = \relative c' {
	\time 6/8 
	\new Voice {
		\voiceOne
		\partial 8
		e8
		c' c d e d e e2.
		c8 c d e d e 
		e4. r4 c16 c 
		e4. d4 e8 
		d c4 r4 c16 c 
		f4 f8 f4 f8
		e4. d4 e8 
		d4. c4.
		}
	}

HauptstimmeII = \relative c' {
	\time 6/8 
	\new Voice = "hauptstimme" {
		\voiceTwo
		\partial 8
		e8 
		a a b c b c c2.
		a8 a b c b c 
		c4. r4 g16 g
		c4. b4 c8 
		c g4 r4 g16 g
		d'4 d8 d4 d8 
		c4. b4 c8 
		b4. a4.
	  	}
	}

UnterstimmeII = \relative c' {
	\time 6/8 
	\new Staff {
		\partial 8
		e8 
		a8 a g e a a g2.
		a8 a g e a a 
		g4. r4 e16 e
		a4. a4 a8
		g e4 r4 e16 e
		a4 a8 a4 a8
		e4. e4 e8
		e4. e4.
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

<<
	\AkkordeII
	<<
		\OberstimmeII
	\\
		\HauptstimmeII
		\new Lyrics
		\context Lyrics = Hauptstimme \lyricsto hauptstimme \StropheFuenf
	>>
	\UnterstimmeII
>>
