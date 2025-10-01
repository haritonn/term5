= Лекция 10 сентября 2025 года

*Определение.* Условное мат ожидание

$M_(eta | xi) = integral_(-infinity)^infinity y d F_(eta | xi) (x, y)$

- случайная величина с функцией распределения $F_xi (x)$

Свойства:
1. $M_(xi | xi) = xi$;
2. $M xi eta | xi = eta M eta|xi$;
3. $M g(xi)|xi = g (xi)$;
4. $M(M eta|xi) = M eta$
5. $xi, eta$ - независимые, то $M eta|xi = M eta$

*Определение.* Функцией регрессии $g(xi) = M eta | xi$. Функция регрессии используется для оценки $hat(eta) = g(xi)$, где
- $hat(eta)$ - прогнозное / оценка $eta$;
- $eta$ - наблюдаемое значение.

У нас есть двумерное распределение $(xi, eta)$, и мы предполагаем существование некоторой функции $f(x)$: $eta = f(xi)$.

*Теорема.* (о наилучшей оценке) $(xi, eta)$ - некоторая двумерная случайная величина, при этом $xi, eta$ - зависимые. Тогда наилучшей в смысле
метода наименьших квадратов (МНК) оценкой связи $xi, eta$ является функция регрессии

$g(xi) = M eta|xi$

т.е. $M(eta - g(xi))^2 = min_(f(x)) M(eta - f(xi))^2$

*Доказательство.* Рассмотрим произвольную функцию $M(eta - f(xi))^2 = M(eta - g(xi) + g(xi) - f(xi))^2 =
  M(eta - g(xi))^2 + M(g(xi) - f(xi))^2 + 2M(eta - g(xi))M(g(xi) - f(xi)) =$

Рассмотрим удвоенное произведенеие:

$2M(eta - g(xi))M(g(xi) - f(xi)) = M(g(xi) - f(xi)M(eta - g(xi))|xi) = M((g(xi) - f(xi))[underbrace(M eta|xi, "0") - underbrace(M g(xi) | xi, "0")] = 0$

$= M(eta - f(xi))^2 = underbrace(M(eta - g(xi))^2, >= 0) + underbrace(M(g(xi) - f(xi))^2, >= 0) >= M(eta - g(xi))^2$
(Разложили дисперию в сумму, сравнили с одним из слагаемых.) Ч.И.Т.Д.


== Линейная регрессия, уравнение линейной регрессии

Пусть $eta = a xi + b = M eta | xi$. Задача: оценить коэффициенты $a, b$ методом наименьших квадратов.

$M(eta - hat(eta)^2 -> min_(a, b)$

$M(eta - a xi - b)^2 = L(a, b)$

$(partial L(a, b)) / (partial a) = (partial)/(partial a) M(eta - a xi - b)^2 = (-2)M (eta - a xi - b) * eta = (-2) M (eta xi - a xi^2 - b xi) =
  (-2)[M eta xi - a M xi^2 - b M xi] = 0$

$(partial L(a,b)) / (partial b) = (partial)(partial b) M [eta - a xi - b]^2 = (-2) M(eta - a xi - b) = (-2)(M eta - a M xi - b) = 0$

$cases(
  M eta - a M xi - b = 0,
  M xi eta - a M xi^2 - b M xi = 0
)$

$M xi eta - a M xi^2 - (M eta - a M xi)M xi = 0$

$M xi eta - a M xi^2 - M xi M eta - a (M xi)^2 = 0$

$a(M xi - (M xi)^2) = M xi eta - underbrace(M xi M eta, c o v(eta, xi))$

$a = (c o v(xi, eta)) / (D xi) * (sqrt(D) eta) / (sqrt(D eta)) =
  underbrace((c o v(xi, eta)) / (sqrt(D xi) sqrt(D eta)), "corr") * (sqrt(D) eta) / (sqrt(D eta)) = r (partial eta) / (partial xi)$

$b = M eta - r (partial eta) / (partial xi) * M xi$

Доказательство минимума самостоятельно, следуя соответствуя теореме.


Уравнение регрессии имеет вид:

$eta = r (partial eta) / (partial xi) * xi + M eta - r (partial eta) / (partial xi) M xi$

$eta = M eta + r (partial eta) / (partial xi) (xi - M xi)$

Уравнение регрессии в отклонениях:

$eta - M eta = r (partial eta) / (partial xi) (xi - M xi)$

график $(M xi, M eta)$

== Оффтоп. О практике, как решать задачи.

=== Дано 2мерное распределение $(xi, eta)$
#table(
  columns: (auto, auto, auto, auto),
 [$xi, eta$],
  [1],
  [2],
  [5],
  [-1],
  [.1],
  [.2],
  [.1],
  [1],
  [.4],
  [0],
  [.1]
)

#table(
  columns: (auto, auto, auto, auto),
  [$xi$], [-1], [1],
  [$p$], [0.4], [0.6]
)

#table(
  columns: (auto, auto, auto, auto),
  [$eta$], [1], [2], [5],
  [$q$], [.5], [.2], [.3]
)

=== Построить условное распределение $eta | xi$

Для ${eta = -1}, p = 0.4$

#table(
  columns: (auto, auto, auto, auto),
  [$eta$], [1], [2], [5],
  [$P{eta| -1}$], [1/4], [2/4], [1/4]
)

$M eta | (xi = -1) = 1 * 1/4 + 2*1/2 + 5*1/4 = 1 + 1.5 = 2.5$

Для ${eta = 1}, p = 0.6$

#table(
  columns: (auto, auto, auto, auto),
  [$eta$], [1], [2], [5],
  [$P{eta | 1}$], [2/3], [0], [1/3]
)

$M(M eta|xi) = 5/2 * 2/5 + 7/3 * 3/ = 1 + 7/5 = 1 + 1.4 = 2.4$

Итоговая таблица:

#table(
  columns: (auto, auto),
  [$M eta|xi$], [2.5], [$7/3$],
  [$p$], [0.4], [0.6]
)
