__precompile__()

module BotCoreLCMTypes

using LCMCore
using StaticArrays: SVector, SMatrix

export atlas_command_t,
       gps_data_t,
       gps_satellite_info_t,
       gps_satellite_info_list_t,
       force_torque_t,
       utime_t

include("atlas_command_t.jl")
include("gps_data_t.jl")
include("gps_satellite_info_t.jl")
include("gps_satellite_info_list_t.jl")
include("force_torque_t.jl")
include("utime_t.jl")

end
