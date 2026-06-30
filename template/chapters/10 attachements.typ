#import "@preview/subpar:0.2.2"
#import "@preview/aio-studi-and-thesis:0.1.2": todo, txt-todo
#let attachements() = [
  #let my-subfig(..args) = subpar.grid(
  align:top+start,
  numbering-sub: "A",
  numbering-sub-ref: (..nums) => numbering("S1A", ..nums),
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
    
    // subcaption on top
     it
  },
 ..args
) 

// ------change figure numbering-------
// https://forum.typst.app/t/how-to-change-numbering-in-appendix/1716/7
// forum.typst.app/t/how-to-change-numbering-format-of-equations-figures-and-tables-only-in-supplement/5220/2

#set figure(numbering: (..ns) => numbering("S1", ..ns))
#set figure(outlined: false)
#counter(figure.where(kind: image)).update(0)

#let HTH = $Delta"HTH"$

#heading([Supplementary figures], depth: 2, numbering: none)


 #my-subfig(columns:2, rows:2,
 figure(image("../pictures/localization/empty/empty phase.png"), 
 caption: []),<emptyphase>,
 figure(image("../pictures/localization/empty/empty DAPI.png"),
 caption: []),
 figure(image("../pictures/localization/empty/empty GFP.png"),
 caption: []),
 figure(image("../pictures/localization/empty/empty FM.png"),
 caption: []),
 figure(image("../pictures/localization/empty/empty overlay FM.png"),
 caption: []),
 caption: [
 *Microscopy analysis of _E. coli_ empty vector.*
 *A:* Phase contrast shows overall cell morphology. *B:* DAPI-stain highlights _E. coli_ nucleoid. *C:* GFP-signal shows nothing at the same LUT-settings as for  and . *D:* FM 4-64 stain visualizes cell membrane. *E:* Overlay of FM 4-64 stain, DAPI-stain and GFP-signal. All images show the same field of view. Images are contrast-enhanced. Scale: 5~$upright(mu m)$. Images are representative of at least three biological replicates.],//total caption
 label: <localizeempty>,
  // supplement: "Sup. Figure", kind: "Sup. Figure",
 )


#heading([Availability of Data], numbering: none, depth: 2)
// direct download link generator for google drive files:
// https://sites.google.com/site/gdocs2direct
*The original data output from the processings, summarized in an Excel-table, is provided
on the attached CD in the print version and through* #link("https://www.youtube.com/watch?v=dQw4w9WgXcQ&list=RDdQw4w9WgXcQ&start_radio=1",[this link]) *in the PDF.*
]