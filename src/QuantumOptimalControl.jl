module QuantumOptimalControl

import QuantumOpticsBase
using QuantumOpticsBase: IncompatibleBases
using QuantumOptics
using MKLSparse
using LinearAlgebra
using DifferentialEquations: DP5, Tsit5, solve, Vern7
using OrdinaryDiffEq: ODEProblem
import DifferentialEquations
using Flux: jacobian
using Flux
using CUDA
import CUDA: cu
using CUDA.CUSPARSE
using ProgressMeter: Progress, next!
using DataStructures
using NLopt: Opt
import NLopt
import CommonSolve: solve!, init, solve

include("hamiltonian.jl")
include("transforms.jl")
include("cost.jl")
include("problem.jl")
include("solver.jl")
include("evolution.jl")
include("vectorization.jl")

export StateTransform,
    Hamiltonian,
    UnitaryTransform,
    Solution,
    CostFunction,
    QOCProblem,
    schroedinger_dynamic,
    master_dynamic,
    solve!,
    init,
    solve,
    cu,
    vectorize
end
