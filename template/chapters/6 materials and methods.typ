#import "../lib.typ": *

#let methods() = [

#let upmu = [~$upright(mu) "l"$]
== Materials
#[//show only used in this section, see https://github.com/typst/typst/issues/420
#show figure.where(kind: table): set block(breakable: true)

#figure(
  table(columns: 2,
  table.header([Chemicals],[Provider], repeat: true),
  // inhalt
  [ABC],[Fluka Analytical],
  [Acetic acid],[Carl Roth],
  [Acetone],[Sigma-Aldrich],
  [ACN],[Merck],
  // [],[],
), caption: [List of Chemicals]
)
]
#figure(
  table(columns: 2,  align: horizon,
  table.header([Solution],[Composition]),
  //inhalt
  [Alkylation buffer],[550 mM IAA, 50 mM ABC],
  table.hline(),
  [BXT buffer],[1 mM EDTA, 0.1 M Tris-HCl, \ 0.15 M NaCl, 50 mM biotin, pH 8.0],
), caption: [List of Solutions],
)

#figure(table(columns: 2,
  table.header([Enzyme],[Provider]),
  [Chymotrypsin],[Promega],
  [DpnI],[New England Biolabs],
  [LysC],[Santa Cruz Biotechnology],
  [Q5-Polymerase],[New England Biolabs],
  [Trypsin],[Promega],
  [T4-Ligase],[New England Biolabs],
),caption: [List of Enzymes])

#figure(
  table(columns: 2,
table.header([Primer],[Sequence]),
[seq-fwd],[#upper("ctgtttctccatacccgtt")],
[seq-rev],[#upper("ctcatccgccaaaacag
")],
table.hline(),

), caption: [List of Primers, 5'\-3' orientation]
)

#figure(
  table(columns: 2,
  table.header([Software],[Provider]),
  //inhalt
  [AlphaFold 3 @Abramson2024],[Google DeepMind],
  [BioVenn @Hulsen2008],[Tim Hulsen],
  [Excel],[Microsoft],
), caption: [List of Softwares]) 

#[
#show figure.where(kind: table): set block(breakable: true)


#figure(
  table(columns: 2,
  table.header([Instrument],[Provider]),
  //inhalt
  [Biofuge pico],[Heraeus Instruments ],
  [Branson Sonifier 250],[G. Heinemann],
  [Concentrator plus],[Eppendorf],
), caption: [List of Instruments])
]


== Methods
#set heading(outlined: false)

//describe each method

#heading([DNA Extraction from agarose gels], level: 3, numbering: none)
After excision of the desired DNA bands, gel extraction was performed using the #link("https://www.mn-net.com/media/pdf/02/1a/74/Instruction-NucleoSpin-Gel-and-PCR-Clean-up.pdf",[NucleoSpin#sym.trademark.registered gel and PCR clean-up kit]), protocol 5.2 (centrifugations were all done at 11,000~g):\
Gel pieces were resuspended in 300#upmu NTI buffer, sample tubes were incubated at 50~°C until the gel piece was completely dissolved. Samples were loaded onto NucleoSpin columns and were centrifuged for 30 s. Columns were washed two times with 600#upmu NT3 buffer by centrifugation for 30 s. The columns were now dried by centrifugation for 1 min, before they were transferred to new tubes and two times eluted with 30#upmu water (heated to 65 °C), which was incubating 3 mins in the column before centrifugation. The volume of the samples was reduced by vacuum centrifugation for 15 mins.
Plasmid DNA concentration was directly measured by the NanoDrop spectrophotometer.

]