-- Add Google Test package
add_requires("gtest", {configs = {main = true}})

-- Add test target
target("example-cuda-xmake-tests")
    set_targetdir("$(buildir)/bin")
    set_kind("binary")
    add_files("*.cpp")
    add_deps("example_cuda_xmake_lib")
    add_packages("gtest", "cuda")

    -- Define test run command
    -- after_build(function (target)
    --     os.exec("%s", target:targetfile())
    -- end)
