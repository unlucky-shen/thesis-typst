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
    #set text(weight: "bold")
    #v(1.5in)
    #upper(title)
    #v(1fr)
    #upper(author)
    #v(1fr)
    #upper(department) \
    #upper(university) \
    KUALA LUMPUR
    #v(2cm)
    #date
    #v(0.5in)
  ]

  // Chapters
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    set align(center)
    set text(size: 12pt, weight: "bold")
    block(upper([
      Chapter #counter(heading).display() : #it.body
    ]))
    v(1.5em)
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
