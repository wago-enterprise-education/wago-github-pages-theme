---
layout: page
title: howtoinfo.html
lang: de
lang-ref: includes_howtoinfo
---
# {{ page.title }}

In Schritt für Schritt Anleitungen kann eine Überblicksinfo zum Kontext, dem Schwierigkeitsgrad und dem Aufwand über das Include `howtoinfo` gegeben werden. Dies bindet man in seinem Markdown wie folgt ein:

```
{%- raw -%}
{% include howtoinfo.html
	compatibility = "Diese Anleitung nutzt als Basis den **Controller 
		PFC200** in Firmware... (relevante Abhängigkeiten)"
	difficulty = 2
	effort = 4
%}
{% endraw %}
```
Das erscheint dann in der Ausgabe als:

{% include howtoinfo.html
	compatibility = "Diese Anleitung nutzt als Basis den **Controller PFC200** in Firmware... (relevante Abhängigkeiten)"
	difficulty = 2
	effort = 4
%}
