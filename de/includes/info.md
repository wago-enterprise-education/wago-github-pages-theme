---
layout: page
title: info.html
lang: de
lang-ref: includes_info
---
# {{ page.title }}

{:.info}
Das Include hat ein paar Nachteile. Bitte bevorzugt auf {% raw %}{:.info}{% endraw %} zurückgreifen.

Eine kurze Info kann über den Include `info.html` erzeugt werden. Beispiel:

```
{%- raw -%}
{% include info.html 
	content = "Dies ist eine kurze zusätzliche Info."
%}
{% endraw %}
```

Diese Info erscheint dann im HTML Output als:

{% include info.html 
	content = "Dies ist eine kurze zusätzliche Info."
%}

#### Bekannte Probleme

Diese Version funktioniert nicht in Aufzählungen oder Bullet-lists. Das folgende Beispiel erzeugt eine fehlerhafte Anzeige der Infobox und setzt auch die Aufzählung nicht fort!

```
{%- raw -%}
1. Ein erster Eintrag

1. Ein zweiter Eintrag

	{% include info.html 
		content = "Diese Zeile wird nun nicht korrekt erfasst."
	%}

1. Ein dritter Eintrag
{% endraw %}
```

Das erzeugt HTML sieht dann wie folgt aus:

----

1. Ein erster Eintrag

1. Ein zweiter Eintrag

	{% include info.html 
		content = "Diese Zeile wird nun nicht korrekt erfasst."
	%}

1. Ein dritter Eintrag

----

Hier gibt es folgende Möglichkeiten das zu umgehen:

{:.info}
<div markdown="1">
**Ein Titel**

Dies ist **eine** zusätzliche Info.
</div>
