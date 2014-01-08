\name{Uniform}
\alias{Uniform}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Construction of uniforms designs
}
\description{
Build the uniform design using a RBIBD
}
\usage{
Uniform(mat)
}

\arguments{
  \item{mat}{
The matrix of the RBIBD
}
}

\value{
A LIST :
\item{n }{Number of experiments.}
\item{F }{The dimension of the design.}
\item{UD }{The configuration of the uniform design.}
}

\references{
FANG.K.T, LU.X, TANG.Y and YIN.J. Constructions of uniform designs by using resolvable packings and coverings. Discrete Math. (19), 2003, 692-711.

FANG.K.T, GE. G.N, LIU.M.Q and QIN.H. Construction of uniform designs via super-simple resolvable t-designs. Util. Math. (66).2004, 15-32.
}
\author{
Mohamed LAIB, Abla BOUDRAA and Zoubida Gheribi-Aoulmi
}


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
##Uniform design
##*****************************************
ud<-Uniform(Y$RBIB)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
