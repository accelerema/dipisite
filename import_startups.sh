#!/bin/bash

# https://api.github.com/repos/betagouv/beta.gouv.fr/contents/content/_startups/1-eleve-1-stage.md
rm -f tmp/startups.json
wget --directory-prefix tmp https://beta.gouv.fr/api/v2.6/startups.json

rm -r _startups/*.md
for startup in `jq '.data[]  | select(.relationships.incubator[].id=="accelerema") | .id' tmp/startups.json`
do
    echo $startup
    wget "https://raw.githubusercontent.com/betagouv/beta.gouv.fr/master/content/_startups/${startup//\"/}.md" --directory-prefix _startups
done;

#echo $1
# grep -rnw '/path/to/somewhere/' -e 'pattern'
# incubator: accelerema