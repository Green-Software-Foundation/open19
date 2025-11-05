asciidoctor-pdf -a pdf-theme=open19-draft -a pdf-themesdir=../book -a doctype=book -a standalone -a private -o system_architecture_air.pdf system_architecture.adoc
asciidoctor-pdf -a pdf-theme=open19-draft -a pdf-themesdir=../book -a doctype=book -a standalone -a private -a liquid -o system_architecture_liquid.pdf system_architecture.adoc
asciidoctor-pdf -a pdf-theme=open19-public -a pdf-themesdir=../book -a doctype=book -a standalone -a liquid -o system_architecture_public.pdf system_architecture.adoc
