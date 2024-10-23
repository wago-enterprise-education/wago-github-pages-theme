---
layout: page
title: warning-damage.html
lang: de
lang-ref: includes_warning-damage
---
# {{ page.title }}

{:.info}
Das Include hat ein paar Nachteile. Bitte bevorzugt auf {% raw %}{:.warning-damage}{% endraw %} zurückgreifen.

Eine kurze Info kann über den Include `warning-damage.html` erzeugt werden. Beispiel:

```
{%- raw -%}
{% include warning-damage.html 
	content = "Dies ist eine Warnung."
%}
{% endraw %}
```

Diese Warnung erscheint dann im HTML Output als:

{% include warning-damage.html 
	content = "Dies ist eine Warnung."
%}

#### Bekannte Probleme

Diese Version funktioniert nicht in Aufzählungen oder Bullet-lists. Das folgende Beispiel erzeugt eine fehlerhafte Anzeige der Warnung und setzt auch die Aufzählung nicht fort!

```
{%- raw -%}
1. Ein erster Eintrag

1. Ein zweiter Eintrag

	{% include warning-damage.html 
		content = "Diese Zeile wird nun nicht korrekt erfasst."
	%}

1. Ein dritter Eintrag
{% endraw %}
```

Das erzeugt HTML sieht dann wie folgt aus:

----

1. Ein erster Eintrag

1. Ein zweiter Eintrag

	{% include warning-damage.html 
		content = "Diese Zeile wird nun nicht korrekt erfasst."
	%}

1. Ein dritter Eintrag

----
