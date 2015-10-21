
default in = FLUX_DIR + "../../05-counting-patterns/authority-data.pica.gz";
default out = FLUX_DIR + "authority-data.formeta";

in |
open-file |
as-lines |
decode-pica |
morph(FLUX_DIR + "patterns.xml") |
stream-to-triples |
count-triples(countBy="object") |
template("${o} times ${s}") |
//encode-formeta |
write(out);