

default in = FLUX_DIR + "../../04-counting-distinct-values/bib-data.pica.gz";
default out = FLUX_DIR + "outtest.formeta.2.gz";

in |
open-file |
as-lines |
decode-pica |
morph(FLUX_DIR + "values.xml") |
stream-to-triples |
count-triples(countBy="object") |
//template("${o} times ${s}") |
//encode-pica |
write(out);