#' Setup an Etcd database connection
#'
#' @export
#' @param host (character) Host url. Deafault: 127.0.0.1
#' @param port (integer/numeric) Port. Default: 2379
#' @param api_version (character) etcd API version. Default: 'v2'
#' @param allow_redirect (logical) Allow redirects? Default: \code{TRUE}
#' @param scheme (character) http scheme, one of http or https. Default: http
#' @examples \dontrun{
#' (src <- src_etcd())
#' class(src)
#' }
src_etcd <- function(host = "127.0.0.1", port = 2379, api_version = "v2",
                     allow_redirect = TRUE, scheme = "http") {
  x <- etseed::etcd(host, port, api_version, allow_redirect, scheme)
  structure(x, class = c("src_etcd", "docdb_src"), version = x$version())
}

#' @export
print.src_etcd <- function(x, ...) {
  cat("src:\n")
  cat(sprintf("  etcd server: %s\n", attr(x, "version")$etcdserver))
  cat(sprintf("  etcd cluster: %s\n", attr(x, "version")$etcdcluster))
}
