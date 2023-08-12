query=$1

output=$(echo -n "$query" | base64 )

echo -n $output | pbcopy