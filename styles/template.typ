#let project(university: "", department: "", title: "", author: "", date: "", body) = {
  // General Formatting
  set text(font: "Times New Roman", size: 12pt)
  set par(leading: 12pt, justify: true)
  set page(margin: 1in, numbering: "1", number-align: center)

  // Front Page Logic
  page(numbering: none)[
    #set align(center)
    #upper(university)
    #v(2.5cm) // Requirement: 2.5cm from University Name
    #department
    #v(3in)    // Requirement: 3" from Dept
    #text(size: 14pt, weight: "bold")[#upper(title)]
    #v(1.5in)  // Requirement: 1.5" from Title
    #author
    #align(bottom)[#date]
  ]

  // Chapter Formatting (CHAPTER 1 : TITLE)
  show heading.where(level: 1): it => {
    pagebreak()
    set align(center)
    strong[CHAPTER #counter(heading).display() : #upper(it.body)]
    v(1in) // Requirement: 1 inch space before text
  }
  
  body
}
