#!/usr/bin/env julia

using SimradRaw
using SimradEK60TestData

@static if VERSION < v"0.7.0-DEV.2005"
    using Base.Test
else
    using Test
end

# EK60 file

_datagrams = collect(datagrams(EK60_SAMPLE))

@test length(_datagrams) == 2860

# EK80 file

# _datagrams = collect(datagrams(EK80_SAMPLE))

# @test length(_datagrams) == 461
