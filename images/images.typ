#import "@preview/fletcher:0.5.2" as fletcher: node, edge, shapes

#let example_diagram = fletcher.diagram(
  node-fill: white,
  spacing: (1em, 1em),
  node-inset: .7em,
  node-stroke: .07em,
  {
    node((0, 0), $"root" = H_2(h_4, h_5)$, name: <root>)
    
    node((rel: (-1.4, 1), to: <root>), $h_4 = H_2(h_0, h_1)$, name: <t10>)
    node((rel: (1.4, 1), to: <root>), $h_5 = H_2(h_2, h_3)$, name: <t11>, fill: yellow)
    
    node((rel: (-0.8, 1), to: <t10>), $h_0 = H_1(x_0)$, name: <t00>, fill: yellow)
    node((rel: (0.8, 1), to: <t10>), $h_1 = H_1(x_1)$, name: <t01>)
    node((rel: (-0.8, 1), to: <t11>), $h_2 = H_1(x_2)$, name: <t02>)
    node((rel: (0.8, 1), to: <t11>), $h_3 = H_1(x_4)$, name: <t03>)

    node((rel: (0, 1), to: <t00>), $x_0$, name: <a0>)
    node((rel: (0, 1), to: <t01>), $x_1$, name: <a1>, fill: yellow)
    node((rel: (0, 1), to: <t02>), $x_2$, name: <a2>)
    node((rel: (0, 1), to: <t03>), $x_3$, name: <a3>)

    edge(<root>, <t10>, stroke: red + 1mm)
    edge(<root>, <t11>)
    
    edge(<t10>, <t00>)
    edge(<t10>, <t01>, stroke: red + 1mm)
    edge(<t11>, <t02>)
    edge(<t11>, <t03>)
    
    edge(<t00>, "d")
    edge(<t01>, "d", stroke: red + 1mm)
    edge(<t02>, "d")
    edge(<t03>, "d")
  }
)

