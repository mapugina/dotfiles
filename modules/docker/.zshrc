if [ -x "$(command -v docker)" ]; then
    plugins+=(docker docker-compose)
fi