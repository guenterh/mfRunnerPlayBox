

default in = FLUX_DIR + "bib-one-sentence.literals.formeta";



in |
open-file |
as-lines |
decode-formeta |
morph(FLUX_DIR + "simple.morph.formeta.xml") |
encode-formeta |
write ("stdout");

