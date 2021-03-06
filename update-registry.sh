# Присваивание названий образов переменным
openhab=openhab

# Установка Local registry
docker run -d -p $registryport:5000 --restart always --name registry registry:2

# Присваивание параметров переменным
registryserver=10.21.121.48
registryport=32777
host=$registryserver:$registryport

docker pull openhab/$openhab
docker build -t $host/$openhab .
docker push $host/$openhab
