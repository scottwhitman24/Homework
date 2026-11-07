#import "@preview/ctheorems:2.0.0": *
#import thm-themes.ams: *
#import thm-state: thm-restate
#import "symb.typ": *
#let prob = thm.with(
  supplement: "Problem",
  counter: "Theorem",
  base-level: 1,
  title-fmt: x => smallcaps(strong(x)),
  base: none,
  fmt: thm => {
    [*#thm.supplement~#thm.number.* #thm.body]
  }
)

#let sol = proof.with(
  supplement: "Solution",
  title-fmt: x => smallcaps(strong(x)),
)

// #let makeeven = #context[]

#let conf(title-text:[],doc) = {
show: thm-rules        // Must include!
show: thm-rules.with(qed-symbol: $square$)

set enum(numbering: "(a)")
set page(margin: 1.75in)
set par(leading: 0.55em, spacing: 0.55em, first-line-indent: 1.8em, justify: true)
set text(font: "New Computer Modern")
set heading(numbering: "Problem 1.")
// #show raw: set text(font: "New Computer Modern Mono")
show math.equation: set text(weight: "regular")
show heading: set block(above: 1.4em, below: 1em)
show title: set text(size:17pt)
show title: set align(center)


set page(
  header: context [Scott Whitman],
  numbering: "1",
)

title[
  #title-text
]

doc
}
