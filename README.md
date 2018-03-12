# BotCoreLCMTypes

[![Build Status](https://travis-ci.org/JuliaRobotics/BotCoreLCMTypes.jl.svg?branch=master)](https://travis-ci.org/JuliaRobotics/BotCoreLCMTypes.jl)
[![codecov.io](https://codecov.io/github/JuliaRobotics/BotCoreLCMTypes.jl/coverage.svg?branch=master)](https://codecov.io/github/JuliaRobotics/BotCoreLCMTypes.jl?branch=master)

This package implements the [LCM](http://lcm-proj.github.io/) type definitions from [openhumanoids/bot_core_lcmtypes](https://github.com/openhumanoids/bot_core_lcmtypes) in Julia using [LCMCore.jl](https://github.com/JuliaRobotics/LCMCore.jl). Each lcmtype has a matching native Julia type with associated `encode()` and `decode()` methods.

# Examples

```julia
using BotCoreLCMTypes, LCMCore

msg = vector_3d_t()
msg.x = 1
msg.y = 2
msg.z = 3
bytes = encode(msg)

decoded = decode(bytes, vector_3d_t)
@assert decoded.x == msg.x
@assert decoded.y == msg.y
@assert decoded.z == msg.z
```
