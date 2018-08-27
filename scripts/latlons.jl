#!/usr/bin/env julia

# Extracts a list of latitude longitude pairs from one or more RAW
# files.

using SimradRaw

using PyCall

@pyimport pynmea2

function parsenmea(s)
    pynmea2.parse(split(s,"*")[1]) # Ignore checksums
end

function summarise(filename)
    _datagrams = collect(datagrams(filename))

    # All NMEA datagrams
    n = findall(x -> typeof(x) == SimradRaw.TextDatagram && x.dgheader.datagramtype == "NME0", _datagrams)
    nmeas = [parsenmea(_datagrams[i].text) for i in n]

    for nmea in nmeas
        if haskey(nmea, :latitude)
            #EPSG:4326 specifically states that the coordinate order
            #should be latitude, longitude.
            @printf("%s\t%s\n", nmea[:latitude], nmea[:longitude])
        end
    end

end

function main(args)
    for filename in args
        summarise(filename)
    end
end

main(ARGS)
