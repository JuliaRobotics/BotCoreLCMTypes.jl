__precompile__()

module BotCoreLCMTypes

using PyCall
export bot_core

const bot_core = PyNULL()

function __init__()
    include(joinpath(dirname(@__FILE__), "..", "deps", "deps.jl"))
    copy!(bot_core, pyimport("bot_core"))
end

end
