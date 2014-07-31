\header { piece = \markup { \italic "Andante." } }

bar = {
  \override Stem #'direction = #up

  \clef treble
  \key d \major

  d'2 a'2 fis'4 e'8 fis'8 a'4 a'4 b'2 a'2 fis'4 e'8 fis'8 d'4 a4 

  \override Score.RehearsalMark
       #'break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark #'self-alignment-X = #right
  \mark "etc. sempre da capo."
}

\score {
	\new Staff = "bar" \bar
	\midi { 
    \context { 
      \Score 
      tempoWholesPerMinute = #(ly:make-moment 120 4) 
    } 
	}
	\layout {
	  \context {
	    \Score
	    \remove "Bar_number_engraver"
	  }
	  indent = #0
	  % line-width = #150
	}
}

\version "2.7.39"  % necessary for upgrading to future LilyPond versions.
