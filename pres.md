---
title:
- \LaTeX\ beamer slides with pandoc 
author:
- Michael Adam <obnox@samba.org>
theme:
- Copenhagen
date:
- October 21, 2025

---

# ways to present slides



::: incremental
- "standard" (WYSIWYG) options:
    - MS powerpoint
    - google slides
    - libreoffice impress
    - apple/macOS keynote 
    - etc ...
- Alternative:
    - special PDF  files with the PDF-viewer in slideshow mode

:::


# disadvantages of WYSIWYG

::: incremental

- deceiving sense of simplicity
- pseudo-intuitive GUIs
- in reality: little control over result
- not plain text
- $\Rightarrow$ hard to put into version control (`git`)

:::

# The power of plain text (in general)

::: incremental

- full control over result
- version control (`git`)

:::




# advantages of PDFs for slides:

::: incremental
- no special software needed for presenting
- presenting with standard PDF viewer 
- $\Rightarrow$ avoid WYSIWYG!

:::

# More advantages of PDFs for slides:

::: incremental
- share read-only
- There are ways to produce from human-readable input / plain text!
- $\Rightarrow$ avoid WYSIWYG!

:::

# how to produce PDF  slide decks

- export from WYSIWYG tool
- render \LaTeX\ beamer input
- ...

# What is \LaTeX\ ?

::: incremental

- \LaTeX\ is a document typesetting system for creating professional (often scientifcic) documents.

- It is rendered (e. g. to PDF) from a plain-text markup input file:
    - `pdflatex doc.tex` $\Rightarrow$ `dox.pdf` 

Even easier with markdown source via preprocessors:
    - wiki2beamer
    - pandoc


Writing \LaTeX\  documents is a bit like programming.


The plain text nature of the input allows to add it to version control (like `git`).

:::

# how does \LaTeX\ help with creating slideshow PDFs?

