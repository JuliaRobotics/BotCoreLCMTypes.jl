# BotCoreLCMTypes

[![Build Status](https://travis-ci.org/rdeits/BotCoreLCMTypes.jl.svg?branch=master)](https://travis-ci.org/rdeits/BotCoreLCMTypes.jl)
[![codecov.io](https://codecov.io/github/rdeits/BotCoreLCMTypes.jl/coverage.svg?branch=master)](https://codecov.io/github/rdeits/BotCoreLCMTypes.jl?branch=master)

This package implements the [LCM](http://lcm-proj.github.io/) type definitions from [openhumanoids/bot_core_lcmtypes](https://github.com/openhumanoids/bot_core_lcmtypes) in Julia using [LCMCore.jl](https://github.com/JuliaRobotics/LCMCore.jl). Each lcmtype has a matching native Julia type with associated `encode()` and `decode()` methods.
