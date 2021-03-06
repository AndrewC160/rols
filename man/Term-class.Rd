\name{Term-class}
\Rdversion{1.1}
\docType{class}
\alias{Term}
\alias{class:Term}
\alias{Term-class}

\alias{Terms}
\alias{class:Terms}
\alias{Terms-class}

\alias{termLabel}
\alias{termLabel,Term-method}
\alias{termLabel,Terms-method}

\alias{termNamespace}
\alias{termNamespace,Term-method}
\alias{termNamespace,Terms-method}

\alias{termOntology}
\alias{termOntology,Term-method}
\alias{termOntology,Terms-method}

\alias{termSynonym}
\alias{termSynonym,Term-method}
\alias{termSynonym,Terms-method}

\alias{termDesc}
\alias{termDesc,Term-method}
\alias{termDesc,Terms-method}

\alias{termPrefix}
\alias{termPrefix,Term-method}
\alias{termPrefix,Terms-method}

\alias{show,Term-method}
\alias{show,Terms-method}

\alias{termId}
\alias{termId,Term-method}
\alias{termId,Terms-method}

\alias{isObsolete}
\alias{isObsolete,Term-method}
\alias{isObsolete,Terms-method}

\alias{isRoot}
\alias{isRoot,Term-method}
\alias{isRoot,Terms-method}

\alias{coerce,Term,data.frame-method}
\alias{coerce,Terms,data.frame-method}
\alias{as.Term.data.frame}
\alias{as.Terms.data.frame}

\alias{terms}
\alias{term}
\alias{term,Ontology,character-method}
\alias{term,character,character-method}
\alias{terms,Ontology-method}
\alias{terms,character-method}

\alias{children}
\alias{parents}
\alias{ancestors}
\alias{descendants}
\alias{partOf}
\alias{derivesFrom}

