using Test, Pkg
using Table1

f() = nothing
apply!(qbits, operations) = nothing


@testset "Apply operations" begin
  for T in (Float64, Float32)
    n_qbits = 2:5
    for n in [2^k for k in n_qbits]

      R = [1, zeros(n-1)...]
      I = [0, zeros(n-1)...]
      qbits  = Complex{T}.(R, I)
      @show qbits

      operations = [f()]

      apply!(qbits, operations)

    end
  end
end

