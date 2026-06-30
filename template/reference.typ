#import "@preview/subpar:0.2.2" //subpar package

// example subfigure:

#subpar.grid(
  figure(image(), caption: [
    
  ]), <a>,
  figure(image(), caption: [
    
  ]), <b>,
  columns: (1fr, 1fr),
  rows: 2,
  caption: [],
  label: <full>,
)

https://forum.typst.app/t/how-to-customize-figure-captions-with-subpar-in-0-12/984/6

Position of caption in (sub)figure:
https://github.com/typst/typst/issues/246#issuecomment-1910046540
