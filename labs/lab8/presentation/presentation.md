---
## Front matter
lang: ru-RU
title: Лабораторная работа №8
subtitle: 
author:
  - Абдуллина Ляйсан Раисовна
institute:
  - Российский университет дружбы народов, Москва, Россия
date: 20 марта 2024

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

Решить задачу о модели конкуренции двух фирм..

# Задачи

1. Постройте графики изменения оборотных средств фирмы 1 и фирмы 2 без учета постоянных издержек и с веденной нормировкой для случая 1.
2. Постройте графики изменения оборотных средств фирмы 1 и фирмы 2 без учета постоянных издержек и с веденной нормировкой для случая 2


# Условие варианта 39

Для обоих случаев рассмотрим задачу со следующими начальными условиями и параметрами:

$$ M_0^1=3.3 \: M_0^2=2.3 $$
$$ p_{cr}=22 \: N=33 \: q=1 $$
$$ \tau_1=22 \: \tau_2=11 $$
$$ \widetilde{p}_1=6.6 \: \widetilde{p}_2=11.1 $$

# Условие варианта 39  1 случай


$$\frac{dM_1}{d\Theta} = M_1 - \frac{b}{c_1}M_1 M_2 - \frac{a1}{c1} M_1^2 $$

$$ \frac{dM_2}{d\Theta} = \frac{c_2}{c_1} M_2 - \frac{b}{c_1} M_1 M_2 - \frac{a_2}{c_1} M_2^2$$
 
# Условие варианта 39  2 случай

 
$$\frac{dM_1}{d\Theta} = M_1 - (\frac{b}{c_1} + 0.0002)M_1 M_2 - \frac{a1}{c1} M_1^2 $$

$$ \frac{dM_2}{d\Theta} = \frac{c_2}{c_1} M_2 - (\frac{b}{c_1}+0,00093) M_1 M_2 - \frac{a_2}{c_1} M_2^2$$


# Julia

Построим численное решение задачи:

Получим следующие графики (Рис.1-2):

![График конкуренции двух фирм для первого случая](image/lab08_1.png){#fig:001 width=70%}

# Julia

![График конкуренции двух фирм для второго случая](image/lab08_2.png){#fig:002 width=70%}


# OpenModelica

![График конкуренции двух фирм для первого случая](image/1.png){#fig:003 width=70%}

# OpenModelica

![График конкуренции двух фирм для второго случая](image/2.png){#fig:004 width=70%}


# Анализ и сравнение результатов

В ходе выполнения лабораторной работы были построены графики при заданных начальных условиях на языках Julia и с помощью ПО Open Modelica. Результаты графиков совпадают (не учитывая  разности в масштабах).

# Выводы

Мы решили задачу о модели конкуренции двух фирм и выполнили все поставленне перед нами задачи.

# Список литературы

1. Документация по Julia: https://docs.julialang.org/en/v1/

2. Документация по OpenModelica: https://openmodelica.org/

3. Решение дифференциальных уравнений: https://www.wolframalpha.com/.


