
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fundiversity

<!-- badges: start -->

[![Lifecycle:
maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
[![R build
status](https://github.com/Bisaloo/fundiversity/workflows/R-CMD-check/badge.svg)](https://github.com/Bisaloo/fundiversity/actions)
<!-- badges: end -->

The goal of fundiversity is to provide a package to compute common
functional diversity indices. The package is built using clear, public
[design
principles](https://github.com/Bisaloo/fundiversity/wiki/Design-principles)
inspired from our own experience and user feedback. We also strive to
use the latest good practice in software and R package development.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("Bisaloo/fundiversity")
```

## Example

You can compute functional diversity indices through the functions
`fd_fric()`, `fd_fdiv()`, and `fd_rao()`:

``` r
library(fundiversity)

# Get trait data included in the package
data("traits_birds")

# Compute Functional Richness of all birds included
fd_fric(traits_birds)
#> [1] 230967.7
```

## Related Packages

We only mention here packages that propose original indices and not
wrappers around these packages.

| Package Name                                           | Indices included                                            | Has tests            | On GitHub            | On CRAN (last updated)                                     |
| ------------------------------------------------------ | ----------------------------------------------------------- | -------------------- | -------------------- | ---------------------------------------------------------- |
| [`FD`](https://github.com/cran/FD)                     | FRic, FDiv, FDis, FEve, Rao’s QE, Functional Group Richness | :x:                  | :x:                  | ![](https://www.r-pkg.org/badges/last-release/FD)          |
| [`adiv`](https://github.com/cran/adiv)                 | Functional Entropy, Functional Redundancy                   | :x:                  | :x:                  | ![](https://www.r-pkg.org/badges/last-release/adiv)        |
| [`betapart`](https://github.com/cran/betapart)         | Functional β-diversity                                      | :x:                  | :x:                  | ![](https://www.r-pkg.org/badges/last-release/betapart)    |
| [`entropart`](https://github.com/EricMarcon/entropart) | Functional Entropy                                          | :white\_check\_mark: | :white\_check\_mark: | ![](https://www.r-pkg.org/badges/last-release/entropart)   |
| [`hillR`](https://github.com/daijiang/hillR)           | Functional Diversity Hill Number                            | :white\_check\_mark: | :white\_check\_mark: | ![](https://www.r-pkg.org/badges/last-release/hillR)       |
| [`vegan`](https://github.com/vegandevs/vegan)          | Only dendrogram-based FD (`treedive()`)                     | :white\_check\_mark: | :white\_check\_mark: | ![](https://www.r-pkg.org/badges/last-release/vegan)       |
| [`TPD`](https://github.com/cran/TPD)                   | FRic, FDiv, FEve but for probability distributions          | :x:                  | :x:                  | ![](https://www.r-pkg.org/badges/last-release/TPD)         |
| [`hypervolume`](https://github.com/cran/hypervolume)   | Hypervolume measure functional diversity (\~FRic)           | :x:                  | :white\_check\_mark: | ![](https://www.r-pkg.org/badges/last-release/hypervolume) |
| [`BAT`](https://github.com/cran/BAT)                   | β-, Richness, divergence, and evenness with hypervolumes    | :x:                  | :white\_check\_mark: | ![](https://www.r-pkg.org/badges/last-release/BAT)         |
