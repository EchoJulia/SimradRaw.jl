using SimradRaw
using Base.Test

# EK60 file

sample = joinpath(dirname(@__FILE__),
                  "data/ek60/jr16003/ek60-sample.raw")

_datagrams = collect(datagrams(sample))

@test length(_datagrams) == 4693

# EK80 file

sample = joinpath(dirname(@__FILE__),
                  "data/ek80/EK80_Example_Data_01/EK80_SimradEcho_WC381_Sequential-D20150513-T090935.raw")

_datagrams = collect(datagrams(sample))

@test length(_datagrams) == 461
