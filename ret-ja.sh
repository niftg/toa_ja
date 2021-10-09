curl https://toadua.uakci.pl/api -X POST -H "Content-Type: text/json" -d '{"action":"search","query":["scope","ja"],"ordering":"oldest"}' \
| jq '{retrieved:(now|todate)}+.' \
> toa-ja.json
cat toa-ja.json \
| jq -f tabularise.jq \
| sh table2list.sh
