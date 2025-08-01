% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PGM2.R
\docType{package}
\name{PGM2-package}
\alias{PGM2}
\alias{PGM2-package}
\title{PGM2: Recursive Construction of Nested Resolvable Designs and Associated Uniform Designs}
\description{
Implements recursive construction methods for balanced incomplete block designs (BIBDs), their second generation, resolvable BIBDs (RBIBDs), and uniform designs (UDs) derived from projective geometries over GF(2). It enables extraction of nested structures in multiple stages and supports recursive resolution processes, as introduced in Boudraa et al. (2013).
}
\note{
This work established in same time with the article intitled:
Abla Boudraa et al., Recursive method for construction of nested
resolvable designs and uniform designs associated, International
Journal of Research and Reviews in Applied Sciences, (17), Issue 2 (2013).
}
\examples{

m<-4
X<-BIB(m)
n<-1
mat<-X$BIB
Y<-Resolvable(n,mat)   #Extract the RBIB
n<-1
mat<-X$BIB
X2<-Gen(n,mat)  #Extract the BIBD of the second generation
\dontrun{
#Algorithm of the 3rd example in the paper : (Abla Boudraa & al) IJRRAS.
#(17), Issue 2 (2013).

bib<-BIB(3)$BIB
mat<-NULL
for(i in 1:15){mat[[i]]<-Gen(i,bib)$BIB2}
x<-Reduce("rbind",mat)
e<-dim(x)[1]
b<-dim(x)[2]
v<-bib[1,]
for (i in 1:e) {for (j in 1:b) {if (any (x[i,j]==v)) {x[i,j]<-0}}}
for (i in e:1) { if (all (x[i,]==0)) {x<-x[-i,]}}
s<-x[1,]
s<-s[s>0]
h<-length(s)
f<-dim(x)[1]
x1<-matrix(nrow=f, ncol=h)
for (i in 1:f) {x1[i,]<-x[i,][x[i,]>0]}
A<-unique(x1)
UD<-Uniform(A)
}
}
\references{
D. Dugué Traité de statistique théorique et appliquée, Masson et Cie, 1958.

Gheribi-Aoulmi. Z and M. Bousseboua Recursive methods for construction of balanced n-ary block designs. Serdica Math.J (31), 2005,189-200

Fang.K.T et al., Constructions of uniform designs by using resolvable
packings and coverings. Discrete Math. (19), 2003, 692-711.

Abla Boudraa, Zebida Gheribi-Aoulmi and Mohamed Laib. Recursive method
for construction of nested resolvable designs and uniform designs associated.
International Journal of Research and Reviews in Applied Sciences. Vol. 17,
Issue 2 (2013).

Fang.K.T et al., Construction of uniform designs via super-simple
resolvable t-designs. Util. Math. (66).2004, 15-32.
}
\seealso{
Useful links:
\itemize{
  \item \url{https://mlaib.net}
}

}
\author{
Mohamed Laib,
Abla Boudraa and
Zebida Gheribi-Aoulmi

Maintainer: Mohamed Laib \email{laib.med@gmail.com}
}
