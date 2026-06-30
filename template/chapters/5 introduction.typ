#import "../lib.typ": * 
#import "@preview/subpar:0.2.2"

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

#let introduction() = [
 

=== Peptide fragmentation

For amino acid sequencing, single peptides have to be isolated from the MS1-spectrum and have to be fragmented in single amino acids. These fragmented residues are further measured in a MS2 or MS/MS scan. A high energy collisional dissociation unit (HCD) performs fragmentation by colliding the peptide with a inert gas like nitrogen, helium or argon, fragmenting the peptide. There are three common possible fragmentation sites on the peptide bond.

#my-subfig(columns: (1fr, 3fr),
figure(image("../pictures/introduction/fragments 1.png", width: 90%), caption: []),
figure(image("../pictures/introduction/fragments 2.png"), caption: []), label: <sdfas>,
caption: caption[Fragmentation ions of the peptide bond][*A:* Possible fragmentation ions of a peptide bond. Fragmentation sites are marked red. *B:* b- and y-ion series of a peptide fragmentation. Figure is adapted from @Steen2004.])

Of the possible ions, b- and y-ion fragments are the most commonly found. Piecing together the ions and comparing the mass differences between the nth, (n-1)th and the (n+1)th ion of a series allows for assignment of amino acids with known masses @Steen2004.



#pagebreak()

= Aims of the thesis

]