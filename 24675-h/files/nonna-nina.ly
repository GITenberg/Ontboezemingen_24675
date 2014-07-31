bar = {
  \override Stem #'direction = #up

  \clef treble
  \key g \major

  b'4. a'8 g'4 [a'8 (b'8)]
  c''4. (b'8) a'4 r4
  a'4 a'8.[ (a'16)] a'8[ (c''8)] b'8[ (a'8)]
  b'4. (a'8) g'4 r4

  \break

  b'4 b'8[ (c''8)]
  \override Stem #'direction = #down
  fis''4 d''8[ (e''8)]
  \override Stem #'direction = #up
  c''4. (b'8) a'4 r8 g'8
  fis'8[ (d'8)] fis'8[ (g'8)] a'8[ (c''8)] b'8[ (a'8)]
  g'4 g'4 g'4 \bar "|."
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
	  line-width = #150
	}
}
\version "2.7.39"  % necessary for upgrading to future LilyPond versions.
