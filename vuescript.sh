#!/bin/bash

#chmod a+x script.sh
#./script.sh

# cidades=(saolourenco, jaicos, jurema, anisiodeabreu, fartura, amarante, saojoaodacanabrava, palmeirais)
cidades=(grm jaicos, amarante, saojoaodacanabrava)
# cidades=(grm)
for cidade in ${cidades[*]}
do
  cd $cidade
  git pull origin master
  #yarn
  #composer update
  npm run prod
  chown $USER:$USER -R public/vue
  php artisan view:clear
  cd ..
done
