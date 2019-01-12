#!/bin/sh

echo "CREATE DATABASE IF NOT EXISTS \`test_myapp\` ;" | "${mysql[@]}"
echo "GRANT ALL ON \`test_myapp\`.* TO '${MYSQL_USER}'@'%' ;" | "${mysql[@]}"
echo 'FLUSH PRIVILEGES ;' | "${mysql[@]}"
