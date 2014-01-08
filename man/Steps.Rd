\name{Steps}
\alias{Steps}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Nested resolvable designs and uniform designs associated.
}
\description{
Give the differents stages of nested design begening from a projective geometry, BIBD, BIBD seconde generation, RBIBD and uniform designs associate
}
\usage{
Steps(m, n, stage = "all")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{m}{
Dimension of the projective geometry defined on GF(2).
}
  \item{n}{
The sub-variety of the block that we'll deleted, to extract the BIB seconde generation.
}
  \item{stage}{
Stage of recurrence wanted (single value or vector) :
'all' Print all designs.
'S1' Print the configurations of BIB of first generation.
'S2' Print the configurations of BIB of seconde generation.
'S3' Print the configurations of RBIB.
'S4' Print the configurations of the uniform designs associate to each nested resolvable.
}
}

\value{
A LIST, with the parametrs and the configurations on each stages of recurrence.
}
\references{
GHERIBI-AOULMI. Z and BOUSSEBOUA.M. Recursive methods for construction of balanced n-ary block designs. Serdica Math.J (31), 2005,189-200
}
\author{
M.LAIB, A.BOUDRAA and Z.Gheribi-Aoulmi
}
\examples{
##*****************************************
##Get all stages : of the PG(4,2)
##*****************************************
list1<-Steps(4,1)

##*****************************************
##Get the 2 first stages : of the PG(4,2)
##*****************************************
list2<-Steps(4,1,c('S1','S2'))

##*****************************************
##Get the first & the last stage : of the PG(4,2)
##*****************************************
list3<-Steps(4,1,c('S1','S4'))

##*****************************************
##Get the last stage : of the PG(4,2)
##*****************************************
list4<-Steps(4,1,'S4')

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
