// CV de Gabrielle Seng — voir build.sh

#let sidebar-bg = rgb("#bdf1f7")
#let dark = rgb("#1c4a52")
#let heading-col = rgb("#2c555a")
#let accent = rgb("#3399a6")
#let muted = rgb("#777777")
#let link-col = rgb("#1d4b52")

#let sidebar-w = 187pt

// Version publique (web) : `--input public=1` masque adresse et téléphone
#let public = sys.inputs.at("public", default: "0") == "1"

#set document(title: "CV – Gabrielle Seng", author: "Gabrielle Seng")
#set page(
  paper: "a4",
  margin: 0pt,
  background: {
    // bandeau latéral
    place(top + left, rect(width: sidebar-w, height: 100%, fill: sidebar-bg))
    // décor en haut à droite
    place(top + left, polygon(
      fill: accent,
      (0pt, 0pt), (595pt, 0pt), (595pt, 63pt), (205pt, 0pt),
    ))
    // triangle sombre en haut à gauche
    place(top + left, polygon(
      fill: dark,
      (0pt, 0pt), (212pt, 0pt), (0pt, 112pt),
    ))
  },
)
#set text(font: ("Source Sans 3", "Ubuntu Sans"), size: 10pt, lang: "fr")
#set par(justify: false, leading: 0.55em)

#let serif = "Libertinus Serif"

// --- Composants ---------------------------------------------------------

#let side-title(body) = block(above: 18pt, below: 0pt)[
  #text(font: serif, size: 11.5pt, weight: "bold", fill: dark)[#body]
]

#let side-item(label, body) = block(above: 9pt, below: 0pt)[
  #text(weight: "bold")[#label] \
  #body
]

#let main-title(body) = block(above: 20pt, below: 6pt)[
  #text(font: serif, size: 12pt, weight: "bold", fill: heading-col)[#body]
]

#let project(name, date, body) = block(above: 8pt, below: 0pt, breakable: false)[
  #text(weight: "bold")[#name] #text(fill: muted, size: 8.8pt)[(#date)] \
  #body
]

#let tl-entry(title, period, org, city, body) = block(
  above: 9pt, below: 0pt,
  stroke: (left: 0.9pt + black),
  inset: (left: 10pt, top: 1pt, bottom: 4pt),
  width: 100%,
)[
  #place(top + left, dx: -13.7pt, dy: 1pt, circle(radius: 3.2pt, fill: black))
  #text(weight: "bold")[#title] \
  #text(fill: muted, size: 9pt)[#period] #h(1pt) #text(fill: link-col)[#org] #city \
  #body
]

#let bullets(..items) = list(
  marker: [•], indent: 4pt, body-indent: 6pt, spacing: 0.5em,
  ..items.pos(),
)

// --- Colonne gauche -----------------------------------------------------

#place(top + left, dx: 47.8pt, dy: 15pt,
  box(width: 92.4pt, height: 92.4pt, clip: true, radius: 50%,
    image("img0.png", width: 92.4pt, height: 92.4pt, fit: "cover")))

#place(top + left, dx: 15pt, dy: 114pt, box(width: sidebar-w - 22pt)[
  #set text(size: 10pt)
  #let line(sym, body) = block(above: 0pt, below: 7.5pt)[
    #grid(columns: (16pt, 1fr), column-gutter: 2pt, align: horizon,
      text(fill: dark, size: 10pt, sym), body)
  ]
  #line("✉", link("mailto:gabieseng29@gmail.com")[gabieseng29\@gmail.com])
  #line("⚭", link("https://github.com/GabyGabySng")[github.com/GabyGabySng])
  #line("⌂", if public [Brest] else [99 Rue Jules Lesven, 29200 Brest])
  #line("▤", [Permis B])
  #line("⚷", [Véhicule personnel])
  #if not public { line("✆", [07 82 80 01 11]) }

  #side-title[Informatique]
  #side-item[Logiciels][Git (GitLab et GitHub), UMLet, MySQLWorkbench, FileZilla, Wampserver, suite Microsoft / LibreOffice]
  #side-item[Frameworks][CodeIgniter (MVC), Bootstrap]
  #side-item[Langages de programmation][C, Java, Python, OCaml, HTML/CSS/JS, PHP, XML]
  #side-item[Base de données][SQL, MariaDB, modélisation MCD/MLD]
  #side-item[Compétences][Gestion de projets en méthodologie Agile (SCRUM), Agentic AI (Claude Code), Programmation orientée objet, Conception et modélisation de bases de données, Débogage et résolution de problèmes]

  #side-title[Atouts]
  #side-item[Adaptabilité][]
  #side-item[Prise de parole en public][]
  #side-item[Esprit d'équipe][]
  #side-item[Curiosité][]

  #side-title[Langues]
  #side-item[Français][Native]
  #side-item[Anglais][Niveau C1]
  #side-item[Coréen][Niveau B1 – TOPIK 2]

  #side-title[Centres d'intérêts]
  #side-item[Conférences techniques][FinistDevs, La nuit des communautés]
  #side-item[Tir à l'arc][]
  #side-item[Musique][Harpe, guitare, basse, piano et chant]
])

