
<!-- README.md is generated from README.Rmd. Please edit that file -->

# poissontemplate

<!-- badges: start -->

[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
[![R-CMD-check](https://github.com/poissonconsulting/poissontemplate/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/poissonconsulting/poissontemplate/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

poissontemplate provides a custom [pkgdown](https://pkgdown.r-lib.org/)
template for Poisson consulting packages. Please don’t use it for your
own package.

## Setup

In every package where you need to set up poissontemplate usage, run

``` r
poissontemplate::use_poisson_pkgdown()
```

## Installation

### Release

To install the release version from
[CRAN](https://CRAN.R-project.org/package=poissontemplate).

``` r
install.packages("poissontemplate")
```

The website for the release version is at
<https://poissonconsulting.github.io/poissontemplate/>.

### Development

To install the development version from
[r-universe](https://poissonconsulting.r-universe.dev/poissontemplate).

``` r
install.packages("poissontemplate", repos = c("https://poissonconsulting.r-universe.dev", "https://cloud.r-project.org"))
```

or from [GitHub](https://github.com/poissonconsulting/poissontemplate)

``` r
# install.packages("remotes")
remotes::install_github("poissonconsulting/poissontemplate")
```

## Relevant resources

- pkgdown documentation about theming:
  <https://pkgdown.r-lib.org/articles/customise.html#theming>
- pkgdown documentation on template packages:
  <https://pkgdown.r-lib.org/articles/customise.html#template-packages>
