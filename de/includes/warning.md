---
layout: page
title: warning.html
lang: de
lang-ref: includes_warning
---
# {{ page.title }}

{:.info}
Das Include hat ein paar Nachteile. Bitte bevorzugt auf {% raw %}{:.warning}{% endraw %} zurückgreifen.

Eine kurze Info kann über den Include `warning.html` erzeugt werden. Beispiel:

```
{%- raw -%}
{% include warning.html 
	content = "Dies ist eine Warnung."
%}
{% endraw %}
```

Diese Warnung erscheint dann im HTML Output als:

{% include warning.html 
	content = "Dies ist eine Warnung."
%}

#### Bekannte Probleme

Diese Version funktioniert nicht in Aufzählungen oder Bullet-lists. Das folgende Beispiel erzeugt eine fehlerhafte Anzeige der Warnung und setzt auch die Aufzählung nicht fort!

```
{%- raw -%}
1. Ein erster Eintrag

1. Ein zweiter Eintrag

	{% include warning.html 
		content = "Diese Zeile wird nun nicht korrekt erfasst."
	%}

1. Ein dritter Eintrag
{% endraw %}
```

Das erzeugt HTML sieht dann wie folgt aus:

----

1. Ein erster Eintrag

1. Ein zweiter Eintrag

	{% include warning.html 
		content = "Diese Zeile wird nun nicht korrekt erfasst."
	%}

1. Ein dritter Eintrag

----

Hier gibt es zwei Möglichkeiten das zu umgehen. Entweder es wird auf die Kramdown

{:.warning .alert .alert-info}
<div markdown="1">
**Ein Titel**

Dies ist **eine** zusätzliche Info.
</div>

1. a

1. b

	{:.warning}
	Dies ist **eine** zusätzliche Info. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.<br><br>
	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.

1. c

> A blockquote with a title
{:title="The blockquote title"}
{: #myid}
