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
* ```./имяфайла```	(точка, слеш, имя файла) команда для запуска файла
* ```ps -aux | grep "cpu"```	посмотреть запущен ли процесс
    * ```ps```	выводит список процессов
    * ```grep```	ищет в выводе совпадения строк по шаблону
* сочетание ```ctrl+C``` завершает процесс в терминале
* стрелочки на клавиатуре - ```вверх``` и ```вниз``` 	выбирают прошлые введенные команды

## install (Установка)
> выполняем то, что ниже - в терминале:

копируем дистрибутив <br>
```git clone https://github.com/ChervyachokMigo/GoogleShellCloud``` <br>
```cd GoogleShellCloud```

делаем файл установки исполняемым и перезаписываемым <br>
```sudo chmod 777 install.sh```

запускаем установку <br>
```sudo ./install.sh```

когда спросит про mysql оставляем все по дефолту <br>
жмем цифру ```4```	(отвечаем ok)

в конце выходим: <br>
```CTRL+C```

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

запускаем <br>
```sudo ./run.sh```

## Also
Терминалы можно по-закрывать, а вкладку с клаудом оставить открытой, после закрытия вкладки майнит еще минут 30, но если снова открыть, то надо заново запускать.

## Second run (Повторный запуск)
переходим в ранее созданую папку <br>
```cd GoogleShellCloud```

запускаем <br>
```sudo ./run.sh```
