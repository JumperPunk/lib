function sprng() {
  typeset -r URL='http://sprunge.us'

  if [ -z $1 ] ; then
          curl -F 'sprunge=<-' $URL 2&>/dev/null | xclip
  else
          curl $URL/$1 2&>/dev/null
  fi
}
