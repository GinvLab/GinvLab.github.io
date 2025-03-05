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
  
  * [MagGravPoly.jl](https://github.com/GinvLab/MagGravPoly.jl) [[docs](https://ginvlab.github.io/MagGravPoly.jl)] Magnetic and gravity anomalies calculations for polygonal shapes in 2D or 2.75D (3D is work in progress).
   
  * [GeophPriors.jl](https://github.com/GinvLab/GeophPriors.jl) [[docs](https://ginvlab.github.io/GeophPriors.jl)] Priors useful for geophysical inverse problems, including a multivariate Beta prior with a Normal copula.
  
  * [ReflSeismoAD.jl](https://github.com/GinvLab/ReflSeismoAD.jl) [[docs](https://ginvlab.github.io/ReflSeismoAD.jl)] AVA seismic data and rock physics models in 1-2-3D.
  
Inversion algorithms:

  * [InverseAlgos.jl](https://github.com/GinvLab/InverseAlgos.jl) [[docs](https://ginvlab.github.io/InverseAlgos.jl)] Inversion algorithm subdivided in three sub-modules/categories:

    - **Hamiltonian Monte Carlo** and "classic" **Metropolis-Hastings** samplers. Includes the "plain" HMC, the NUTS algorithms et al..
    - **Optimization**. Currently the L-BFGS and Gauss-Newton algorithms (with optional box constraints) are implemented.
    - **Linear inverse problems under Gaussian uncertainties**. Kronecker product-based inversion (`KronLinInv`) and classic least squares.
	  

Examples/tutorials:

  * [GinvLab-examples](https://github.com/GinvLab/GinvLab-examples.jl) [[docs](https://ginvlab.github.io/GinvLab-examples.jl)] A set of scripts and Jupyter notebooks illustrating some simple example problems solved using the packages part of G⁻¹Lab.

