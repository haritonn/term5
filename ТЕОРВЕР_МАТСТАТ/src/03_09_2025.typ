= Лекция 3 сентября 2025г.

== Глава I. Условные распределения.

=== Повторение необходимого.

Рассматриваем $(Omega, F, PP)$ --- множество элементарных исходов эксперимента. Элемент $A subset Omega$ является _случайным событием_, $F$ --- $sigma$-алгебра событий:
- $Omega in F$;
- $A in F -> overline(A) in F$;
- ${A_i}_(i=1)^infinity in F => union_(i=1)^infinity A_i in F$.

$P: F -> [0, 1]$, т.е. $P(A)$ --- вероятность события $A$. Свойства:
- $P(A) >= 0 forall A in F$;
- $P(Omega) = 1$;
- $P(union.sq_(i=1)^inf) P(A_i) = sum_(i=1)^inf P(A_i).$

*Определение.* Случайная величина: $xi: Omega -> RR$, такая что 
#align(center)[
  #text(1.25em)[$forall x in RR {omega: xi(omega) < x} in F$]
]

#pagebreak()
=== Функция распределения вероятностей

Для случайной величины $xi$ функция распределения выглядит следующим образом: 

$F_xi (x) = P{omega: xi(omega) < x}$

Случайные величины делятся на _дискретные_, _абсолютно непрерывные._

Дискретная случайная величина: ${x_1, x_2, ..., x_n, ...}$, задаётся числами

$p_i = P{xi = x_i}; \ p_i > 0; \ sum_(i=1)^infinity p_i = 1$

Абсолютно непрерывная случайная величина: $xi in RR$ и пусть $f(x)$ --- _функция плотности_ распределения. Важно, что $f(x)$ почти всюду $= F'(x)$
Наиболее важным требованием является:

$F(x) = integral_(-infinity)^x f(t)d t$

#pagebreak()
=== Двумерные случайные величины

*Определение.* Случайный вектор --- это вектор $overline(xi) = (xi_1, xi_2, ..., xi_n)$, где $xi_i, xi=overline((1, n))$ --- случайные величины, $xi_i$ задана в $(Omega_i)$.

Случайный вектор $overline(xi)$ задаётся в $(Omega, F, P)$; $Omega = Omega_1 times Omega_2 times ... times Omega_n$, где 
- $F$ --- $sigma$-алгебра, 
- $PP$ --- вероятностная мера.

Рассмотрим вектор с координатами $(xi, eta)$.

*Определение.* Функция распределения:

$F_(xi eta) (x, y) = P{omega: xi(omega) < x; eta(omega) < y}$

Свойства:
+ $forall x, y in RR 0 <= F_(xi, eta) (x, y) <= 1$;
+ Если $x_0, y_0$ --- фиксированные, то $F_(xi eta) (x_0, y)$ --- неубывающая и непрерывная слева по $y$, а $F_(xi eta) (x, y)$ --- неубывающая и непрерывная слева по $x$;
+ $lim_(x -> + infinity) F(xi eta) (x, y) = F_eta (y)$; \ $lim_(y -> + infinity) F_(xi eta) (x, y) = F_xi (x)$;\  $lim_(x -> +infinity, y-> +infinity) F_(xi eta) (x, y) = 1$; \  $lim_(x-> - infinity) F_(xi eta) (x, y) = lim_(y -> -infinity) F_(xi eta)(x, y) = lim_(x -> - infinity, y-> - infinity) F_(xi eta) (x, y) = 0$


*Определение.* Случайный вектор называется дискретным, если $xi, eta$ --- дискретные случайные величины.

Случайные векторы $(xi, eta)$ принимают значения $(x_i, y_i)$ с вероятностями $p_(i j) = P{xi = x_i, eta = y_j}$, при этом

$p_(i j) < 0 \ sum_(i=1)^infinity sum_(j=1)^infinity p_(i j) = 1$

*Определение.* Частные распределения имеют следующий вид:

$p_i = P{xi = x_i} = sum_(j=1)^infinity p_(i j)$

$q_j = P{eta = y_j} = sum_(i=1)^infinity p_(i j)$

#pagebreak()
=== Независимость величин

*Определение.* Случайные величины $xi, eta$ называются независимыми, если  

