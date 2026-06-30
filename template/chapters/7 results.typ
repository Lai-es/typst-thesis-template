#import "../lib.typ":*
#import "@preview/subpar:0.2.2"

#let results() = [
  
  // nice subfigures
#let my-subfig(..args) = subpar.grid(
  align:top+start,
  numbering-sub: "A",
  numbering-sub-ref: (..nums) => numbering("1A", ..nums),
  show-sub-caption: (num, it) => {
    set text(size: 1.5em) //big numeration
    // subcaption numbering
    text(weight: "bold", num)
    // it.separator
    // subcaption body
    it.body
  },
  show-sub: it => {
    set figure.caption(position: top)
    it
  },
 ..args
) 

== Lorem ipsum <lorem>
#lorem(20) @sdfas #lorem(20) @Gratani2023 #lorem(20).

@sdfas #lorem(20)

@sdfas #lorem(20) @sdfas. #lorem(20)

Finally, @sdfas #lorem(20) @Gratani2023), and therefore we need more money. 


]