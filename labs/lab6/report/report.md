---
## Front matter
title: "Лабораторная работа №6"
subtitle: "Задача об эпидемии. Вариант 39"
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

Решить задачу об эпидемии.

# Задачи

1. Постройте графики изменения числа особей в каждой из трех групп.

# Теоретическое введение

Рассмотрим простейшую модель эпидемии. Предположим, что некая популяция, состоящая из N особей, (считаем, что популяция изолирована) подразделяется на три группы. Первая группа - это восприимчивые к болезни, но пока здоровые особи, обозначим их через S(t). Вторая группа – это число инфицированных особей, которые также при этом являются распространителями инфекции, обозначим их I(t). А третья группа, обозначающаяся через R(t) – это здоровые особи с иммунитетом к болезни. 
До того, как число заболевших не превышает критического значения $I^*$, считаем, что все больные изолированы и не заражают здоровых. Когда I(t)>$I^*$, тогда инфицирование способны заражать восприимчивых к болезни особей. 
Таким образом, скорость изменения числа S(t) меняется по следующему
закону:

$dS/dt$ = 

{ -$aS$, если I(t)>$I^*$

  0, если I(t)<$I^*$ }
(1)

Поскольку каждая восприимчивая к болезни особь, которая, в конце концов, заболевает, сама становится инфекционной, то скорость изменения числа инфекционных особей представляет разность за единицу времени между
заразившимися и теми, кто уже болеет и лечится, т.е.:

$dl/dt$ = 
{ -$aS - bI$, если I(t)>$I^*$

  -$bI$, если I(t)<$I^*$ }
(2)

А скорость изменения выздоравливающих особей (при этом приобретающие
иммунитет к болезни)
dR/dt = $bI$
(3)

Постоянные пропорциональности $a, b$, - это коэффициенты заболеваемости и выздоровления соответственно.
Для того, чтобы решения соответствующих уравнений определялось
однозначно, необходимо задать начальные условия.Считаем, что на начало
эпидемии в момент времени
t = 0 нет особей с иммунитетом к болезни R(0)=0, а число инфицированных и восприимчивых к болезни особей I(0) и S(0)
соответственно. Для анализа картины протекания эпидемии необходимо
рассмотреть два случая:
I(t)<=$I^*$и I(t)>=$I^*$

# Выполнение лабораторной работы

## Условие варианта 39

На одном острове вспыхнула эпидемия. Известно, что из всех проживающих на острове (N=12 800) в момент начала эпидемии (t=0) число заболевших людей (являющихся распространителями инфекции) I(0)=180, А число здоровых людей с иммунитетом к болезни R(0)=58. Таким образом, число людей восприимчивых к болезни, но пока здоровых, в начальный момент времени S(0)=N-I(0)- R(0).

Постройте графики изменения числа особей в каждой из трех групп.
Рассмотрите, как будет протекать эпидемия в случае: 
1) если I(0) <= $I^*$
2) если I(0) > $I^*$

## Julia

Код для I(0) <= $I^*$:

using DifferentialEquations
using Plots

N = 12800
I0 = 180
R0 = 58
S0 = N - I0 - R0
a = 0.4
b = 0.32

function ode_fn(du, u, p, t)
	S, I, R = u
	du[1] = 0
	du[2] = -b*u[2]
	du[3] = b*I
	
end

v0 = [S0, I0, R0]
tspan = (0.0, 60.0)
prob = ODEProblem(ode_fn, v0, tspan)
sol = solve(prob, dtmax=0.05)
S = [u[1] for u in sol.u]
I = [u[2] for u in sol.u]
R = [u[3] for u in sol.u]
T = [t for t in sol.t]

plt = plot(dpi=600, legend = :topright)
plot!(plt, T, S, label = "Восприимчивые особи" ,color=:green)
plot!(plt, T, I, label = "Инфицированные особи" ,color=:red)
plot!(plt, T, R, label = "Особи с иммунитетом" ,color=:blue)
savefig(plt,"lab6_1_jl.png")


Получим следующий график (Рис.1):

![Динамика изменения числа людей в каждой из трех групп в случае, I(0) <= $I^*$](image/lab6_1_jl.png){#fig:001 width=70%}


Код для I(0) > $I^*$:

using DifferentialEquations
using Plots

N = 12800
I0 = 180
R0 = 58
S0 = N - I0 - R0
a = 0.4
b = 0.1

function ode_fn(du, u, p, t)
	S, I, R = u
	du[1] = -a*u[1]
	du[2] = a*u[1] - b*u[2]
	du[3] = b*I
	
end

v0 = [S0, I0, R0]
tspan = (0.0, 120.0)
prob = ODEProblem(ode_fn, v0, tspan)
sol = solve(prob, dtmax=0.05)
S = [u[1] for u in sol.u]
I = [u[2] for u in sol.u]
R = [u[3] for u in sol.u]
T = [t for t in sol.t]

plt = plot(dpi=600, legend = :topright)
plot!(plt, T, S, label = "Восприимчивые особи" ,color=:green)
plot!(plt, T, I, label = "Инфицированные особи" ,color=:red)
plot!(plt, T, R, label = "Особи с иммунитетом" ,color=:blue)
savefig(plt,"lab6_2_jl.png")

Получим следующий график (Рис.2):

![Динамика изменения числа людей в каждой из трех групп в случае, I(0) > $I^*$](image/lab6_1_jl.png){#fig:002 width=70%}


## OpenModelica

Код для нестацианарного состояния системы:

model lab6_1_mod
Real N = 12800;
Real I;
Real R;
Real S;
Real a = 0.4;
Real b = 0.34;
initial equation
I = 180;
R = 58;
S = N - I - R;
equation
der(S) = 0;
der(I) = -b * I;
der(R) = b*I;

end lab6_1_mod;


Получим следующий график (Рис.3):

![Динамика изменения числа людей в каждой из трех групп в случае, I(0) <= $I^*$](image/2.png){#fig:003 width=70%}


Код для стацианарного состояния системы:

model lab6_2_mod
Real N = 12800;
Real I;
Real R;
Real S;
Real a = 0.4;
Real b = 0.1;
initial equation
I = 180;
R = 58;
S = N - I - R;
equation
der(S) = -a*S;
der(I) = a*S - b*I;
der(R) = b*I;
end lab6_2_mod;


Получим следующий график (Рис.4):

![Динамика изменения числа людей в каждой из трех групп в случае, I(0) > $I^*$](image/1.png){#fig:004 width=70%}

## Анализ и сравнение результатов

В ходе выполнения лабораторной работы были построены графики изменения числа особей в каждой из трех груп при заданных начальных условиях на языках Julia и с помощью ПО Open Modelica. Результаты графиков совпадают (не учитывая  разности в масштабах).


# Выводы

Мы решили задачу  об эпидемии. и выполнили все поставленне перед нами задачи.

# Список литературы

1. Документация по Julia: https://docs.julialang.org/en/v1/

2. Документация по OpenModelica: https://openmodelica.org/

3. Решение дифференциальных уравнений: https://www.wolframalpha.com/

