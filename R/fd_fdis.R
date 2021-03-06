#' Compute Functional Dispersion (FDis)
#'
#' @inheritParams fd_fdiv
#'
#' @inheritSection fd_fric Parallelization
#'
#' @examples
#' data(traits_birds)
#' data(site_sp_birds)
#' fd_fdis(traits_birds, site_sp_birds)
#'
#' @return a data.frame with two columns:
#' * `site` the names of the sites as the row names of the input `sp_com`,
#' * `FDis` the values of functional dispersion at each site.
#'
#' @references
#' Laliberté, E., & Legendre, P. (2010). A distance-based framework for
#' measuring functional diversity from multiple traits. Ecology, 91(1),
#' 299–305. \doi{10.1890/08-2244.1}
#'
#' @importFrom future.apply future_apply
#' @export
fd_fdis <- function(traits, sp_com) {

  if (missing(traits) | is.null(traits)) {
    stop("Please provide a trait dataset", call. = FALSE)
  }

  if (is.data.frame(traits) | is.vector(traits)) {
    traits <- as.matrix(traits)
  }

  traits <- remove_species_without_trait(traits)

  if (!missing(sp_com)) {

    common_species <- species_in_common(traits, sp_com)

    traits <- traits[common_species,, drop = FALSE]
    sp_com <- sp_com[, common_species, drop = FALSE]

  } else {

    sp_com <- matrix(1, ncol = nrow(traits),
                     dimnames = list("s1", rownames(traits)))

  }

  # Standardize abundance per site
  sp_com <- sp_com / rowSums(sp_com)

  centros <- sp_com %*% traits

  dists_centro <- future_apply(centros, 1, function(centro) {

    sqrt(colSums(t(traits) - centro)^2)

  })

  fdis_site <- diag(sp_com %*% dists_centro)

  data.frame(site = rownames(sp_com), FDis = fdis_site,
             row.names = NULL)

}
