
//===========Exporting!!
// PDF version 1.7 and standard A-3b for attachments
// to word https://www.ilovepdf.com/de/pdf_zu_word
// pandoc online for single files
//==========================imports======================

#import "@preview/clean-ut:0.1.0": *

#show: template //imports the styling

#include "chapters/1 title page.typ"

#include "chapters/2 declaration.typ"

#include "chapters/3 abstract.typ"

#include "chapters/4 acknowledgements.typ"

#show-outlines() //shows table of contents, list of figures, list of tables and list of abbreviations

#include "chapters/5 abbreviations.typ"

#show-header() //shows the header from now on

= #text(fill: red)[How to use this template and general typst tips] <tips>

- make label: \<label_name>, mostly used to tag figures (special syntax and headings, see this heading). IMPORTANT: text can not be labeled (or need some workaround, check the forum if you want this)

- reference label: works for labels \@label_name and publication identifiers \@publication_name Heading reference: @tips, Publication reference: @Abida2021 (Publication automatically get added to the two-column bibliography after the discussion)

- Lists can be made by adding a \- before a new text line, enumerated lists can be made by adding a \+ likewise 

- Making figures: see next pages for examples 

- Making tables: if you find it too tedious to input the weird table syntax and want to upload from excel, word or some other format; there are online converters: https://www.latex-tables.com/


#todo("you should delete this chapter")

#include "chapters/6 introduction.typ"

#include "chapters/7 materials and methods.typ"

#include "chapters/8 results.typ"

#include "chapters/9 summary.typ"

#include "chapters/10 bibliography.typ"

#include "chapters/11 attachements.typ"


