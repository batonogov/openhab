# Присваивание названий образов переменным
openhab=openhab

# Установка Local registry
docker run -d -p $registryport:5000 --restart always --name registry registry:2

# Присваивание параметров переменным
registryserver=10.21.121.48
registryport=32777
host=$registryserver:$registryport

docker pull batonogov/openhab
docker tag batonogov/openhab $host/$openhab
docker push $host/$openhab
