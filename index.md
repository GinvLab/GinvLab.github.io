@def title = "G⁻¹Lab"
@def tags = ["syntax", "code"]

# G⁻¹Lab 

\tableofcontents <!-- you can use \toc as well -->

## Overview

**G⁻¹Lab** is a framework to solve forward and inverse geophysical problems either using deterministic (optimization) or probabilistic (Monte Carlo) methods. It includes several packages addressing seismological and potential fields problems and algorithms to solve the related inverse problems. 
 

**G⁻¹Lab** is a superset of the **HMCLab** framework and has thus absorbed all the HMCLab packages. Please see the following paper for more detailed info:

 * Andrea Zunino, Lars Gebraad, Alessandro Ghirotto, Andreas Fichtner, **HMCLab: a framework for solving diverse geophysical inverse problems using the Hamiltonian Monte Carlo method**, Geophysical Journal International, Volume 235, Issue 3, December 2023, Pages 2979–2991  [https://doi.org/10.1093/gji/ggad403](https://doi.org/10.1093/gji/ggad403)


## Installation

The easiest way to install packages from G⁻¹Lab is to first add the `G⁻¹Lab` Julia registry and then install the packages by simply issuing `add` in the package manager mode. To do so, first enter into the package manager mode in Julia by typing "]" at the REPL prompt and add the `G⁻¹Lab` registry as follows
```julia
(@v1.10) pkg> registry add https://github.com/GinvLab/GinvLabRegistry
```
Then add a package, such as, for instance, `EikonalSolvers`, by simply issuing
```julia
(@v1.10) pkg> add EikonalSolvers
```

## Packages

G⁻¹Lab comprises a set of packages for solving forward and inverse geophysical problems. The Julia code is hosted at [https://github.com/GinvLab](https://github.com/GinvLab). Here below a list of the currently available packages along with a short description. Refer to the each package's documentation for more info. 
**Packages are still evolving and thus somewhat work in progress. Moreover, some packages are currently still offline.** 

Forward and gradient calculations:
  
  * [SeismicWaves.jl](https://github.com/GinvLab/SeismicWaves.jl) [[docs](https://ginvlab.github.io/SeismicWaves.jl)] 2D and 3D acoustic and elastic (3D elastic is currently work in progress) seismic wave propagation and gradients using the adjoint state method.
  
  * [EikonalSolvers.jl](https://github.com/GinvLab/EikonalSolvers.jl) [[docs](https://ginvlab.github.io/EikonalSolvers.jl)] Seismic traveltime computations by solving the eikonal equation in 2D and 3D using the fast-marching method for forward calculations and the adjoint state method to compute gradients.
  
  * [MagGravPoly.jl](https://github.com/GinvLab/MagGrav2Dpoly.jl) [[docs](https://ginvlab.github.io/MagGrav2Dpoly.jl)] Magnetic and gravity anomalies calculations for polygonal shapes in 2D or 2.75D (3D is work in progress).
   
  * [GeophPriors.jl](https://github.com/GinvLab/GeophPriors.jl) [[docs](https://ginvlab.github.io/GeophPriors.jl)] Priors useful for geophysical inverse problems, including a multivariate Beta prior with a Normal copula.
  
  * [ReflSeismoAD.jl](https://github.com/GinvLab/ReflSeismoAD.jl) [[docs](https://ginvlab.github.io/ReflSeismoAD.jl)] AVA seismic data and rock physics models in 1-2-3D.
  
Inversion algorithms:

  * [InverseAlgos.jl](https://github.com/GinvLab/InverseAlgos.jl) [[docs](https://ginvlab.github.io/InverseAlgos.jl)] Inversion algorithm subdivided in three sub-modules/categories:

    - **Hamiltonian Monte Carlo** and "classic" **Metropolis-Hastings** samplers. Includes the "plain" HMC, the NUTS algorithms et al..
    - **Optimization**. Currently only the L-BFGS algorithm (with optional box constraints) is implemented.
    - **Linear inverse problems under Gaussian uncertainties**. Kronecker product-based inversion (`KronLinInv`) and classic least squares.
	  

Examples/tutorials:

  * [GinvLab-examples](https://github.com/GinvLab/GinvLab-examples.jl) [[docs](https://ginvlab.github.io/GinvLab-examples.jl)] A set of scripts and Jupyter notebooks illustrating some simple example problems solved using the packages part of G⁻¹Lab.




<!-- Ps: if you want to modify the header or footer or the general look of the website, adjust the files in -->
<!-- * `src/_css/` and -->
<!-- * `src/_html_parts/`. -->

<!-- ## The base with Markdown -->

<!-- The [standard markdown syntax](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) can be used such as titles using `#`, lists: -->

<!-- * element with **bold** -->
<!-- * element with _emph_ -->

<!-- or code-blocks `inline` or with highlighting (note the `@def hascode = true` in the source to allow [highlight.js](https://highlightjs.org/) to do its job): -->

<!-- ```julia -->
<!-- abstract type Point end -->
<!-- struct PointR2{T<:Real} <: Point -->
<!--     x::T -->
<!--     y::T -->
<!-- end -->
<!-- struct PointR3{T<:Real} <: Point -->
<!--     x::T -->
<!--     y::T -->
<!--     z::T -->
<!-- end -->
<!-- function len(p::T) where T<:Point -->
<!--   sqrt(sum(getfield(p, η)^2 for η ∈ fieldnames(T))) -->
<!-- end -->
<!-- ``` -->

<!-- You can also quote stuff -->

<!-- > You must have chaos within you to ... -->

<!-- or have tables: -->

<!-- | English         | Mandarin   | -->
<!-- | --------------- | ---------- | -->
<!-- | winnie the pooh | 维尼熊      | -->

<!-- Note that you may have to do a bit of CSS-styling to get these elements to look the way you want them (the same holds for the whole page in fact). -->

<!-- ### Symbols and html entities -->

<!-- If you want a dollar sign you have to escape it like so: \$, you can also use html entities like so: &rarr; or &pi; or, if you're using Juno for instance, you can use `\pi[TAB]` to insert the symbol as is: π (it will be converted to a html entity).[^1] -->

<!-- If you want to show a backslash, just use it like so: \ ; if you want to force a line break, use a ` \\ ` like \\ so (this is on a new line).[^blah] -->

<!-- If you want to show a backtick, escape it like so: \` and if you want to show a tick in inline code use double backticks like ``so ` ...``. -->

<!-- Footnotes are nice too: -->

<!-- [^1]: this is the text for the first footnote, you can style all this looking at `.fndef` elements; note that the whole footnote definition is _expected to be on the same line_. -->
<!-- [^blah]: and this is a longer footnote with some blah from veggie ipsum: turnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. -->

<!-- ## Basic Franklin extensions -->

<!-- ### Divs -->

<!-- It is sometimes useful to have a short way to make a part of the page belong to a div so that it can be styled separately. -->
<!-- You can do this easily with Franklin by using `@@divname ... @@`. -->
<!-- For instance, you could want a blue background behind some text. -->

<!-- @@colbox-blue -->
<!-- Here we go! (this is styled in the css sheet with name "colbox-blue"). -->
<!-- @@ -->

<!-- Since it's just a `<div>` block, you can put this construction wherever you like and locally style your text. -->

<!-- ### LaTeX and Maths -->

<!-- Essentially three things are imitated from LaTeX -->

<!-- 1. you can introduce definitions using `\newcommand` -->
<!-- 1. you can use hyper-references with `\eqref`, `\cite`, ... -->
<!-- 1. you can show nice maths (via KaTeX) -->

<!-- The definitions can be introduced in the page or in the `config.md` (in which case they're available everywhere as opposed to just in that page). -->
<!-- For instance, the commands `\scal` and `\R` are defined in the config file (see `src/config.md`) and can directly be used whereas the command `\E` is defined below (and therefore only available on this page): -->

<!-- \newcommand{\E}[1]{\mathbb E\left[#1\right]} -->

<!-- Now we can write something like -->

<!-- $$  \varphi(\E{X}) \le \E{\varphi(X)}. \label{equation blah} $$ -->

<!-- since we've given it the label `\label{equation blah}`, we can refer it like so: \eqref{equation blah} which can be convenient for pages that are math-heavy. -->

<!-- In a similar vein you can cite references that would be at the bottom of the page: \citep{noether15, bezanson17}. -->

<!-- **Note**: the LaTeX commands you define can also incorporate standard markdown (though not in a math environment) so for instance let's define a silly `\bolditalic` command. -->

<!-- \newcommand{\bolditalic}[1]{_**!#1**_} <\!--_ ignore this comment, it helps atom to not get confused by the trailing underscore when highlighting the code but is not necessary.-\-> -->

<!-- and use it \bolditalic{here for example}. -->

<!-- Here's another quick one, a command to change the color: -->

<!-- \newcommand{\col}[2]{~~~<span style="color:~~~#1~~~">~~~!#2~~~</span>~~~} -->

<!-- This is \col{blue}{in blue} or \col{#bf37bc}{in #bf37bc}. -->

<!-- ### A quick note on whitespaces -->

<!-- For most commands you will use `#k` to refer to the $k$-th argument as in LaTeX. -->
<!-- In order to reduce headaches, this forcibly introduces a whitespace on the left of whatever is inserted which, usually, changes nothing visible (e.g. in a math settings). -->
<!-- However there _may be_ situations where you do not want this to happen and you know that the insertion will not clash with anything else. -->
<!-- In that case, you should simply use `!#k` which will not introduce that whitespace. -->
<!-- It's probably easier to see this in action: -->

<!-- \newcommand{\pathwith}[1]{`/usr/local/bin/#1`} -->
<!-- \newcommand{\pathwithout}[1]{`/usr/local/bin/!#1`} -->

<!-- * with: \pathwith{script.jl}, there's a whitespace you don't want 🚫 -->
<!-- * without: \pathwithout{script.jl} here there isn't ✅ -->

<!-- ### Raw HTML -->

<!-- You can include raw HTML by just surrounding a block with `~~~`. -->
<!-- Not much more to add. -->
<!-- This may be useful for local custom layouts like having a photo next to a text in a specific way. -->

<!-- ~~~ -->
<!-- <div class="row"> -->
<!--   <div class="container"> -->
<!--     <img class="left" src="/assets/rndimg.jpg"> -->
<!--     <p> -->
<!--     Marine iguanas are truly splendid creatures. They're found on the Gálapagos islands, have skin that basically acts as a solar panel, can swim and may have the ability to adapt their body size depending on whether there's food or not. -->
<!--     </p> -->
<!--     <p> -->
<!--     Evolution is cool. -->
<!--     </p> -->
<!--     <div style="clear: both"></div>       -->
<!--   </div> -->
<!-- </div> -->
<!-- ~~~ -->

<!-- **Note 1**: again, entire such blocks can be made into latex-like commands via `\newcommand{\mynewblock}[1]{...}`. -->

<!-- **Note 2**: whatever is in a raw HTML block is *not* further processed (so you can't have LaTeX in there for instance). A partial way around this is to use `@@...` blocks which *will* be recursively parsed. The following code gives the same result as above with the small difference that there is LaTeX being processed in the inner div. -->

<!-- @@row -->
<!-- @@container -->
<!-- @@left ![](/assets/rndimg.jpg) @@ -->
<!-- @@ -->
<!-- Marine iguanas are **truly splendid** creatures. They're not found in equations like $\exp(-i\pi)+1$. But they're still quite cool. -->
<!-- ~~~ -->
<!-- <div style="clear: both"></div> -->
<!-- ~~~ -->
<!-- @@ -->

<!-- ## Pages and structure -->

<!-- Here are a few empty pages connecting to the menu links to show where files can go and the resulting paths. (It's probably best if you look at the source folder for this). -->

<!-- * [menu 1](/menu1/) -->
<!-- * [menu 2](/menu2/) -->
<!-- * [menu 3](/menu3/) -->

<!-- ## References (not really) -->

<!-- * \biblabel{noether15}{Noether (1915)} **Noether**,  Körper und Systeme rationaler Funktionen, 1915. -->
<!-- * \biblabel{bezanson17}{Bezanson et al. (2017)} **Bezanson**, **Edelman**, **Karpinski** and **Shah**, [Julia: a fresh approach to numerical computing](https://julialang.org/research/julia-fresh-approach-BEKS.pdf), SIAM review 2017. -->

<!-- ## Header and Footer -->

<!-- As you can see here at the bottom of the page, there is a footer which you may want on all pages but for instance you may want the date of last modification to be displayed. -->
<!-- In a fashion heavily inspired by [Hugo](https://gohugo.io), you can write things like -->

<!-- ```html -->
<!-- Last modified: {{ fill fd_mtime }}. -->
<!-- ``` -->

<!-- (cf. `src/_html_parts/page_foot.html`) which will then replace these braces with the content of a dictionary of variables at the key `fd_mtime`. -->
<!-- This dictionary of variables is accessed locally by pages through `@def varname = value` and globally through the `config.md` page via the same syntax. -->

<!-- There's a few other such functions of the form `{{fname p₁ p₂}}` as well as support for conditional blocks. If you wander through the `src/_html_parts/` folder and its content, you should be able to see those in action. -->