\alias{unique,Terms-method}
\alias{length,Terms-method}
\alias{lapply,Terms-method}
\alias{[,Terms-method}
\alias{[[,Terms-method}

\alias{all.equal,Term,Term-method}
\alias{all.equal,Terms,Terms-method}

\title{Class \code{"Term"}}

\description{

  The \code{Term} class describes an ontology term. A set of terms are
  instantiated as a \code{Terms} class.
  
}

\section{Objects from the Class}{
  
  Objects can be created using the \code{term} and \code{terms}
  functions. The latter is used with an object of class
  \code{\linkS4class{Ontology}} or a \code{character} describing a valid
  ontology prefix to download and instantiate all terms of an ontology
  of interest. The former takes an \code{Ontology} object (or an
  ontology prefix) and a term identifer to instantiate that specific
  term. See also the 'Methods and functions' sections.

  For any given \code{Term} object, the \code{children}, \code{parents},
  \code{ancestors}, \code{descendants}, \code{partOf} and
  \code{derivesFrom} terms can be generated and returned as \code{Terms}
  objects.

  \code{Terms} instances can be subset with \code{[} and \code{[[} and
  iterated over with \code{lapply}.
  
}

\section{Slots}{
  \describe{
    \item{\code{iri}:}{Object of class \code{"character"} ~~ }
    \item{\code{label}:}{Object of class \code{"character"} ~~ }
    \item{\code{description}:}{Object of class \code{"NullOrList"} ~~ }
    \item{\code{annotation}:}{Object of class \code{"list"} ~~ }
    \item{\code{synonym}:}{Object of class \code{"NullOrList"} ~~ }
    \item{\code{ontology_name}:}{Object of class \code{"character"} ~~ }
    \item{\code{ontology_prefix}:}{Object of class \code{"character"} ~~ }
    \item{\code{ontology_iri}:}{Object of class \code{"character"} ~~ }
    \item{\code{is_obsolete}:}{Object of class \code{"logical"} ~~ }
    \item{\code{is_defining_ontology}:}{Object of class \code{"logical"} ~~ }
    \item{\code{has_children}:}{Object of class \code{"logical"} ~~ }
    \item{\code{is_root}:}{Object of class \code{"logical"} ~~ }
    \item{\code{short_form}:}{Object of class \code{"character"} ~~ }
    \item{\code{obo_id}:}{Object of class \code{"NullOrChar"} ~~ }
    \item{\code{links}:}{Object of class \code{"list"} ~~ }
  }
}

\section{Methods and functions}{
  \describe{

    \item{term}{\code{signature(object = "Ontology", id = "character")}:
      ... }
    
    \item{terms}{\code{signature(x = "Ontology", pagesize = "numeric")}: ... }
    
    \item{termDesc}{\code{signature(object = "Term")}: ... }
    
    \item{termLabel}{\code{signature(object = "Term")}: ... }
    
    \item{termPrefix}{\code{signature(object = "Term")}: ... }

    \item{termSynonym}{\code{signature(object = "Term")}: ... }

    \item{termNamespace}{\code{signature(object = "Term")}: ... }

    \item{termOntology}{\code{signature(object = "Term")}: ... }

    \item{isRoot}{\code{signature(object = "Term")}: ... }

    \item{isObsolete}{\code{signature(object = "Term")}: ... }
    
    \item{termId}{\code{signature(object = "Term")}: ... }

    \item{children}{\code{signature(object = "Term")}: Returns a new
      \code{Terms} instance with the \code{object}'s
      children. \code{NULL} if there are not children. }

    \item{parents}{\code{signature(object = "Term")}: Returns a new
      \code{Terms} instance with the \code{object}'s
      parents. \code{NULL} if there are not parents.}
    
    \item{ancestors}{\code{signature(object = "Term")}: Returns a new
      \code{Terms} instance with the \code{object}'s
      ancestors. \code{NULL} if there are not ancestors. }
    
    \item{descendants}{\code{signature(object = "Term")}: Returns a new
      \code{Terms} instance with the \code{object}'s
      descendants. \code{NULL} if there are not descendants. }

    \item{partOf}{\code{signature(object = "Term")}: Returns a new
      \code{Terms} instance with terms the \code{object}'s is a part
      of. \code{NULL} if none. }

    \item{derivesFrom}{\code{signature(object = "Term")}: Returns a new
      \code{Terms} instance with terms the \code{object}'s is derived
      from. \code{NULL} if none. }
    
    \item{show}{\code{signature(object = "Term")}: ... }

    \item{show}{\code{signature(object = "Terms")}: ... }

    \item{all.equal}{\code{signature(target = "Term", current =
	"Term")}: ... }
    
    \item{all.equal}{\code{signature(target = "Terms", current =
	"Terms")}: ... }
    
    \item{length}{\code{signature(object = "Terms")}: returns the number
      of ontolgies described by the \code{Terms} object. }

    \item{unique}{\code{signature(x = "Terms")}: returns a new
      \code{Terms} object where all duplicated \code{Term} instances,
      i.e. those with the same term id (even when stemming from
      different ontologies), have been removed (only the first occurence
      is retained). }

    \item{\code{as(x, "data.fram")}}{Coerces a single \code{Term} or
      \code{Terms} into a \code{data.frame} of length 1 (for the former)
      or length \code{length(x)} for the latter. The result will contain
      the following columns: id, label, description of the term(s),
      their ontology, whether they are obsolete, have children or are
      root node, the first synonym only, their iri and whether they are
      defining the ontology. Any missing value will be reported as
      \code{NA}. }
    
  }
  
}

\author{
  Laurent Gatto <lg390@cam.ac.uk>
}


\examples{

## (all) terms
(gotrms <- terms("go", pagesize = 10000))

\dontrun{
    ## or, using on ontology object
    go <- Ontology("go")
    gotrms <- terms(go, pagesize = 10000)
}

as(gotrms[1:10], "data.frame") ## data,frame with 10 rows

## (one) term
(trm <- gotrms[[1]])
termPrefix(trm)
gotrms[1:3]
gotrms[["GO:0005230"]]

as(trm, "data.frame") ## data,frame with 1 row

## using an Ontology object
go <- Ontology("GO")
term(go, "GO:0032801")
## using an ontology prefix
term("GO", "GO:0032801")

isObsolete(gotrms[["GO:0005230"]])
isObsolete(gotrms[["GO:0005232"]])

isRoot(gotrms[["GO:0005230"]])
isRoot(gotrms[["GO:0005232"]])

i <- isRoot(gotrms) & !isObsolete(gotrms)
gotrms[i]
for (ii in which(i))
    show(gotrms[[ii]])

## or, directly querying the ontology
olsRoot(go)

parents(trm)
ancestors(trm)
children(trm)
descendants(trm)

partOf(gotrms[["GO:0044429"]])
partOf(term("BTO", "BTO:0000142"))

derivesFrom(term("BTO", "BTO:0002600"))
derivesFrom(term("BTO", "BTO:0001023"))

}

\keyword{classes}
