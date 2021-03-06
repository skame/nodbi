% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/src.R
\name{src}
\alias{src}
\title{Setup database connections}
\description{
Setup database connections
}
\details{
There is a \code{src_*()} function to setup a connection to each
of the database backends. Each has their own unique set of parameters.

\itemize{
 \item Redis - \code{src_redis}
 \item rlite - \code{src_rlite}
 \item CouchDB - \code{\link{src_couchdb}}
 \item Etcd - \code{\link{src_etcd}}
 \item Elasticsearch - \code{\link{src_elasticsearch}}
}
}
