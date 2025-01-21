#!/usr/bin/bash

# set -evx

# Blow away the README and rebuild
touch README.md

# readme boilerplate
echo "# ds2002-directory" > README.md
echo " " >> README.md
echo "A people directory for DS2002" >> README.md
echo " " >> README.md

# fetch name of each person and set up tree
for dir in */; do
    if [ -d "$dir" ]; then
        NAME=`head -1 $dir/README.md | sed -e 's/#//g;'`
        echo "- [$NAME](people/$dir)" >> README.md
    fi
done

# move to base dir
mv README.md ../README.md

exit 0