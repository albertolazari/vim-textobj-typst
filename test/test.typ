= Typst text objects
Use this document to test the text objects

== Strong/Emph
This is some _emph text_ with nothing fancy

This is a simple *strong item, with _emph_ text inside it*

== List items
Test list:
- Item 1
- Item 2

- Non-tight item

- Long item \
  With more than one line
    and also different indentation

  + Mixing up things

    Still long items
  This is not into the numbered list

 indenting up to the symbol

This is not a list item
- And here's another one

== Math mode
Now, math mode is more complicated

This is a simple inline math expression: $e = m c^2$, while this:
$ abs(x) = sqrt(y - 1) $
is a block equation

Block equations support multiline expressions!
$ f(n) = cases(
  0         &"if" n = 0 \
  n - 1 &"if" n > 0) $

=== Limitations
- Having a $p$ and then an $n$ causes to also have a block math in-between the two
- Expression on more lines can't be written like this one:
$
  sum_(x in NN) 1 / n
$
- Inline expressions are not multiline like this: $forall x.
  exists space epsilon > 0 "s.t."
  x + 1 > epsilon$
- When having nested math environments, only the inner one will be matched: $f(#text(fill: blue, $x$)) = e^(#text(fill: blue, $x$))$
