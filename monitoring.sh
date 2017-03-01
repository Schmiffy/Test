#PREVIOUS_DATE=$(date -d "-1 days" +"%b %e")
DATE=$(date -d"-1hour" +%b\ %d\ %H)
#DATE=$(date +"%b %e")
PROJ=$1
for I in $(cat $PROJ)
do
  grep -E "^${DATE}.*$I" /var/mqsi/syslog/wmb_all.log >> ${I}.txt
  while read line
  do
    date="$(echo ${line%%*\Msg} | cut -c1-16)"
    echo "${date}= BIP${line##*) BIP}" >> ${I}_formatted
  done < ${I}.txt
 rm $I.txt
done
~
~
~
~
~
~
