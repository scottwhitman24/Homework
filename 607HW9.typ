#import "conf-hw.typ": *

#show: conf.with(
  title-text: [607 Homework 9],
)
\ 
#prob[
Let f be a measurable function on $[0, 1]$, so that $f(x) > 0$ a.e. Let $E_n subset[0, 1]$ be measurable and assume that
$ lim_(n -> oo)integral_(E_n)f(x)d x=0 $

Prove that $ lim_(n -> oo) m(E_n) = 0 $
]
#sol[
  It suffices to show that $dif x << f dif x$ as then for any $epsilon>0$ there is a $delta$ such that if $integral_(E_n)f(x)dif x <delta$ then $m(E_n)<epsilon$ so the former going to zero implies the latter also goes to zero.\ 
  Suppose that $integral_E f dif x=0$.
  Since $m({x in E|f(x) gt.eq epsilon})=0$ for all $epsilon>0$, by continuity from above
  $ m(E)&=m(f^(-1)((0,oo)))=m(union.big_(n=1)^oo f^(-1)([1 / n,oo)))\ 
  &=m(union.big_(n=1)^oo {x in E|f(x) gt.eq 1 / n})\ 
  &=lim_(n->oo)m({x in E|f(x) gt.eq 1 / n})=0 $
  Thus $dif x << f dif x$.
]
#pagebreak()
#prob[
Let $X = [0, 1]$, $cal(M) = cal(B)_RR$ and $mu$ be the counting measure on $[0, 1]$.
+ $m << mu$ but there is no $f in L_0^+$ so that $d m = f d mu$.
+ $mu$ has no Lebesgue decomposition with respect to $m$
Show that the counting measure $mu$ defined on $[0, 1]$ (with the Borel $sigma$-algebra $B[0,1]$) can not be written as $d mu = d lambda + f d m$ for some $f in L_1(m)$ or $f in L^+([0, 1, ])$ where $lambda$ is strictly singular to $m$.
]
#sol[
  + Since the only null set of $mu$ is $m$, clearly $m<<mu$.
    However if there were a $f$ with $dif m = f dif mu$ then for all $x in [0,1]$ we would have 
    $ 0=m ({x})=integral_({x}) f dif mu=f(x) $
    so $f=0$, but then we would have
    $ 1 = m([0,1]) = integral_([0,1]) f dif mu=integral_([0,1]) 0 dif mu = 0 $
    a contradiction.
    Thus there is no such $f$.
  + Suppose there were such a decomposition $mu=mu_1+mu_2$ with $mu_1 perp m$ and $mu_2 << m$.
    Since every singleton ${x}$ is a $m$-null set, $mu_2({x})=0$ so $mu_1({x})=mu({x})=1$ for all singletons, so $mu_1=mu$ on all countable sets.
    We will also have equality on all uncountable sets, since every uncountable set contains a countable subset which will have measure $oo$ so the measure of the uncountable sets will also be $oo$.
    Since $mu_1 perp m$ and $mu(A)=oo$ and $m(A)=0$ for all countably infinite sets we must have $mu_2(A)=oo$.
    Hence there is no such decomposition.
  Suppose it were possible to write $dif mu$ in the form $dif mu=dif lambda +f dif m$ with $f in L_1(m)$ or $f in L^+([0,1])$ and $lambda$ strictly singular to $m$.
  On every singleton ${x}$ we have
  $ 1=mu({x})=integral_({x}) dif mu=integral_({x}) dif lambda+integral_({x}) f dif m=lambda ({x}) $
  so by the previous argument $lambda=mu$, but we know that $m$ and $mu$ are not strictly singular since any set with nonzero $m$-measure will be nonzero and hence have nonzero $mu$-measure and there exist sets with nonzero $m$-measure.
  Hence no such decomposition is possible.
]
#pagebreak()
#prob[
Assume that $(Omega, cal(M), PP)$ is a probability space and that $tilde(cal(M)) subset cal(M)$ is sub-$sigma$-algebra of $cal(M)$.
Let X be an integrable random variable.
Then there exists a random variable $tilde(X)$ so that:
+ $tilde(X)$ is $tilde(cal(M))$- measurable.
+ for all $A in tilde(cal(M))$ 
$ EE_PP ( chi_A X ) = EE_PP ( chi_A tilde(X) ) $
Furthermore, $tilde(X)$ is unique, i.e. for every random variable $Y$ which has properties (a) and (b) it follows that $Y = tilde(X)$ $PP$-almost surely.
We call $tilde(X)$ the conditional expectation of $X$ with respect to $cal(M)$ and denote it by $EE_PP ( X|tilde(cal(M)) )$ or, if there is no doubt which probability we mean, by $EE (X|tilde(cal(M)) )$.
]
#sol[
  By the Radon-Nikodym theorem $d nu = X d PP<< d PP$ over $cal(M)$, and hence if we restrict our measurable sets to $tilde(cal(M))$ we will still have $d nu = X d PP<< d PP_(tilde(cal(M)))$ so again by the Radon-Nikodym theorem there is a $tilde(cal(M))$-measurable $tilde(X)=(X d PP) / (d PP_(tilde(cal(M))))$ such that $EE_(PP) (chi_A tilde(X))=nu(A)=EE_PP (chi_A X)$ for all $A in tilde(cal(M))$ and will be unique for this property up to $PP$ a.s. equality.
]
#pagebreak()
#prob[
Assume that $(Omega, cal(M), PP)$ is a probability space and that $tilde(cal(M)) subset cal(M)$ is sub-$sigma$-algebra of $cal(M)$.
Let $X$ and $Y$ be integrable random variables. Then
+ (Linearity)\ 
  $ EE (alpha X + beta Y|tilde(cal(M))) = alpha EE (X|cal(M)) + beta EE (Y|tilde(cal(M))) "  " PP "− a.s" $
