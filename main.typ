// Import the "project" function from the styles folder
#import "styles/template.typ": project

// Apply the template
#show: project.with(
  university: "Universiti Malaya",
  department: "Faculty of Computer Science & Information Technology",
  title: "PUT YOUR TITLE HERE VRO...",
  author: "Taufiq Haikal",
  date: "2026",
)

// Include chapter files
#include "chapters/intro.typ"
#include "chapters/literature.typ"
