---
## Front matter
lang: ru-RU
title: Лабораторная работа №1
subtitle: Подготовка рабочего пространства 
author:
  - Абдуллина Ляйсан Раисовна
institute:
  - Российский университет дружбы народов, Москва, Россия
date: 09 февраля 2024

babel-lang: russian
babel-otherlangs: english
mainfont: Arial
monofont: Courier New
fontsize: 12pt

## Formatting pdf
toc: false
toc-title: Содержание
slide_level: 2
aspectratio: 169
section-titles: true
theme: metropolis
header-includes:
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
---


# Цель работы

Настроить рабочее пространство для лабораторной работы. Изучить систему контроля версий Git и язык разметки Markdown.

# Задание

Склонировать репозиторий. При помощи Make сконвертировать из файла .md файлы отчетов в форматах docx и pdf.

# Выполнение лабораторной работы

Для начала мы скачали ресурсы pandoc и  make через PowerShell, а также установили LaTex. (Рис. 1-3).

![Установка Pandoc](image/2.png){#fig:001 width=70%}

# Выполнение лабораторной работы

![Установка Make](image/1.png){#fig:002 width=70%}

# Выполнение лабораторной работы


![Установка LaTex](image/12.png){#fig:012 width=70%}


# Создание репозитория курса на основе шаблона
Репозиторий на основе шаблона можно создать либо вручную, через web-интерфейс, либо с помощью утилит gh. Мы проделовали с помощью утилит gh. (Рис. 4-7).

Например, для 2023–2024 учебного года и предмета «Математическое моделирование» (аббревиатура предмета — mathmod) создание репозитория примет следующий вид:

mkdir -p ~/work/study/2023-2024/"Математическое моделирование"

cd ~/work/study/2023-2024/"Математическое моделирование"

gh repo create study_2023-2024_mathmod --template=yamadharma course-directory-student-template --public

git clone --recursive git@github.com:andullina LR/study_2023-2024_mathmod.git mathmod

# Создание репозитория курса на основе шаблона

![Создание и клонирование репозитория](image/4.png){#fig:003 width=70%}

# Создание репозитория курса на основе шаблона

![Успешное создание репозитория на гитхабе](image/3.png){#fig:004 width=70%}


# Создание репозитория курса на основе шаблона

![Успешное клонирование элементов репозитория на гитхабе](image/5.png){#fig:005 width=70%}


# Создание репозитория курса на основе шаблона

![Успешное клонирование элементов репозитория на ПК](image/6.png){#fig:006 width=70%}

# Настройка каталога курса

Перешли в каталог курса:

cd ~/work/study/2023-2024/"Математическое моделирование"/mathmod

Удалили лишние файлы:

rm package.json

Зашли в msys2 и прописали следующие команды(Рис. 8-9):

echo mathmod > COURSE

make prepare

# Настройка каталога курса


![Использование msys2 для выполнения команды make prepare](image/7.png){#fig:007 width=70%}

# Настройка каталога курса


![Успешное добавление элементов labs на ПК](image/8.png){#fig:008 width=70%}

Таким образом добавили папку labs со всем ее содержимым. Далее запушили все изменения на гитхаб (Рис. 10-12).

Отправляем файлы на сервер:

git add .

git commit -am 'feat(main): make course structure'

git push

# Настройка каталога курса

![Добавление информации на гитхаб](image/10.png){#fig:010 width=70%}

# Настройка каталога курса


![Добавление информации на гитхаб](image/11.png){#fig:011 width=70%}

# Настройка каталога курса


![Успешное добавление элементов labs в гитхаб](image/9.png){#fig:009 width=70%}

# Конвертирование из Markdown

Осталось лишь конвертировать наш отчет  в форматы pdf и docx с помощью команд (Рис. 13-16):

pandoc report.md -o report.<нужный формат> --pdf-engine=lualatex -V mainfont="Times New Roman" -V sansfont="DejaVu Sans" -V monofont="DejaVu Sans Mono"

![Конвертация через PowerShell](image/14.png){#fig:015 width=70%}

# Конвертирование из Markdown


![Успешное конвертирование](image/15.png){#fig:016 width=70%}

# Конвертирование из Markdown


![Успешное конвертирование в docx формат](image/16.png){#fig:017 width=70%}

# Конвертирование из Markdown


![Успешное конвертирование в pdf](image/17.png){#fig:018 width=70%}


# Выводы

Мы смогли настроить рабочее пространство для лабораторной работы. Изучили систему контроля версий Git и язык разметки Markdown, атакже выполнили поставленне задачи.