+ (Positivity) 
  $ X <= Y "  " PP "−almost surely " => EE (X|tilde(M)) <= EE (Y|tilde(M)) "  " PP " −a.s." $
+ (Tower-Property)\ 
  Assume $cal(N) subset tilde(cal(M))$ is sub-$sigma$ algebra of tilde(cal(M)).
  Then
  $ EE (EE (X|tilde(cal(M)))|cal(N))) = EE (X|cal(N)) "  " PP "− a.s." $
+ (Factorization)\ 
  If $Y$ is $tilde(cal(M))$-measurable and assume that $X Y$ is also integrable, then
  $ EE (Y|tilde(cal(M))) = Y" and "EE (Y X|tilde(cal(M))) = Y EE (X|tilde(cal(M))) "  " PP "− a.s." $
+ (Absolute value)
$ |EE (X|tilde(cal(M)))| <=EE (|X| |cal(M)) "  " PP "− a.s." $
]
#sol[
  + Since integration is linear and taking Radon-Nikodym derivative is a.s. linear, taking the conditional expectation is a.s. linear.
  + Since integration and taking Radon-Nikodym derivative preserve a.s. nonnegativity, $EE (Y-X|tilde(cal(M)))$ is a.s. nonnegative so $EE (X|tilde(cal(M))) lt.eq EE (Y|tilde(cal(M)))$ $PP$-a.s.
  + For all $A in cal(N)$ since $A in tilde(cal(M))$ we have
    $ EE(chi_A EE(EE(X|tilde(cal(M)))|cal(N)))=EE(chi_A EE(X|tilde(cal(M))))=EE(chi_A X) $
    so by uniqueness we have
    $ EE ( EE (X|tilde(cal(M)))|cal(N))=EE(X|cal(N))"  "PP -"a.s." $
  + That $EE (Y|tilde(cal(M))) = Y$ $PP$-a.s. follows from uniqueness of conditional expectation since $Y$ satisfies the properties.\ 
    We first show the latter statement for $Y=chi_A$ for $A in tilde(cal(M))$.
    For all $E in tilde(cal(M))$,
    $ EE(chi_E chi_A EE(X|tilde(cal(M))))=EE(chi_(E inter A) EE(X|tilde(cal(M))))=EE(chi_(E inter A) X)=EE(chi_E chi_A X) $
    so by uniqueness
    $ EE(chi_A X|tilde(cal(M)))=chi_A EE(X|tilde(cal(M))) "  "PP -"a.s." $
    Since conditional expectation is linear and commutes with monotone limits, the statement is then true for general random variables.
  #colbreak()
  + By linearity and the triangle inequality for the reals
  $ |EE (X|tilde(cal(M)))| &= |EE (X^+|tilde(cal(M)))-EE (X^-|tilde(cal(M)))|\ 
  &lt.eq EE (X^+|tilde(cal(M)))+EE (X^-|tilde(cal(M)))\ 
  &=EE (X^+ + X^-|tilde(cal(M)))=EE(|X| |tilde(cal(M))) $
]
#pagebreak()
#prob[
  State and prove the Monotone Convergence Theorem and the Dominated Convergence Theorem for conditional expectations 
]
#sol[
  #theorem([Monotone Convergence Theorem],number:none)[
  If $X_n$ is an increasing sequence of random variables and $X=lim_(n->oo)X_n$ then
  $ lim_(n->oo)EE (X_n|tilde(cal(M)))=EE(X|tilde(cal(M))) "  "PP -"a.s." $
  ]
  #proof[
    By the usual monotone convergence theorem since $EE (X_n|tilde(cal(M)))$ is an increasing sequence, for all $A in tilde(cal(M))$
    $ EE(chi_A lim_(n->oo)EE (X_n|tilde(cal(M))))&=integral_A lim_(n->oo)EE(X_n|tilde(cal(M))) dif PP\ 
    &=lim_(n->oo)integral_A EE(X_n|tilde(cal(M))) dif PP\ 
    &=lim_(n->oo)EE(chi_A EE(X_n|tilde(cal(M))))\ 
    &=lim_(n->oo)EE(chi_A X_n)=lim_(n->oo)integral_A X_n dif PP\ 
    &=integral_A lim_(n->oo) X_n dif PP=integral_A X dif PP=EE(chi_A X) $
    so by uniqueness of $EE(X|tilde(cal(M)))$, we have
  $ lim_(n->oo)EE (X_n|tilde(cal(M)))=EE(X|tilde(cal(M))) "  "PP -"a.s." $
  ]
  #theorem([Dominated Convergence Theorem],number:none)[
  If $X_n$ is a sequence of random variables such that $|X_n| lt.eq Y$ for some integrable random variable $Y$ and $X=lim_(n->oo)X_n$ then
  $ lim_(n->oo)EE (X_n|tilde(cal(M)))=EE(X|tilde(cal(M))) "  "PP -"a.s." $
  ]
  #proof[
    By the usual dominated convergence theorem since 
    $ |EE(X_n|tilde(cal(M)))|lt.eq EE(|X_n||tilde(cal(M))) lt.eq EE(Y|tilde(cal(M))) $
    we have for all $A in tilde(cal(M))$
    $ EE(chi_A lim_(n->oo)EE (X_n|tilde(cal(M))))&=integral_A lim_(n->oo)EE(X_n|tilde(cal(M))) dif PP\ 
    &=lim_(n->oo)integral_A EE(X_n|tilde(cal(M))) dif PP\ 
    &=lim_(n->oo)EE(chi_A EE(X_n|tilde(cal(M))))\ 
    &=lim_(n->oo)EE(chi_A X_n)=lim_(n->oo)integral_A X_n dif PP\ 
    &=integral_A lim_(n->oo) X_n dif PP=integral_A X dif PP=EE(chi_A X) $
    so by uniqueness of $EE(X|tilde(cal(M)))$, we have
  $ lim_(n->oo)EE (X_n|tilde(cal(M)))=EE(X|tilde(cal(M))) "  "PP -"a.s." $
  ]
]
#pagebreak()
#prob[
Assume that $(Omega, cal(M), PP)$ is a probability space and that $tilde(cal(M)) subset cal(M)$ is a sub-$sigma$-algebra of $cal(M)$ generated by $A_1, A_2, ... A_n in cal(M)$ with $A_i inter A_j = emptyset$, for $i != j$ and $union.big_(i=1)^n A_i = Omega$. 
Assume $X$ is an integrable random variable on $(Omega, cal(M), PP)$.
Compute $EE (X| tilde(cal(M)))$
]
#sol[
  Since for each $A_i$ there is no strictly smaller nonempty measurable set in $tilde(cal(M))$ and $(EE (chi_(A_i)X)) / (PP(A_i))chi_(A_i)$ is $tilde(cal(M))$-measurable with
  $ EE(chi_(A_i) (EE (chi_(A_i)X)) / (PP(A_i))chi_(A_i))=(EE (chi_(A_i)X)) / (PP(A_i)) PP(A_i)=EE (chi_(A_i) X) $
  by uniqueness
  $ (EE (chi_(A_i)X)) / (PP(A))chi_A=EE (chi_(A_i)X|tilde(cal(M))) "  "PP -"a.s." $
  so
    $ EE (X|tilde(cal(M))) = sum_(i=1)^n EE (chi_(A_i)X|tilde(cal(M)))=sum_(i=1)^n (EE (chi_(A_i)X)) / (PP(A_i))chi_(A_i) "  "PP -"a.s." $
]