$P{xi < x, eta < y} = P{xi < x} * P{eta < y}$, т.е. $F_(xi eta) (x, y) = F_xi (x) * F_eta (y)$

Аналогично $P(A inter B) = P(A) * P(B) => A, B$ независимы.

Рассмотрим подробнее. Для дискретных случайных величин: 

$p_(i j) = p_i p_j$

Для абсолютно непрерывных случайных величин:

$f_(xi eta) (x, y) = f_xi (x) f_eta (y)$

*Определение.* Случайный вектор $(xi, eta)$ называется абсолютно непрерывным, если 

$F_(xi eta) (x, y) = integral_(-infinity)^x integral_(-infinity)^y f_(xi eta) (u, v) d u d v$

*Определение.* Частные распределения имеют следующий вид:

$f_xi (x) = integral_(-infinity)^infinity f_(xi eta) (x, y) d y$;

$f_eta (y) = integral_(-infinity)^infinity f_(xi eta) (x, y) d x$.

*Теорема.* Случайные величины $xi, eta$ независимы тогда и только тогда, когда 

$f_(xi eta) (x, y) = f_xi (x) f_eta (y)$

Пусть установлено, что случайные величины --- зависимы. *Определение.* Пусть $F_(xi eta) (x, y)$ --- функция распределения вектора $(xi, eta)$, а $F_xi (x)$ --- функция распределения случайной величины $xi$. _Условным распределением_ случайной величины $eta$ относительно случайной величины $xi$ называется распределение со следующей функцией:

$F_(eta | xi) (x, y) = (F_(xi eta) (x, y)) / (F_xi (x))$ при $F_xi (x) > 0$; \
$F_(eta | xi) (x, y) = 0$ при $F_xi (x) = 0$.

В частности, для дискретной случайной величины:

$P{eta = y_j | xi = x_i} = P{xi = x_i, eta = y_j} / P{xi = x_i}$, или \
$P{eta = y_j | xi = x_i} = P_(i j) / p_i$

А для абсолютно непрерывной случайной величины:

$f_(eta | xi) (x, y) = (f_(xi eta) (x, y)) / f_eta (x)$ для $f_xi (x) > 0$. Заметим, что $f_(xi eta) (x, y)= f_xi (x) * f_(eta | x) (x ,y)$.

Т.о. условное распределение является случайной величиной. Наша задача --- найти следующую связь: $eta = f(xi)$.

*Определение.* Условным математическим ожиданием случайной величины $eta$ относительно случайной величины $xi$ называется случайная величина

$M_(eta | xi = x_i) = sum_(j=1)^infinity y_j * P{eta = y_j | xi = x_i}$

с распределением $P{xi = x_i}$. Построим ряд распределения:

#table(
  columns: (auto, auto, auto, auto, auto),
  inset: 10pt,
  align: horizon,
  table.header(
    [$M_(eta | xi) = x_i$], [$m_1$], [$m_2$], [$...$], [$m_n$]
  ),
  $P{xi = x_i}$,
  $p_1$,
  $p_2$,
  $...$,
  $p_n$
)

*Определение.* Условным математическим ожиданием абсолютно непрерывной случайной величины $eta$ относительно случайной величины $xi$ называется 

$M_(eta | xi) = integral_(-infinity)^infinity y f_(eta | xi) (x, y) d y$
с функцией плотности $f_xi (x)$.

Покажем, что $M(M_(eta | xi)) = M eta$. Действительно, 

$M(M_(eta | xi)) = integral_(- infinity)^infinity (M_(eta | xi)) f_xi (x) d x = integral_(- infinity)^infinity (integral_(-infinity)^infinity f_(eta | xi) (x, y) d y) f_xi (x) d x = integral_(-infinity)^infinity y integral_(-infinity)^infinity f_(eta | xi) (x, y) = f_eta (x) d x d y = f_(eta xi) (x, y)$

$ = integral_(-infinity)^infinity y (integral_(-infinity)^infinity f_(xi eta) (x, y) d x) d y= integral_(-infinity)^infinity y f_eta (y) d y = M eta$.

Аналогично $M(M_(eta | xi)) = M eta$.

$(M xi, M eta)$ --- центр распределения двумерной случайной величины $(xi, eta)$.
