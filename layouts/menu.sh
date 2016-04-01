LAYOUT=layouts/layout.dhtml
LINK=$(echo $forig|sed 's:\([^/]*\)/.*:\u\1:')
for i in $(find -maxdepth 2 -mindepth 2 -name 'index.*' -printf '%P\n'\
  |grep -v '_\|.sh$'|sort|sed 's|\.[a-z]*|\.|'); do
  ITEM+="<a href=/${i}html$([[ $forig == *${i%%/*}* ]] && echo \ id=here)>\
`echo ${i%%/*}|sed 's/.*/\u&/'`</a>
"; done
