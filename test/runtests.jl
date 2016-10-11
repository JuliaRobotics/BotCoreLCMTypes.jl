using BotCoreLCMTypes
using Base.Test
using PyLCM

msg = bot_core[:position_3d_t]()
msg[:translation] = bot_core[:vector_3d_t]()
msg[:translation][:x] = 1
msg[:translation][:y] = 2.0
msg[:translation][:z] = 3.0

msg[:rotation] = bot_core[:quaternion_t]()
msg[:rotation][:w] = 1.0
msg[:rotation][:x] = 0.0
msg[:rotation][:y] = 0.0
msg[:rotation][:z] = 0.0

data = pycall(msg[:encode], PyObject)

decoded = bot_core[:position_3d_t][:decode](data)

@test decoded[:translation][:x] == 1
@test decoded[:translation][:y] == 2
@test decoded[:translation][:z] == 3
@test decoded[:rotation][:w] == 1
@test decoded[:rotation][:x] == 0
@test decoded[:rotation][:y] == 0
@test decoded[:rotation][:z] == 0
