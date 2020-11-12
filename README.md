
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fundiversity

<!-- badges: start -->

[![Lifecycle:
maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
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
#>    site     FRic
#> s1   s1 230967.7
```

## Related Packages

| Package Name                                           | Indices included                                            | Has tests            | On GitHub            | On CRAN              | Last updated (CRAN) |
| ------------------------------------------------------ | ----------------------------------------------------------- | -------------------- | -------------------- | -------------------- | ------------------- |
| [`FD`](https://github.com/cran/FD)                     | FRic, FDiv, FDis, FEve, Rao’s QE, Functional Group Richness | :x:                  | :x:                  | :white\_check\_mark: | 2014-08-19          |
| [`adiv`](https://github.com/cran/adiv)                 | Functional Entropy, Functional Redundancy                   | :x:                  | :x:                  | :white\_check\_mark: | 2020-08-26          |
| [`betapart`](https://github.com/cran/betapart)         | Functional β-diversity                                      | :x:                  | :x:                  | :white\_check\_mark: | 2020-09-09          |
| [`entropart`](https://github.com/EricMarcon/entropart) | Functional Entropy                                          | :white\_check\_mark: | :white\_check\_mark: | :white\_check\_mark: | 2020-01-22          |
| [`hillR`](https://github.com/daijiang/hillR)           | Functional Diversity Hill Number                            | :white\_check\_mark: | :white\_check\_mark: | :white\_check\_mark: | 2020-07-07          |
| [`fundiv`](https://github.com/ibartomeus/fundiv)       | FRic, FDiv, FDis, FEve, Rao’s QE, dendrogram FD             | :x:                  | :white\_check\_mark: | :x:                  | \-                  |
| [`vegan`](https://github.com/vegandevs/vegan)          | Only dendrogram-based FD (`treedive()`)                     | :white\_check\_mark: | :white\_check\_mark: | :white\_check\_mark: | 2019-09-01          |
| [`TPD`](https://github.com/cran/TPD)                   | FRic, FDiv, FEve but for probability distributions          | :x:                  | :x:                  | :white\_check\_mark: | 2019-07-02          |
