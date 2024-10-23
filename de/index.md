---
layout: page
title: WAGO HowTo Theme
lang: de
lang-ref: wago-howto-theme
redirect_from: '/'
---

# {{ page.title }}

Das WAGO HowTo Theme ist ein [Jekyll] theme für WAGO Repositories auf [GitHub], die [GitHub Pages] zur Dokumentation nutzen möchten. Die [Dokumentation dieses Themes](https://andrebell.github.io/wago-howto-theme) erfolgt selber in [GitHub Pages].

## Abhängigkeiten

Dieses Theme nutzt die standard [Jekyll] Installation auf [GitHub Pages]. Als Plugins wird auf 

- [Jemoji] für Emojis und die Flaggen in der Sprachauswahl
- [Jekyll Redirect From] für den Redirect auf die Defaultsprache in mehrsprachigen Seiten
- [Jekyll Relative Links] für relative Links innerhalb des Repositories, die auch in [GitHub] funktionieren 

zurückgegriffen.

Das Template nutzt die folgenden Javascript Bibliotheken:

- [JQuery](https://jquery.com/) in Version 3.3.1
- [Popper](https://popper.js.org/) in Version 1.14.7
- [Bootstrap](https://getbootstrap.com) in Version 4.3.1
- [MathJax](http://www.mathjax.org) in Version 2.7.5

## Schnellstart

1. Um dieses Theme in einem Repository zu nutzen muss eine `_config.yml` Datei im Basisverzeichnis für [GitHubPages] angelegt werden.

	```YAML
	title: Ein Titel für die Webseite
	author: Max Mustermann
	email: max.mustermann@wago.com
	remote_theme: andrebell/wago-howto-theme
	lang: de
	plugins:
	  - jemoji
	  - jekyll-redirect-from
	  - jekyll-relative-links
	```

1. Innerhalb des Repositories muss es ein oder mehrere Markdown-Files geben. Beispielsweise dieses `index.md`:

	```Markdown
	---
	layout: page
	title: Eine Indexseite
	lang: de
	lang-ref: index
	---
	# Eine Indexseite

	Hier kommt der Text...
	```

1. Innerhalb von [GitHub] muss für das Repository [GitHub Pages] in den Einstellungen aktiviert werden.

   {:.info}
   GitHub Pages generiert neue Seiten immer dann, wenn eine Änderung mit einem Push auf das Repository gespielt wird. 

## Nächste Schritte

Diese Dokumentation gibt weiterführende Infos in den folgenden Kapiteln:

- [Markdown](markdown/index.md): Für die Nutzung dieses Themes müssen die Inhalte in Markdown geschrieben werden. In diesem Kapitel werden ein paar kurze Infos sowie Links bereitgestellt. Darüber hinaus werden ein paar Besonderheiten zum Markdown Prozessor Kramdown gegeben, der in GitHub Pages eingesetzt wird.
- Jekyll: In diesem Kapitel werden ein paar Grundlagen zu [Jekyll], dem Tool hinter [GitHub Pages], sowie zu der in Jekyll verwendeten Template Engine Liquid gegeben.
- Verzeichnisse: Tipps zur Verzeichnisstruktur bei der Verwendung dieses Themes. 
- GitHub Pages: Hier gibt es eine kurze Anleitung, wie die Einstellungen auf GitHub durchgeführt werden.
- Internationalisierung: Soll die Dokumentation mehrsprachig ausgeführt werden, so beschreibt dieses Kapitel worauf es ankommt und wie das Theme das realisiert.
- [Includes](./includes/index.md): Einige wiederkehrende Elemente können vereinfacht auf Seiten hinzugefügt werden. Die möglichen Includes dieses Themes werden hier erläutert.
- Konfiguration: Alle möglichen Konfigurationsparameter des Themes werden hier dargestellt.
- Versionshistorie

## Lizenz

Dieses Theme steht als Open Source unter der [MIT License] zur Verfügung.

[Jekyll]: https://jekyllrb.com/ "Jekyll"
[GitHub]: https://www.github.com/ "GitHub"
[GitHub Pages]: https://help.github.com/en/articles/what-is-github-pages "GitHub Pages"
[MIT License]: https://opensource.org/licenses/MIT "MIT Lizenz"
[Jemoji]: https://github.com/jekyll/jemoji "Jemoji"
[Jekyll Redirect From]: https://github.com/jekyll/jekyll-redirect-from "Jekyll-Redirect-From"
[Jekyll Relative Links]: https://github.com/benbalter/jekyll-relative-links "Jekyll-Relative-Links"
