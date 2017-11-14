# SimradRaw

[![Build Status](https://travis-ci.org/robblackwell/SimradRaw.jl.svg?branch=master)](https://travis-ci.org/robblackwell/SimradRaw.jl)

[![Coverage Status](https://coveralls.io/repos/robblackwell/SimradRaw.jl/badge.svg?branch=master&service=github)](https://coveralls.io/github/robblackwell/SimradRaw.jl?branch=master)

[![codecov.io](http://codecov.io/github/robblackwell/SimradRaw.jl/coverage.svg?branch=master)](http://codecov.io/github/robblackwell/SimradRaw.jl?branch=master)

Simrad echosounder RAW file format reader for
[Julia](http://julialiang.org)


## Introduction

Reads Simrad echosounder RAW format files.

## Getting started

```
julia> datagrams = collect(datagrams("myfile.raw"))
```

## Testing

	Pkg.test("SimradRaw")

## References

398126A_WBAT Reference Manual.pdf,

http://www.simrad.net/ek80_ref_english/default.htm,

https://www.simrad.com/www/01/NOKBG0397.nsf/AllWeb/F2AB311B3F6E6B15C1257106003E0806/$file/164692ad_ek60_reference_manual_english_lores.pdf 


