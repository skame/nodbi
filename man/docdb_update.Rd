% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/update.R
\name{docdb_update}
\alias{docdb_update}
\title{Update documents}
\usage{
docdb_update(src, key, value, ...)
}
\arguments{
\item{src}{source object, result of call to src}

\item{key}{A key. See Details.}

\item{value}{A value}

\item{...}{Ignored}
}
\description{
Update documents
}
\details{
Note that with etcd, you have to prefix a key with a forward slash.
}
\examples{
\dontrun{
# CouchDB
src <- src_couchdb()
docdb_create(src, "mtcars2", mtcars)
docdb_get(src, "mtcars2")

mtcars$letter <- sample(letters, NROW(mtcars), replace = TRUE)
docdb_update(src, "mtcars2", mtcars)
docdb_get(src, "mtcars2")
}
}
