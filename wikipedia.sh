# Articulo destacado Wikipedia
# Today's featured articles wikipedia
# My github https://github.com/IamJony/

  url="https://es.wikipedia.org/wiki/Wikipedia:Portada"
  curl -s $url > /tmp/.wikipedia_hoy.html
  get_title=$(cat /tmp/.wikipedia_hoy.html | grep 'id="main-tfa"' | pup 'a attr{title}')
  get_link=$(cat /tmp/.wikipedia_hoy.html | grep 'id="main-tfa"' | pup 'a attr{href}')
  echo "$get_title"
  echo "https://es.wikipedia.org$get_link"
  rm /tmp/.wikipedia_hoy.html 2>/dev/null
