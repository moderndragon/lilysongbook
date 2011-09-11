\version "2.12.3"
\header {
  title = "your title"
  poet = "T: poet"
  composer = "M: composer"
  }

global = { % Composition-wide settings go here / Stück-weite Einstellungen werden hier notiert %
	\time 4/4
}

Akkorde = \chords { 	% Begleitakkorde werden hier notiert / chords go here % 
		a1:m c
		} 

StropheEins = \lyricmode { 	% Text for first verse goes here / hier der Text für die erste Strophe  %
		aaa bbb ccc ddd
	}


Oberstimme = \relative c' {	% upper voice melody here / Melodie der Oberstimme kommt hierhin  %
	\new Voice {
		\voiceOne
		c'2 c4 d e1
		}
	}

Hauptstimme = \relative c' {	% melody of middle voice here / Melodie der Mittelstimme  % 
	\new Voice = "hauptstimme" {
		\voiceTwo
		a'2 a4 b c1
	  	}
	}

Unterstimme = \relative c' {	 % melody of lower voice here %
	\new Staff {
		a'2 a4 g e1
		}
	}

% everything put together / das Ganze zusammengebaut %

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
