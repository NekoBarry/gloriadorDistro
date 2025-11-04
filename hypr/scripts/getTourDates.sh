curl 'https://content.mightydragonlords.de/graphql' \
    -H 'Accept-Encoding: gzip, deflate, br' \
    -H 'Content-Type: application/json' \
    -H 'Accept: application/json' \
    -H 'Connection: keep-alive' \
    -H 'Origin: https://web.altairgraphql.dev' \
    --data-binary '{"query":"query GetConcerts($concertsFilter: concerts_filter) {concerts(sort: \"start\", filter: $concertsFilter) { ...ConcertItem }} fragment ConcertItem on concerts { name eventStatus start flyer { id width height } venueName city slug}","variables":{"concertsFilter":{"status":{"_eq":"published"}}}}' \
    --compressed \
    | python -m json.tool