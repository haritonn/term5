= Лекция 17 сентября 2025г.

== Предельные теоремы. Последовательности случайных величин

Пусть ${xi_i}_(i=1)^infinity$ --- последовательноть случайных величин $(Omega, FF, PP)$

*Определение.* Последовательность $xi_i$ сходится по вероятности к случайной величине $xi$, если

$forall epsilon > 0 P{w | xi_i(x) - xi(w) < epsilon} ->_(i -> infinity) = 1$

или

$forall epsilon > 0 P{|xi_i - xi| >= epsilon} ->_(i -> infinity) 0$

Обозначение: $xi_i ->^p xi$

*Определение.* Последовательность случайных величин ${xi_i}_(i=1)^infinity$ сходится по распределению к случайной величине $xi$, если
во всех точках непрерывности функции $F_xi (x)$ функция $F_n(x) -> F_xi (x)$.

Можно обозначать $F_n (x) => F(x)$, или $xi_i ->^d xi$, или $P{w: xi_i (w) < x} -> P{w: xi(w) < x}$.

*Определение.* Последовательность ${xi_i}_(i=1)^infinity$ сходится почти наверное к случайной величине $xi$, если

$P{w: xi_i(w) -> xi(w)} = 1$

*Определение.* Последовательность ${xi_i}_(i=1)^infinity$ сходится в среднем к $xi$, если $M|xi_i| < +infinity$, $M|xi| < +infinity$

$M|xi_i - xi|^2 ->_(i -> infinity) 0$, $xi_i ->_(l.i.m.) xi$ (limit in mean).

Сходимость в среднем --- частный случай $L$ сходимости.

*Теорема.* (Связь сходимости по вероятности и в среднем)
Если $xi_n ->_(l.i.m.) xi$, то $xi_n ->^p xi$

*Доказательство.* Воспользуемся неравенством Чебышева

$forall epsilon > 0 P{|xi - M xi| < epsilon} >= 1 - (M(xi - M xi)^2) / epsilon^2$

$forall epsilon > 0 P{|xi_n - xi| < epsilon} >= 1 - (M(xi - M xi)^2) / epsilon^2 ->_(l.i.m.) 0 >= 1$

*Теорема.* Из сходимости по вероятности следует сходимость по распределению.

$(xi_n ->^p xi) -> (xi_n ->^d xi)$

*Доказательство.* Пусть верно

$forall epsilon > 0 P{|xi_n - xi| >= xi} ->_(n -> infinity) 0$

Требуется доказать, что $F_n(x_0) -> F(x_0)$, $x_0$ --- точка непрерывности $F_xi (x)$

$x_0$ --- т. непрерывности $F_xi (x)$.

Пусть $x' < x_0 < x''$.

$F_n(x') = P{xi_n < x'} = P{(xi_n < x') inter (xi < x' inter xi_n >= x_0)} <= P{xi_n < 0} + P{|xi_n - xi| >= (x_0 - x')}
  <=lim_(n->infinity, x' -> x_0) F_n(x_0)$

$F_n (x_0) = P{xi_n < x_0} = P{(xi_n < x_0) inter (xi < x'' union (xi >= x'')} =
  P{(xi_n < x_0 inter xi < x'')} + P{(xi_n < x_0) inter (xi > x'')}$

$<= P{xi < x'} + P{|xi_n - xi| >= epsilon(x_0 x'')} <= lim_(n -> infinity) F_xi (x'')$

$F_xi(x') <= underline(lim)_(n->infinity) F_n(x_0) <= lim_(n->infinity) F_n(x_0) <= F_xi (x'')$

*Теорема.* Если $xi_n ->^d c$, то $xi_n ->^p c$

*Доказательство.* Рассмотрим функцию распределения константы от $x$.

$F_c(x) = cases(0  x <=c,1  x > c)$

Рассмотрим $forall epsilon > 0 P{|xi_n - c| < epsilon} = P{-epsilon < xi_n - c < epsilon =
  P{c - epsilon < xi_n < c + epsilon} >= P{c - epsilon < xi_n < c + epsilon/2}
  = F_(xi n) (c + epsilon / 2) - F_(xi n) (c - epsilon) ->^d F_(xi) (c + epsilon/2) - F_xi (c - epsilon) = 1 - 0 = 1$

Получили $forall epsilon > 0 P{|xi_n - c| < epsilon} >= 1$, но $P{A} <= 1$ => $lim_(n->infinity) P{(xi_n - c) < epsilon} = 1, xi_n ->^p c$
