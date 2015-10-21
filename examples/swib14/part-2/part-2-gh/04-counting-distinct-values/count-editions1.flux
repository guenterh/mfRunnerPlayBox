

default in = FLUX_DIR + "../../04-counting-distinct-values/bib-data.pica.gz";
default out = FLUX_DIR + "outtest.formeta.3.gz";

in |
open-file |
as-lines |
decode-pica |
morph(FLUX_DIR + "values.xml") |
encode-formeta |
write(out);