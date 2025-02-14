% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PlotCharacter.R
\name{PlotCharacter}
\alias{PlotCharacter}
\title{Plot the distribution of a character on a tree}
\usage{
PlotCharacter(
  tree,
  dataset,
  char = 1L,
  updateTips = FALSE,
  plot = TRUE,
  tokenCol = NULL,
  ambigCol = "grey",
  inappCol = "lightgrey",
  ambigLty = "dotted",
  inappLty = "dashed",
  plainLty = par("lty"),
  tipOffset = 1,
  unitEdge = FALSE,
  ...
)
}
\arguments{
\item{tree}{A tree of class \code{\link{phylo}}.}

\item{dataset}{A phylogenetic data matrix of \pkg{phangorn} class
\code{phyDat}, whose names correspond to the labels of any accompanying tree.}

\item{char}{Index of character to plot.}

\item{updateTips}{Logical; if \code{FALSE}, tips will be labelled with their
original state in \code{dataset}.}

\item{plot}{Logical specifying whether to plot the output.}

\item{tokenCol}{Palette specifying colours to associate with each token in
turn, in the sequence listed in \code{attr(dataset, 'levels')}.}

\item{ambigCol, ambigLty, inappCol, inappLty, plainLty}{Colours and line types
to apply to ambiguous, inapplicable and applicable tokens.  See the \code{lty}
\link{graphical parameter} for details of line styles.  Overrides \code{tokenCol}.}

\item{tipOffset}{Numeric: how much to offset tips from their labels.}

\item{unitEdge}{Logical: Should all edges be plotted with a unit length?}

\item{\dots}{Further arguments to pass to \code{plot.phylo()}.}
}
\value{
\code{PlotCharacter()} returns a matrix in which each row corresponds
to a numbered tip or node of \code{tree}, and each column corresponds to a
token; the tokens that might parsimoniously be present at each point
on a tree are denoted with \code{TRUE}.
}
\description{
Reconstructs the distribution of a character on a tree topology using the
modified Fitch algorithm presented in
\insertCite{Brazeau2019;textual}{TreeSearch}.
}
\examples{
# Set up plotting area
oPar <- par(mar = rep(0, 4))

tree <- ape::read.tree(text = 
  "((((((a, b), c), d), e), f), (g, (h, (i, (j, (k, l))))));")
## A character with inapplicable data
dataset <- TreeTools::StringToPhyDat("23--1??--032", tips = tree)
PlotCharacter(tree, dataset)

# Character from a real dataset 
data("Lobo", package = "TreeTools")
dataset <- Lobo.phy
tree <- TreeTools::NJTree(dataset)
PlotCharacter(tree, dataset, 14)
par(oPar)
}
\references{
\insertAllCited{}
}
\author{
\href{https://smithlabdurham.github.io/}{Martin R. Smith}
(\href{mailto:martin.smith@durham.ac.uk}{martin.smith@durham.ac.uk})
}
