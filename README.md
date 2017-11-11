Изменения по сравнению с master:


```JavaScript
let t = dateFns.format(new Date(),'DD-MM-YYYY--HH-mm-ss');  

(x=>x.closeSync(x.openSync(`/data/${t}`, 'w')))(require('fs'));

```

Для докера: 

имеется в виду, что контейнер будет держать собственно приложение в /app

а мутабельная часть с файлами - в /data

тогда если создать его

https://hub.docker.com/r/igossoudarev/timelogger/

```sh

docker run -p 4321:4321 -v "$PWD":/data -itd igossoudarev/timelogger

```

то текущая папка станет для контейнера папкой /data

и он будет писать файлы в неё, после чего их можно будет увидеть уже при остановленном контейнере.




