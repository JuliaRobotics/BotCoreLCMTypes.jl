__precompile__()

module BotCoreLCMTypes

using LCMCore

export atlas_command_t,
       utime_t

include("atlas_command_t.jl")
include("utime_t.jl")

end
