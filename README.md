# TreeSearch

[![Build Status](https://travis-ci.org/ms609/TreeSearch.svg?branch=master)](https://travis-ci.org/ms609/TreeSearch)
[![codecov](https://codecov.io/gh/ms609/TreeSearch/branch/master/graph/badge.svg)](https://codecov.io/gh/ms609/TreeSearch)
[![CRAN Status Badge](http://www.r-pkg.org/badges/version/TreeSearch)](https://cran.r-project.org/package=TreeSearch)
[![CRAN RStudio mirror downloads](http://cranlogs.r-pkg.org/badges/grand-total/TreeSearch)](https://cran.r-project.org/package=TreeSearch)
[![DOI](https://zenodo.org/badge/98171642.svg)](https://zenodo.org/badge/latestdoi/98171642)<!--[![Project Status: Inactive – The project has reached a stable, usable state but is no longer being actively developed; support/maintenance will be provided as time allows.](http://www.repostatus.org/badges/latest/inactive.svg)](http://www.repostatus.org/#inactive)
-->
[![Project Status: Active – – The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)

"TreeSearch" (Smith 2021) is an R package that contains a "shiny" user interface for 
interactive tree search and exploration of results, including character
visualization,
[rogue taxon detection](https://ms609.github.io/Rogue) (Smith 2022a),
[tree space mapping](https://ms609.github.io/TreeDist/articles/treespace.html)
(Smith 2022b),
and cluster consensus trees.

Inapplicable character states are handled using the algorithm of Brazeau,
Guillerme and Smith (2019) using the "Morphy" C library (Brazeau _et al_. 2017).
Implied weighting (Goloboff, 1993),
Profile Parsimony (Faith and Trueman, 2001)
and Successive Approximations (Farris, 1969)
are implemented; 
[custom optimality criteria](https://ms609.github.io/TreeSearch/articles/custom.html)
and search approaches can also be defined.


# Installation

Full installation instructions, including notes on installing R, are available
in a [vignette](https://ms609.github.io/TreeSearch/articles/getting-started.html).

Install and load the stable version from CRAN as follows:

```r
install.packages("TreeSearch")
library("TreeSearch")
```

Install and load the development version of "TreeSearch" with:

```r
remotes::install_github("ms609/TreeSearch")
library("TreeSearch")
```

# Errors reading trees

Some users are reporting an error when loading trees from Nexus files:
` Error in [<-.multiPhylo: argument "..1" is missing, with no default  `

This arises due to an underlying issue in the "ape" package, which can be fixed by installing a patch:

```r
remotes::install_github("ms609/ape@patch-3")
```

(You may first need to exit and re-launch R to be sure that the "ape" package is not in use.)

# Quick start

Launch a graphical user interface (development version only)
by typing `TreeSearch::EasyTrees()` in the R console.

For more control over search settings, see [`?MaximizeParsimony()`](https://ms609.github.io/TreeSearch/reference/MaximizeParsimony.html).


# Documentation

- [Package functions](https://ms609.github.io/TreeSearch/reference) reference manual
- [Getting started](https://ms609.github.io/TreeSearch/articles/getting-started.html)
- [Using the GUI](https://ms609.github.io/TreeSearch/articles/tree-search.html)
- [Loading phylogenetic data into R](https://ms609.github.io/TreeTools/articles/load-data.html)
- [Parsimony search with inapplicable data](https://ms609.github.io/TreeSearch/articles/tree-search.html)

- [Calculating concavity profiles](https://ms609.github.io/TreeSearch/articles/profile-scores.html) for Profile Parsimony
- [Tree search with profile parsimony](https://ms609.github.io/TreeSearch/articles/profile.html)

Please note that the 'TreeSearch' project is released with a
[Contributor Code of Conduct](CODE_OF_CONDUCT.md).
By contributing to this project, you agree to abide by its terms.

# References

Brazeau M. D., Smith M. R., Guillerme T. (2017). 
  MorphyLib: a library for phylogenetic analysis of categorical trait data with inapplicability.
  doi: [10.5281/zenodo.815372](https://doi.org/10.5281/zenodo.815372).

Brazeau, M. D., Guillerme, T. and Smith, M. R. (2019).
  An algorithm for morphological phylogenetic analysis with inapplicable data. 
  Systematic Biology, 68(4), 619-631.
  doi: [10.1093/sysbio/syy083](https://dx.doi.org/10.1093/sysbio/syy083).

Faith D. P., Trueman J. W. H. (2001).
  Towards an inclusive philosophy for phylogenetic inference.
  Systematic Biology, 50(3), 331–350. 
  doi: [10.1080/10635150118627](https://doi.org/10.1080/10635150118627).

Farris, J. S. (1969). A successive approximations approach to character weighting. 
  Systematic Biology, 18(4), 374–385.
  doi: [10.2307/2412182](https://dx.doi.org/10.2307/2412182).

Goloboff, P. A. (1993).
  Estimating character weights during tree search.
  Cladistics, 9(1), 83–91.
  doi: [10.1111/j.1096-0031.1993.tb00209.x](https://doi.org/10.1111/j.1096-0031.1993.tb00209.x).

Goloboff, P. A., Torres, A., Arias, J. S. (2018).
  Weighted parsimony outperforms other methods of phylogenetic inference under 
  models appropriate for morphology.
  Cladistics, 34(4), 407–437. doi: [10.1111/cla.12205](https://doi.org/10.1111/cla.12205).
  
Smith, M. R. (2021).
  TreeSearch: morphological phylogenetic analysis in R.
  BioR&chi;iv. doi: [10.1101/2021.11.08.467735](https://www.biorxiv.org/content/10.1101/2021.11.08.467735.full.pdf).

Smith, M. R. (2022a).
  Using information theory to detect rogue taxa and improve phylogenetic trees.
  Systematic Biology, syab099.
  doi: [10.1093/sysbio/syab099](https://dx.doi.org/10.1093/sysbio/syab099)

Smith, M. R. (2022b).
  Robust analysis of phylogenetic tree space.
  Systematic Biology, syab100.
  doi: [10.1093/sysbio/syab100](https://dx.doi.org/10.1093/sysbio/syab100)
