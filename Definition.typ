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
#figure(
```json
{
  "intervals": [
    {
    "ID": 0,
    "payloads": [
      {
        "type": "USAGE",
        "values": [0.10]
      }]
    },
  ]
}
```,
caption: [And automatic numbering]
)

== Table
The following example shows that a table can even break over multiple pages automatically, if necessary.
In that case, it automatically repeats any headers and footers that might have been defined.

To show this, I need to add some lorem ipsum, though.

#lorem(90)

#figure(
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

== VEN enrollment

OpenADR relies on an out-of-band process by which Business Logic (BL)
entities (e.g. utilities) and VENs/Customer Logic agree on the specifics
of a 'program' or 'tariff'. A 'program description' may be provided by
the BL entity that specifies event structure, reporting requirements,
and other details of a program or tariff. In general, VENs must enroll
with a BL entity to receive security credentials. These credentials are
used by a VTN to Authenticate and Authorize VEN requests. A VEN on a
tariff and some programs may not need to be authenticated to the VTN.

Automatic real-time sync 

A BL entity provides a web flow or other mechanism to onboard VENs into
(non-tariff) programs. This commonly involves action by the Customer. A
VTN may choose to make some programs freely available, such as those
that are for a tariff and, for example, only distribute prices and
similar information.

Every electric utility customer is on a tariff. This is often a default
or assigned by the utility based on customer characteristics. This
assignment or selection of a tariff is the out-of-band process for a
customer that will then want to receive the prices for that tariff.
Tariffs also have a program description as other demand response
coordination mechanisms have, though it is usually simpler.

= General Usage

== VTN provided fields

On object creation of programs, events, reports, subscriptions, vens,
and ven resources, client representations provided to the VTN on POST
requests are incomplete, as clients do not have the context to provide
accurate or meaningful values for the following attributes:

- `objectID`
- `createdDataTime`
- `modificationDateTime`
- `objectType`

A VTN SHALL populate object representations with the above fields on object creation.


== Required and optional properties

The specification is purposefully sparse of required fields so that clients may create and modify objects by creating requests with minimal effort.

If a representation sent to the VTN lacks a required property, a VTN SHALL return a 400, Bad Request response. A resource is not created or updated. Required fields do not have default values.

A representation provided in a write request (PUT, POST) to the VTN may
exclude optional fields. The VTN may create a corresponding object with
such excluded fields set to default values.

A VTN may provide representations of an object that do not include
optional properties that have their default value.

This is a short presentation.

Optional fields are generally nullable and have default values of null,
where no assumption can be made on what reasonable a default value might
be.

If a representation includes a property that is not defined by an
object's schema, a VTN may create a corresponding resource without the
additional property, effectively ignoring the additional content.

== References
this is referenced from @openadr-spec. As the formatting of the citation is completly confiurable, we can easily change the exact layout later. We can also easily reference withing the document, for example to @sec:image. All these links are clickable. We may want to make this visible by coloring.

#bibliography("references.yaml")