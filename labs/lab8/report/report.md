---
## Front matter
title: "Лабораторная работа №8"
subtitle: "Модель конкуренции двух фирм. Вариант 39"
author: "Абдуллина Ляйсан Раисовна, НПИбд-01-21"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric

## Pandoc-crossref LaTeX customization
figureTitle: "Скриншот"
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---


# Цель работы

Решить задачу о модели конкуренции двух фирм..

# Задачи

1. Постройте графики изменения оборотных средств фирмы 1 и фирмы 2 без учета постоянных издержек и с веденной нормировкой для случая 1.

2. Постройте графики изменения оборотных средств фирмы 1 и фирмы 2 без учета постоянных издержек и с веденной нормировкой для случая 2

# Теоретическое введение

Для построения модели конкуренции хотя бы двух фирм необходимо рассмотреть модель одной фирмы. Вначале рассмотрим модель фирмы, производящей продукт долговременного пользования, когда цена его определяется балансом спроса и предложения. Примем, что этот продукт занимает определенную нишу рынка и конкуренты в ней отсутствуют.
Обозначим:
- N – число потребителей производимого продукта.
- S – доходы потребителей данного продукта. Считаем, что доходы всех потребителей одинаковы. Это предположение справедливо, если речь идет об одной рыночной нише, т.е. производимый продукт ориентирован на определенный слой населения.
- M – оборотные средства предприятия
- τ – длительность производственного цикла
- p – рыночная цена товара
- p̃ – себестоимость продукта, то есть переменные издержки на производство
единицы продукции.
- δ – доля оборотных средств, идущая на покрытие переменных издержек.
- κ – постоянные издержки, которые не зависят от количества выпускаемой продукции.
- Q(S/p) – функция спроса, зависящая от отношения дохода S к цене p. Она равна количеству продукта, потребляемого одним потребителем в единицу времени.
Функцию спроса товаров долговременного использования часто представляют в простейшей форме:

$Q = q- k (p/S) = q(1-p/p_c)$

где q – максимальная потребность одного человека в продукте в единицу времени. Эта функция падает с ростом цены и при p = p_cr (критическая стоимость продукта) потребители отказываются от приобретения товара Величина p_cr = $S_q$/k. Параметр k – мера эластичности функции спроса по цене. Таким образом, функция
спроса в форме является пороговой и обладает свойствами насыщения

# Условие варианта 39

Для обоих случаев рассмотрим задачу со следующими начальными условиями и параметрами:

$$ M_0^1=3.3 \: M_0^2=2.3 $$
$$ p_{cr}=22 \: N=33 \: q=1 $$
$$ \tau_1=22 \: \tau_2=11 $$
$$ \widetilde{p}_1=6.6 \: \widetilde{p}_2=11.1 $$

## Случай 1

Рассмотрим две фирмы, производящие взаимозаменяемые товары одинакового качества и находящиеся в одной рыночной нише. Считаем, что в рамках нашей модели конкурентная борьба ведётся только рыночными методами. То есть, конкуренты могут влиять на противника путем изменения параметров своего производства: себестоимость, время цикла, но не могут прямо вмешиваться в ситуацию на рынке («назначать» цену или влиять на потребителей каким-либо иным способом.) Будем считать, что постоянные издержки пренебрежимо малы, и в модели учитывать не будем. В этом случае динамика изменения объемов продаж фирмы 1 и фирмы 2 описывается следующей системой уравнений:

$$\frac{dM_1}{d\Theta} = M_1 - \frac{b}{c_1}M_1 M_2 - \frac{a1}{c1} M_1^2 $$

$$ \frac{dM_2}{d\Theta} = \frac{c_2}{c_1} M_2 - \frac{b}{c_1} M_1 M_2 - \frac{a_2}{c_1} M_2^2$$
где 

$$ a_1 = \frac{p_{cr}}{\tau_1^2 \widetilde{p}_1^2 Nq } $$
$$ a_2 = \frac{p_{cr}}{\tau_2^2 \widetilde{p}_2^2 Nq } $$ 
$$ b = \frac{p_{cr}}{\tau_1^2 \widetilde{p}_1^2 \tau_2^2 \widetilde{p}_2^2 Nq} $$
$$ c_1 = \frac{p_{cr} - \widetilde{p}_1}{\tau_1 \widetilde{p}_1} $$
$$ c_2 = \frac{p_{cr} - \widetilde{p}_2}{\tau_2 \widetilde{p}_2} $$

## Случай 2 

Рассмотрим модель, когда, помимо экономического фактора влияния (изменение себестоимости, производственного цикла, использование кредита и т.п.), используются еще и социально-психологические факторы – формирование общественного предпочтения одного товара другому, не зависимо от их качества и цены. В этом случае взаимодействие двух фирм будет зависеть друг от друга, соответственно коэффициент перед $M_1$ $M_2$ будет отличаться. Пусть в рамках рассматриваемой модели динамика изменения объемов продаж фирмы 1 и фирмы 2 описывается следующей системой уравнений:

$$\frac{dM_1}{d\Theta} = M_1 - (\frac{b}{c_1} + 0.0002)M_1 M_2 - \frac{a1}{c1} M_1^2 $$

$$ \frac{dM_2}{d\Theta} = \frac{c_2}{c_1} M_2 - (\frac{b}{c_1}+0,00093) M_1 M_2 - \frac{a_2}{c_1} M_2^2$$


# Выполнение лабораторной работы

## Julia

Код для первого случая:

using Plots
using DifferentialEquations

kr = 22
t1 = 22
p1 = 6.6
t2 = 11
p2 = 11.1
N = 33
q = 1