// --- Colonne droite -----------------------------------------------------

#place(top + left, dx: sidebar-w + 25pt, dy: 24pt, box(width: 595pt - sidebar-w - 25pt - 32pt)[
  #set par(justify: true)
  #text(font: serif, size: 20pt, fill: rgb("#222222"))[Gabrielle Seng]

  #v(2pt)
  #text(font: serif, size: 13.5pt, weight: "bold", fill: accent)[
    Recherche de stage en développement \
    informatique d'Avril à Juin 2027
  ]

  #v(2pt)
  Étudiante en Licence 3 Informatique à l'UBO (Brest), je recherche un stage de 2 mois en développement informatique. Titulaire d'une Licence en langues étrangères et forte d'une expérience dans la Marine Nationale, en mer comme à terre, j'ai choisi de me reconvertir dans un domaine qui me passionne. Rigoureuse, adaptable et habituée au travail en équipe dans des environnements exigeants, je souhaite mettre mes compétences au service de projets concrets.

  #main-title[Projets informatiques]
  #project("Break The Code", "19 novembre 2026")[Résolution de problèmes d'algorithmique en équipe de 3.]
  #project("Projet Application de gestion de Fablab L3", "en cours")[Développement d'une application de gestion d'un fablab en équipe de 4 développeurs en tant que cheffe de projet. Planification des échéances, répartition des tâches, suivi d'avancement régulier. Mise en place de l'environnement GitLab et gestion des rendus. Application codée en Java.]
  #project("Projet QRiosity L3", "en cours")[Développement d'un logiciel de gestion d'exposition et déploiement sur le serveur de l'université. CodeIgniter4 en méthodologie Agile (SCRUM), PHP, HTML/JS/CSS avec une base de données MariaDB.]
  #project("Projet Space Invaders L2", "sept. – nov. 2025")[Création du jeu Space Invaders en binôme. Projet disponible sur GitHub. Codé en Python.]

  #main-title[Expériences professionnelles]
  #pad(left: 11pt)[
    #tl-entry("Chef de quart", "De mai 2023 à jan. 2025", "Marine Nationale", "Brest, France")[
      Service au sein de la cellule d'urgence MDAT-GOG du MICA Center :
      #bullets(
        [Préparation et présentation de briefing.],
        [Gestion du poste de quart.],
        [Prise des appels d'urgence.],
        [Gestion de 4 logiciels de suivi des incidents.],
        [Lien entre le monde maritime civil et militaire.],
      )
    ]
    #tl-entry("Opératrice Sonar", "De mars 2022 à avr. 2023", "Marine Nationale", "Brest, France")[
      Opératrice sonar et sécurité à bord des FREMM Aquitaine et Bretagne :
      #bullets(
        [Mission Grand Nord d'une durée de 2 mois (Avril à Juin 2022).],
        [Exploitation de deux sonars embarqués en conditions opérationnelles.],
        [Maîtrise de l'architecture des systèmes de fonctionnement des sonars.],
        [Présentation de briefings opérationnels au commandement.],
      )
    ]
  ]

  #main-title[Diplômes et Formations]
  #pad(left: 11pt)[
    #tl-entry("Licence – Parcours Informatique : Fondements et Applications (IFA)", "Depuis sept. 2025", "Université de Bretagne Occidentale", "Brest, France")[
      Option Administration système. \
      Langages de programmation, développement de logiciels, architecture de matériels et réseaux, systèmes d'exploitation. \
      Conception d'IHM, d'applications Web et de systèmes d'information.
    ]
    #tl-entry("Licence LEA Anglais – Coréen", "De sept. 2015 à juin 2018", "Université de La Rochelle", "La Rochelle, France")[
      Licence mention Bien. \
      Cours de langue anglaise et coréenne, cours d'Histoire et de culture (Asie, Indopacifique). \
      Échange universitaire de 5 mois à l'Université de Hongik à Seoul, Corée du Sud, en 2017.
    ]
  ]
])
