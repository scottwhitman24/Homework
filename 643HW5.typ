#import "conf-hw.typ": *

#show: conf.with(
  title-text: [643 Homework 5],
)
\ 
#prob[
  For the lens space $L_m(l_1,dots,l_n)$ defined in Example 2.43, compute the cohomology groups using the cellular cochain complex and taking coefficients in $ZZ," "QQ," "ZZ_m" and "ZZ_p$ for $p$ prime.
  Verify that the answers agree with those given by the universal coefficient theorem.
]
#sol[
  stuff
]
#pagebreak()
#prob[
  Using the cup product $H^k (X,A;R) times H^l (X,B;R) -> H^(k+l) (X,A union B;R)$ show that if $X$ is the union of contractible open subsets $A$ and $B$, then all cup products of positive dimensional classes in $H^* (X;R)$ are zero.
  This applies in particular if $X$ is a suspension.
  Generalize to the situation that $X$ is the union of $n$ contractible open subsets, to show that all $n$-fold cup products of positive-dimensional classes are zero.
]
#sol[
  stuff
]
#pagebreak()
#prob[
  + Using the cup product structure, show that there is no map $RR P^n-> RR P^m$ inducing a nontrivial map $H^1(RR P^m;ZZ_2)->H^1(RR P^n;ZZ_2)$ if $n>m$. 
    What is the corresponding result for maps $CC P^n -> CC P^m$?
  + Prove the Borsuk-Ulam theorem by the following argument.
    Suppose on the contrary that $f:S^n->RR^n$ satisfies $f(x) eq.not f(-x)$ for all $x$.
    Then define $g:S^n->S^(n-1)$ by $ g(x)=(f(x)-f(-x)) / (|f(x)-f(-x)|) $ so $g(-x)=-g(x)$ and $g$ induces a map $RR P^n-> RR P^(n-1)$.
    Show that part (a) applies to this map.
]
#sol[
  + Let $f:RR P^n->RR P^m$. Since $f(alpha)$
  +
]
#pagebreak()
#prob[
  Use cup products to show that $RR P^3$ is not homotopy equivalent to $RR P^2 wedge S^3$.
]
#sol[
  Since $H^*(RR P^3;ZZ_2)=ZZ_2[alpha]/(alpha^4)$ and $H^*(RR P^2 wedge S^3;ZZ_2)=H^*(RR P^2;ZZ_2)oplus H^*(S^3;ZZ_2)$
]
#pagebreak()
#prob[
  Using cup products, show that the map $S^(k+l) -> S^k times S^l$ induces the trivial homomorphism $H_(k+l)(S^(k+l)) -> H_(k+l)(S^k times S^l)$, assuming $k>0$ and $l>0$.
]
#sol[
  stuff
]