a1 = kr /(t1 * t1 * p1 * p1 * N * q)
a2 = kr /(t2 * t2 * p2 * p2 * N * q)
b = kr /(t1 * t1 * t2 * t2 * p1 * p1 * p2 * p2 * N * q)
c1 = (kr - p1)/(t1 * p1)
c2 = (kr - p2)/(t2 * p2)


function ode_fn(du, u, p, t)
	M1, M2 = u
    du[1] = u[1] - (b/c1)*u[1]*u[2] - (a1/c1)*u[1]*u[1]
	du[2] = (c2/c1)*u[2] - (b/c1)*u[1]* u[2] - (a2/c1)*u[2]*u[2]
end

v0 = [3.3, 2.3]
tspan = (0.0, 30)
prob = ODEProblem(ode_fn, v0, tspan)
sol = solve(prob, dtmax = 0.05)
M1 = [u[1] for u in sol.u]
M2 = [u[2] for u in sol.u]
T = [t for t in sol.t]

plt = plot(dpi = 600, legend = true)
plot!(plt, T, M1, label = "Оборотные средства фирмы 1", color = :green)
plot!(plt, T, M2, label = "Оборотные средства фирмы 2", color = :red)

savefig(plt, "lab08_1.png")

Получим следующий график (Рис.1):
![График конкуренции двух фирм для первого случая](image/lab08_1.png){#fig:001 width=70%}


Код для второго случая:

using Plots
using DifferentialEquations

kr = 22
t1 = 22
p1 = 6.6
t2 = 11
p2 = 11.1
N = 33
q = 1

a1 = kr /(t1 * t1 * p1 * p1 * N * q)
a2 = kr /(t2 * t2 * p2 * p2 * N * q)
b = kr /(t1 * t1 * t2 * t2 * p1 * p1 * p2 * p2 * N * q)
c1 = (kr - p1)/(t1 * p1)
c2 = (kr - p2)/(t2 * p2)


function ode_fn(du, u, p, t)
	M1, M2 = u
    du[1] = u[1] - (b/c1)*u[1]*u[2] - (a1/c1)*u[1]*u[1]
	du[2] = (c2/c1)*u[2] - (b/c1 + 0.00093)*u[1]*u[2] - (a2/c1)*u[2]*u[2]
end

v0 = [3.3, 2.3]
tspan = (0.0, 30)
prob = ODEProblem(ode_fn, v0, tspan)
sol = solve(prob, dtmax = 0.05)
M1 = [u[1] for u in sol.u]
M2 = [u[2] for u in sol.u]
T = [t for t in sol.t]

plt = plot(dpi = 600, legend = true)
plot!(plt, T, M1, label = "СПФ Оборотные средства фирмы 1", color = :green)
plot!(plt, T, M2, label = "СПФ Оборотные средства фирмы 2", color = :red)

savefig(plt, "lab08_2.png")

Получим следующий график (Рис.2):

![График конкуренции двух фирм для второго случая](image/lab08_2.png){#fig:002 width=70%}


## OpenModelica

Код для первого случая:

model lab08_1
Real kr = 22;
Real t1 = 22;
Real p1 = 6.6;
Real t2 = 11;
Real p2 = 11.1;
Real N = 33;
Real q = 1;

Real a1 = kr / (t1 * t1 * p1 * p1 * N * q);
Real a2 = kr / (t2 * t2 * p2 * p2 * N * q);
Real b = kr / (t1 * t1 * t2 * t2 * p1 * p1 * p2 * p2 * N * q);
Real c1 = (kr - p1) / (t1 * p1);
Real c2 = (kr - p2) / (t2 * p2);

Real M1;
Real M2;
initial equation
M1 = 3.3;
M2 = 2.3;
equation
der(M1) = M1 - b / c1 * M1 * M2 - a1 / c1 * M1 * M1;
der(M2) = c2 / c1 * M2 - b / c1 * M1 * M2 - a2 / c1 * M2 * M2;
end lab08_1;


Получим следующий график (Рис.3):

![График конкуренции двух фирм для первого случая](image/1.png){#fig:003 width=70%}


Код для второго случая:

model lab08_2
Real kr = 22;
Real t1 = 22;
Real p1 = 6.6;
Real t2 = 11;
Real p2 = 11.1;
Real N = 33;
Real q = 1;

Real a1 = kr / (t1 * t1 * p1 * p1 * N * q);
Real a2 = kr / (t2 * t2 * p2 * p2 * N * q);
Real b = kr / (t1 * t1 * t2 * t2 * p1 * p1 * p2 * p2 * N * q);
Real c1 = (kr - p1) / (t1 * p1);
Real c2 = (kr - p2) / (t2 * p2);

Real M1;
Real M2;
initial equation
M1 = 3.3;
M2 = 2.3;
equation
der(M1) = M1 - b / c1 * M1 * M2 - a1 / c1 * M1 * M1;
der(M2) = c2 / c1 * M2 - (b / c1 + 0.00093) * M1 * M2 - a2 / c1 * M2 * M2;

end lab08_2;

Получим следующий график (Рис.4):

![График конкуренции двух фирм для второго случая](image/2.png){#fig:004 width=70%}



## Анализ и сравнение результатов

В ходе выполнения лабораторной работы были построены графики при заданных начальных условиях на языках Julia и с помощью ПО Open Modelica. Результаты графиков совпадают (не учитывая  разности в масштабах).


# Выводы

Мы решили задачу о модели конкуренции двух фирм и выполнили все поставленне перед нами задачи.

# Список литературы

1. Документация по Julia: https://docs.julialang.org/en/v1/

2. Документация по OpenModelica: https://openmodelica.org/

3. Решение дифференциальных уравнений: https://www.wolframalpha.com/

