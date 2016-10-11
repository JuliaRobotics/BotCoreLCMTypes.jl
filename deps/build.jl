using BinDeps
using PyCall
sys = pyimport("sys")

basedir = joinpath(Pkg.dir("BotCoreLCMTypes"), "deps")
prefix = joinpath(basedir, "usr")
lcmtypes_sha = "95d59aab0233a262293c3e215c07babfbba9d985"
lcmtypes_folder = "bot_core_lcmtypes-$(lcmtypes_sha)"
lcmtypes_srcdir = joinpath(basedir, "src", lcmtypes_folder)
lcmtypes_builddir = joinpath(basedir, "builds", "bot_core_lcmtypes")

python_name = "python$(sys[:version_info][1]).$(sys[:version_info][2])"


process = (@build_steps begin
    FileRule(joinpath(prefix, "lib", "python2.7", "site-packages", "bot_core", "__init__.py"),
        (@build_steps begin
        FileDownloader("https://github.com/wxmerkt/bot_core_lcmtypes/archive/$(lcmtypes_sha).zip",
                       joinpath(basedir, "downloads", "$(lcmtypes_sha).zip"))
        FileUnpacker(joinpath(basedir, "downloads", "$(lcmtypes_sha).zip"),
                     joinpath(basedir, "src"), lcmtypes_folder)
        CreateDirectory(lcmtypes_builddir)
        @build_steps begin
            ChangeDirectory(lcmtypes_builddir)
            `cmake -DCMAKE_INSTALL_PREFIX=$(prefix) -DCMAKE_PREFIX_PATH=$(joinpath(Pkg.dir("PyLCM"), "deps", "usr")) $(lcmtypes_srcdir)`
            `cmake --build . --target install`
        end
    end))
end)

run(process)

open(joinpath(dirname(@__FILE__), "deps.jl"), "w") do f
    write(f, """
using PyCall
sys = pyimport("sys")
unshift!(PyVector(sys["path"]), joinpath("$(prefix)", "lib", "$(python_name)", "site-packages"))
""")
end
