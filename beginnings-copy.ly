\version "2.18.2"

\header {
  title = "Beginnings and Endings"
  composer = "Joshua Netterfield"
}

upper = \relative c {
  \clef treble
  \key aes \major
  \time 4/4
  c'''4.\mf c,8 ~ c4 c' | 
  c4.    c,8 ~ c4 c' |
  bes4.  c,8 ~ c4 bes' |
  <aes aes,>1 \fermata |
  des,4( f des' c |
  <des, g bes>1 \arpeggio) |

  c,4 ( ees bes' aes |
  g aes ees2 |
  <ees f,>2.) f,8 ees' |
  <g, bes>2 c4 ees |

  c2. ees4 |
  <g c, aes>4. f8 c4.  des8 |
  <ees f,>4. des8 aes4. bes8 |
  << {c2 bes} \\ {g1} >>
}

lower = \relative c {
  \clef bass
  \key aes \major

  aes'8\mp ees' c ees aes, ees' c ees |
  g,   ees' c ees g,   ees' c ees |
  ges, ees' c ees ges, ees' c ees |
  f, aes c ees f2 \fermata |

  des,,8 f' des aes' f des' aes c |
  ees,, g' ees bes' des2 |

  aes,8 ees' c ees bes' ees, aes c |
  f,,8 c' f aes c aes f c |
  des,8 aes' des f aes2 |
  ees,8 bes' ees g r g ees c |

  aes8 ees' c ees aes ees c' aes |
  f,8 c' f aes c aes f4 |
  des,8 aes' des f aes f des4 |
  ees,8 bes' ees bes ees, bes' ees bes |
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
