# Google Cloud Shell - Cpu-Miner Install - Manual - YENTEN 2CH POOL

## First Step (Первый шаг - регистрация в гугле)

1. Регаемся в гугле
2. Идем на https://shell.cloud.google.com/


## Terminal hint (подсказка)

> небольшой минигайд по терминалу:

* ```cd```	перейти в папку
* ```cd ..``` 	(две точки) перейти назад
* ```cd Goo``` ```нажать таб``` 	автоматически дополнит строку если папка существует
* ```ls``` 	посмотреть папки в текущей директории
* ```cd ~```	(тильда) перейдет в корень пользовательской директории
* ```git clone ссылка```	копирует содержимое github
* ```nano```	текстовый редактор
* ```chmod```	меняет права доступа к файлу, 777 - полный доступ
* ```sudo```	запускает следующую команду с повышенными привилегиями
* ```sudo rm -rf имя_папки``` удалить папку со всеми вложениями
* ```./имяфайла```	(точка, слеш, имя файла) команда для запуска файла
* ```ps -aux | grep "cpu"```	посмотреть запущен ли процесс
    * ```ps```	выводит список процессов
    * ```grep```	ищет в выводе совпадения строк по шаблону
* сочетание ```ctrl+C``` завершает процесс в терминале
* стрелочки на клавиатуре - ```вверх``` и ```вниз``` 	выбирают прошлые введенные команды

## install (Установка)
> выполняем то, что ниже - в терминале:

обновим систему <br>
```sudo apt update```

копируем дистрибутив <br>
```git clone https://github.com/ChervyachokMigo/GoogleShellCloud``` <br>

переходим в папку которая скачалась <br>
```cd GoogleShellCloud```

делаем файл установки исполняемым и перезаписываемым <br>
```sudo chmod 777 install.sh```

запускаем установку <br>
```sudo ./install.sh```

если спросит про mysql оставляем все по дефолту <br>
жмем цифру ```4```	(отвечаем ok)

ждем окончания операции <br>

## run (Запуск)
делаем файл запуска исполняемым и перезаписываемым <br>
```sudo chmod 777 run.sh```

открываем run.sh <br>
```sudo nano run.sh```

заменяем где написано **введите_свой_кошелек** на свой YENTEN кошелек <br>
> курсор для редактирования двигать ```стрелками```, подвести к надписи ВВЕДИТЕ_СВОЙ КОШЕЛЕК, нажать ```Delete``` пока не сотрётся, вставить свой ```CTRL+V```

сохраняем: <br>
```ctrl+X``` <br>
```Y``` <br>
```enter``` <br>

запускаем майнер <br>
```./run.sh```

## Also
Вкладка будет работать минут 30, потом надо будет перезапускать, зато бесплатно. <br>
Квота 50 часов в неделю.

## Second run (Повторный запуск)

1. переходим в ранее созданую папку <br>
```cd GoogleShellCloud```

2. запускаем майнер <br>
```./run.sh```

> если пишет illegal instruction или другая ошибка, то пишем

3.1. обновим систему <br>
```sudo apt update```

3.2. переустанавливаем <br>
```sudo ./install.sh``` 

> если спросит про mysql оставляем все по дефолту <br>
3.2.1. жмем цифру ```4```	(отвечаем ok)

3.3. ждем окончания операции <br>

3.4. переходиим к пункту ```2.```

> если пишет include^ <curl/curl.h> Compilation terminated

4.1. установим эту библиотеку в ручную <br>
```sudo apt install curl```

4.2. переходим к пункту ```3.2.```
