#let openadr = (
  revision: "dev",
  document_type: "Fill in document type",
  status: "development version",
  document_number: "Fill in Document number",
  updated: datetime.today(),
  doc
) => {
  show link: set text(fill: blue.darken(30%))
  set heading(numbering: "1.")
  set raw(theme: "dark.tmTheme")
  
  
  show raw: it => block(
    width: 100%,
    fill: rgb("#1d2433"),
    inset: 8pt,
    radius: 5pt,
    text(fill: rgb("#a2aabc"), it
    )
  )

  show outline.entry.where(level: 1): it => {
    strong(it)
  }
  
  set page(
    paper: "a4",
    footer: [Copyright © OpenADR Alliance (#datetime.today().year()). All Rights Reserved],
  )
  set text(
    font: "DejaVu Sans",
    size: 9pt,
  )

 
    grid(
      columns: 1fr,
      align: right,
      gutter: 30mm,
      image("openadr.jpg", width: 100mm),
      text(size: 26pt, weight: "bold", [
        OpenADR \
        OpenADR #revision #document_type]),
      text(size: 13pt)[
        Updated #updated.display("[month]/[day]/[year]") \
        Revision Number: #revision \
        Document Status: #strong(status) \
        Document Number: #document_number
      ],
     
      table(
        columns: (1fr, 1fr, 1fr),
        align: left,
        stroke: black,
        table.header(
          [Contact:], [Editors:], [Technical Director OpenADR Alliance:]
        ),
        [
          OpenADR Alliance \ 
          111 Deerwood Road, Suite 200 \ 
          San Ramon, CA 94583 \ 
          USA \
          #link("mailto:info@openadr.org") 
        ],
        [
          Frank Sandoval - Pajarito Technologies LLC
          
          Bruce Nordman – LBNL
          
          Other OpenADR Alliance Members
        ],
        [
          Rolf Bienert
          
          #link("mailto:rolf@openadr.org")
        ]
      ),
      grid.cell(align: left)[Please send general questions and comments about the specification to #link("mailto:comments@openadr.org")]
  )

  pagebreak()

  set page(
    header: [OpenADR #document_type, Revision #revision],
  )

  outline(indent: true)
  pagebreak()

  counter(page).update(1)
  set page(
    header: grid(
      columns: (1fr, 1fr),
      [OpenADR #document_type, Revision #revision],
      [#context{counter(page).display("- 1 -")}]
    ),
  )
  
  doc
}