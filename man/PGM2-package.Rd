\name{PGM2-package}
\alias{PGM2-package}
\alias{PGM2}
\docType{package}
\title{
Nested resolvable designs and uniform designs associated.
}
\description{
Construction method of nested resolvable design from a projective geometry defined on Galois field of order 2, which using to build uniform design.
}
\details{
\tabular{ll}{
Package: \tab PGM2\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2014-01-08\cr
License: \tab GPL-3\cr
}
}
\author{
Mohamed LAIB, Abla BOUDRAA and Zoubida Gheribi-Aoulmi

Maintainer: Mohamed LAIB <laib.med@gmail.com>
}
\references{
DUGUE.D. Traite de statistique theorique et appliquee. Masson et Cie, 1958.

GHERIBI-AOULMI. Z and BOUSSEBOUA.M. Recursive methods for construction of balanced n-ary block designs. Serdica Math.J (31), 2005,189-200

FANG.K.T, LU.X, TANG.Y and YIN.J. Constructions of uniform designs by using resolvable packings and coverings. Discrete Math. (19), 2003, 692-711.

FANG.K.T, GE. G.N, LIU.M.Q and QIN.H. Construction of uniform designs via super-simple resolvable t-designs. Util. Math. (66).2004, 15-32.
}
\note{
This work established in same time with the article intitled: Abla BOUDRAA, Zoubida Gheribi-Aoulmi and Mohamed LAIB. Recursive method for construction of nested resolvable designs and uniform designs associated. International Journal of Research and Reviews in Applied Sciences. Vol. 17, Issue 2 (2013).
}
\keyword{ package }

\examples{
##*****************************************
##BIB from PG(4,2)
##*****************************************
m<-4
X<-BIB(m)

##*****************************************
##Extract the RBIB
##*****************************************
n<-1
mat<-X$BIB
Y<-Resolvable(n,mat)

##*****************************************
##Extract the BIB seconde generation
##*****************************************
n<-1
mat<-X$BIB
X2<-Gen(n,mat)

##*****************************************
##*****************************************
#Algorithme of the 3rd example in the paper : 
#(Abla BOUDRAA & al) IJRRAS. Vol. 17, Issue 2 (2013).
#Recursive method for construction of nested resolvable 
#designs and uniform designs associated.
##*****************************************
bib<-BIB(3)$BIB;mat<-NULL
for(i in 1:15){mat[[i]]<-Gen(i,bib)$BIB2}
x<-Reduce("rbind",mat)
e<-dim(x)[1];b<-dim(x)[2]; v<-bib[1,]
for (i in 1:e) {for (j in 1:b) {if (any (x[i,j]==v)) {x[i,j]<-0}}}
for (i in e:1) { if (all (x[i,]==0)) {x<-x[-i,]}}
s<-x[1,]; s<-s[s>0];h<-length(s); f<-dim(x)[1]
x1<-matrix(nrow=f, ncol=h)
for (i in 1:f) {x1[i,]<-x[i,][x[i,]>0]}
A<-unique(x1)
UD<-Uniform(A)
}
