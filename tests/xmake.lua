-- Add Google Test package
add_requires("gtest")

-- Add test target
target("example-cuda-xmake-tests")
    set_targetdir("$(buildir)/bin")
    set_kind("binary")
    add_files("*.cpp")
    add_deps("example_cuda_xmake_lib")
    add_packages("gtest", "cuda")
    add_links("cudart", "cublas")

    -- Define test run command
    -- after_build(function (target)
    --     os.exec("%s", target:targetfile())
    -- end)
