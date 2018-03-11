__precompile__()

module BotCoreLCMTypes

using LCMCore
using StaticArrays: SVector, SMatrix

export atlas_command_t,
       force_torque_t,
       gps_data_t,
       gps_satellite_info_list_t,
       gps_satellite_info_t,
       image_metadata_t,
       image_sync_t,
       image_t,
       images_t,
       ins_t,
       joint_angles_t,
       joint_state_t,
       kvh_raw_imu_batch_t,
       kvh_raw_imu_t,
       planar_lidar_t,
       pointcloud2_t,
       pointcloud_t,
       pointfield_t,
       utime_t

include("atlas_command_t.jl")
include("force_torque_t.jl")
include("gps_data_t.jl")
include("gps_satellite_info_t.jl")
include("gps_satellite_info_list_t.jl")
include("image_metadata_t.jl")
include("image_sync_t.jl")
include("image_t.jl")
include("images_t.jl")
include("ins_t.jl")
include("joint_angles_t.jl")
include("joint_state_t.jl")
include("kvh_raw_imu_t.jl")
include("kvh_raw_imu_batch_t.jl")
include("planar_lidar_t.jl")
include("pointfield_t.jl")
include("pointcloud2_t.jl")
include("pointcloud_t.jl")
include("utime_t.jl")

end
