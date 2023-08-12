query=$1

output=$(echo -n "$query" | base64 --decode )

echo -n $output | pbcopy