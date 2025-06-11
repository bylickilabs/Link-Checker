> 🔗 Ruby Link-Checker
- Ein einfacher, effizienter URL-Statusprüfer, erstellt mit Ruby.

<br>

---

<br>

> 🚀 Überblick
- Dieser Ruby-Link-Checker überprüft automatisch eine Liste von URLs auf deren Erreichbarkeit und speichert die Ergebnisse übersichtlich in einer Log-Datei.

<br>

---

<br>

## ⚙️ Features

- ✅ Einfache Nutzung per CLI
- ✅ Schnelle Statusprüfung (HTTP HEAD Request)
- ✅ Speichert Ergebnisse in einer Log-Datei (`log.txt`)
- ✅ Unterstützt benutzerdefinierte URL-Listen

<br>

---

<br>

## 📂 Projektstruktur

```yarn
link-checker/
├── .gitignore
├── LICENSE
├── README.md
├── link_checker.rb    # Hauptskript
├── urls.txt           # Beispiel URL-Liste
└── log.txt            # Ausgabe-Log (wird automatisch erstellt)
```

<br>

---

<br>

> 📋 Voraussetzungen

- [Ruby](https://www.ruby-lang.org/de/downloads/) installiert
- Prüfe die Ruby-Installation mit:

```yarn
ruby -v
```

<br>

---

<br>

> ⚡ Installation & Einrichtung
- 1. Klone das Repository:
 
```yarn
git clone <dein-repository-url>
cd link-checker
```

- 2. Erstelle deine eigene URL-Liste (optional):
  - Bearbeite die Datei urls.txt, um URLs hinzuzufügen oder zu entfernen.
 
```yarn
https://www.google.com
https://www.github.com
https://www.microsoft.com
```

<br>

---

<br>

> 🚩 Nutzung des Link-Checkers
- Standardmäßig (verwendet urls.txt):

```yarn
ruby link_checker.rb
```

- Eigene URL-Datei verwenden:

```yarn
ruby link_checker.rb andere_urls.txt
```

```yarn
🔎 URL-Status Check gestartet (Quelle: urls.txt)

✅ [200] https://www.google.com → OK
✅ [301] https://www.github.com → Moved Permanently
✅ [301] https://www.github.com/bylickilabs → OK
✅ [301] https://www.bylickilabs.de → OK
❌ https://www.nonexistentwebsite.xyz → Fehler: getaddrinfo failed

✔️ Prüfung abgeschlossen! Ergebnisse in log.txt gespeichert.
```

<br>

---

<br>

>🛠️ Anpassungen & Erweiterungen
-1. Weitere URLs hinzufügen
 - Füge neue URLs zur Datei urls.txt hinzu, eine URL pro Zeile.

> 2. Fehlerprotokollierung & Logging erweitern
  - Erweitere das Skript zur detaillierten Analyse (z.B. HTTP-Body-Prüfung, Performance-Logging).

> 3. Parallelisierung der Prüfungen
  - Nutze Ruby Threads, um die Geschwindigkeit zu erhöhen.

<br>

---

<br>

> 📄 Lizenz
MIT [LICENSE](LICENSE)
