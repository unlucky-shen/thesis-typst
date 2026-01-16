#let project(university: "", department: "", title: "", author: "", date: "", body) = {
  
  // General Formatting
  set text(font: "Times New Roman", size: 12pt)
  set par(
    leading: 1.5em,
    spacing: 1.5em,
    justify: true
  ) 
  set page(
    margin: 1in,
    numbering: "1",
    number-align: center
  )
  set heading(numbering: "1.1")

  // Front Page
  page(numbering: none)[
    #set align(center)
    #upper(university)
    #v(2.5cm)
    #department
    #v(1fr)
    #text(size: 14pt, weight: "bold")[#upper(title)]
    #v(1fr)
    #author
    #align(bottom)[#date]
  ]

  // Chapters
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    set align(center)
    set text(size: 12pt, weight: "bold")
    block(upper([
      Chapter #counter(heading).display() : #it.body
    ]))
    v(1em)
  }

  // Subchapters
  show heading.where(level: 2): it => {
    set text(size: 12pt, weight: "bold")
    // This displays the numbering (e.g., 1.1) followed by the title
    block([#counter(heading).display() #it.body])
    v(0.5em)
  }
  
  body
}
