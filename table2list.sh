in=$(cat)
for i in csv tsv
do
  echo $in | jq -f to${i}.jq -r > toa-ja.${i}
done
