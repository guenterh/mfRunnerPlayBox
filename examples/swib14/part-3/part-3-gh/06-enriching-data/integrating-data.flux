
//default inWiki = FLUX_DIR + "../../06-enriching-data/wiki-persons.foma.gz";
default inWiki = FLUX_DIR + "wiki-persons.foma.gh";
default inAuthority = FLUX_DIR + "../../06-enriching-data/authority-persons.pica.gz";
default out = FLUX_DIR + "authority-plus-wiki.persons.formeta.gz";




inWiki |
open-file |
as-lines |
decode-formeta |
morph(FLUX_DIR + "prepare-wikidata.gh.xml") |
stream-to-triples (redirect="true") |
@X;


inAuthority |
open-file |
as-lines |
decode-pica |
stream-to-triples |
@X;

@X |
wait-for-inputs ("2") |
sort-triples |
collect-triples |
encode-formeta (style="multiline") |
write (out);