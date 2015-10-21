

//default in = "examples/swib14/part-1/03-transforming-data/bib-data.pica.gz";
default in = FLUX_DIR + "bib-one-sentence.pica";
//default in = FLUX_DIR + "bib-one-sentence.literals.formeta";
default out = FLUX_DIR + "bib-one-sentence.literals.formeta";
default outCombine = FLUX_DIR + "bib-one-sentence.literals.Combine.formeta";




in |
open-file |
as-lines |
decode-pica |
//decode-formeta |
morph(FLUX_DIR + "simple.morph.xml") |
encode-formeta |
write (outCombine);

