\name{Gen}
\alias{Gen}
\title{
BIB second generation.
}
\description{
Extract the BIB seconde generation of any BIB constructed from a projective geometry defined on GF(2).
}
\usage{
Gen(n, mat)
}

\arguments{
  \item{n}{
The sub-variety of the block that we'll deleted.
}
  \item{mat}{
The matrix of the BIB.
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

##*****************************************
##Extract the BIB second generation
##*****************************************
n<-1
mat<-X$BIB
X2<-Gen(n,mat)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
