---
layout: page
title: Markdown Grundlagen
lang: de
lang-ref: markdown
---
# {{ page.title }}

Die grundsätzlichen Features von Markdown werden im Netz erklärt. Ein paar nützliche Links hierzu

- [GitHub Guide - Mastering Markdown](https://guides.github.com/features/mastering-markdown/)
- [GitHub Basic Writing and Formating](https://help.github.com/en/articles/basic-writing-and-formatting-syntax)
- [Markdown Cheat Sheet](https://guides.github.com/pdfs/markdown-cheatsheet-online.pdf)

Zusätzlich können Emojis eingesetzt werden.

- [Emoji Cheat Sheet](https://www.webfx.com/tools/emoji-cheat-sheet/)

## Kramdown

Der Markdownprozessor ist Kramdown. Dieser bietet einige Zusatzfeatures.

- [Kramdown](https://kramdown.gettalong.org/syntax.html)

Zu diesen Features gehören beispielsweise Attribute List Definitions und das Setzen von LaTeX Formeln, was in den folgenden beiden Abschnitten demonstriert wird.

#### Attribute List Definitions

Kramdown bietet die Möglichkeit mit sogenannten Attribute List Definitions den erzeugten HTML Tags weitere Attribute zu geben. Die grundsätzliche Syntax lautet vor Absätzen `{:attribute=value}`. Für die Class oder ID eines HTML Elementes gibt es je eine Kurzform. So kann anstelle von `{:class="my-class"}` einfach kurz `{:.my-class}` und anstatt `{:id="my-id"}` einfach kurz `{:#my-id}` geschrieben werden.

Das WAGO HowTo Theme bietet die folgenden nützliche Klassen, die auf diese Weise genutzt werden können.

- `.info` Für Infoboxen
- `.warning` Für Warnungen allgemeiner Art
- `.warning-damage` Für Warnungen vor Beschädigungen
- `.warning-electricity` Für Warnungen vor elektrischem Strom
- `.warning-esd` Für Warnungen vor Elektrostatischer Zerstörung

Für diese Klassen wir im folgenden kurz ein Beispiel Kramdown Code und das gerenderte Ergebnis dargestellt.

__Info__

```
{:.info}
Eine Info Box
```

{:.info}
Eine Info Box

__Warnung__

```
{:.warning}
Eine Warnung allgemeiner Art
```

{:.warning}
Eine Warnung allgemeiner Art

__Warnung vor Beschädigungen__

```
{:.warning-damage}
Eine Warnung vor Beschädigungen
```

{:.warning-damage}
Eine Warnung vor Beschädigungen

__Warnung vor elektrischem Strom__

```
{:.warning-electricity}
Eine Warnung vor elektrischem Strom
```

{:.warning-electricity}
Eine Warnung vor elektrischem Strom

__Warnung vor ESD__

```
{:.warning-esd}
Eine Warnung vor elektrostatischer Schädigung von Geräten
```

{:.warning-esd}
Eine Warnung vor elektrostatischer Schädigung von Geräten

#### Math Blocks

Kramdown ermöglicht das rendern von LaTeX Formeln, die mit Hilfe der Javascript Bibliothek [MathJax](https://www.mathjax.org/) gerendert werden.

Zum Beispiel führt

```
Der Satz des Pythagoras lautet: $$ c = \sqrt{a^2 + b^2} $$
```

zu

Der Satz des Pythagoras lautet: $$ c = \sqrt{a^2 + b^2} $$.

Komplexere Formeln lassen sich in Displayform darstellen. Hierzu muss der Matheblock mit `$$` gestartet werden:

```
$$
\begin{align*}
  & \phi(x,y) = \phi \left(\sum_{i=1}^n x_ie_i, \sum_{j=1}^n y_je_j \right)
  = \sum_{i=1}^n \sum_{j=1}^n x_i y_j \phi(e_i, e_j) = \\
  & (x_1, \ldots, x_n) \left( \begin{array}{ccc}
      \phi(e_1, e_1) & \cdots & \phi(e_1, e_n) \\
      \vdots & \ddots & \vdots \\
      \phi(e_n, e_1) & \cdots & \phi(e_n, e_n)
    \end{array} \right)
  \left( \begin{array}{c}
      y_1 \\
      \vdots \\
      y_n
    \end{array} \right)
\end{align*}
$$
```

Als Ergebnis sieht es dann so aus:

$$
\begin{align*}
  & \phi(x,y) = \phi \left(\sum_{i=1}^n x_ie_i, \sum_{j=1}^n y_je_j \right)
  = \sum_{i=1}^n \sum_{j=1}^n x_i y_j \phi(e_i, e_j) = \\
  & (x_1, \ldots, x_n) \left( \begin{array}{ccc}
      \phi(e_1, e_1) & \cdots & \phi(e_1, e_n) \\
      \vdots & \ddots & \vdots \\
      \phi(e_n, e_1) & \cdots & \phi(e_n, e_n)
    \end{array} \right)
  \left( \begin{array}{c}
      y_1 \\
      \vdots \\
      y_n
    \end{array} \right)
\end{align*}
$$