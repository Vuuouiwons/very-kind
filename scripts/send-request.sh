if [[ -z "$PORT" ]]; then
  PORT=8888
fi

echo "Using PORT: $PORT"

sudo apt update && apt install wrk -y

wrk -t4 -c1000 -d10s -H "Host: nginx.local" "http://localhost:${PORT}/"
