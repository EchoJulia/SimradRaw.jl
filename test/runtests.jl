using SimradRaw
using Base.Test

# EK60 file

_datagrams = collect(datagrams(EK60_SAMPLE))

@test length(_datagrams) == 4693

# EK80 file

_datagrams = collect(datagrams(EK80_SAMPLE))

@test length(_datagrams) == 461
