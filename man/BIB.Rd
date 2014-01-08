\name{BIB}
\alias{BIB}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{
Balanced Incomplete binary Blocks Designs
}
\description{
The configuration of these designs is obtain from a projective geometry on GF(2).
}
\usage{
BIB(m)
}

\arguments{
  \item{m}{
Dimension of the projective geometry defined on GF(2).
}
}

\value{
A LIST :
\item{V }{Number of treatments in the BIB.}
\item{B }{Number of blocks of the BIB.}
\item{R }{Repetition of each treatment.}
\item{K }{Size of each block.}
\item{BIB }{The configuration of the BIB.}
}

\references{
DUGUE.D. Traite de statistique theorique et appliquee. Masson et Cie, 1958.
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
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
