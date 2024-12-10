#import "layout/openadr-style.typ": *
#import "images/images.typ": *

#show: doc => openadr(
  revision: "3.1.0",
  document_type: "Definitions",
  status: "Final Specification",
  document_number: "20231118-2",
  updated: datetime(day: 18, month: 11, year: 2023),
  doc
)

= Introduction
#lorem(50)

#lorem(30)

= Examples
== JSON Code
```json
{
  ...
  "intervals": [
    {
    "ID": 0,
    "payloads": [
      {
        "type": "USAGE",
        "values": [0.10]
      }
    }
  ]
}
```

== Table
The following example shows that a table can even break over multiple pages automatically, if necessary.
In that case, it automatically repeats any headers and footers that might have been defined.

To show this, I need to add some lorem ipsum, though.

#lorem(90)

#{
  show figure: set block(breakable: true)
  figure(
  table(
    columns: 2,
    table.header(
      [*Label*], [*Desciption*]
    ),
    [KWH], [kilowatt-hours (kWh)],
    [GHG], [Greenhouse gas emissions: g/kWh],
    [VOLTS], [volts (V)],
    [AMPS], [Current (A)],
    [CELSIUS], [Temperature (C)],
    [FAHRENHEIT], [Temperature (F)],
    [PERCENT], [%],
    [KW], [kilowatts (kW)],
    [KVAH], [kilovolt-ampere hours (kVAh)],
    [KVARH], [kilovolt-amperes reactive hours (kVARh)],
    [KVA], [kilovolt-amperes (kVA)],
    [KVAR], [kilovolt-amperes reactive (kVAR)],
    [#sym.dots], [#sym.dots],

  ),
  caption: [This is an informative table]
)
}

== Image <sec:image>

#figure(
  image("images/example-image.png"),
  caption: [This schema shows something super interesting]
)

== Dawning schemas with Fletcher
#figure(
  example_diagram,
  caption: [This shows how to use Typst to create native drawings]
)

== References
this is referenced from @openadr-spec. As the formatting of the citation is completly confiurable, we can easily change the exact layout later. We can also easily reference withing the document, for example to @sec:image. All these links are clickable. We may want to make this visible by coloring.

#bibliography("references.yaml")