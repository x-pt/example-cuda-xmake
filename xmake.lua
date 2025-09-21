-- Specify the project details
set_project("example-cuda-xmake")
set_version("0.0.1")

-- Specify languages
set_languages("cxx17")

-- Add CUDA support
add_requires("cuda")

-- Define the target for the library
target("example_cuda_xmake_lib")
    set_targetdir("build/lib")
    set_kind("static")
    set_policy("build.cuda.devlink", true)
    add_includedirs("include", {public = true})
    add_files("src/**.cpp", "src/**.cu")
    add_packages("cuda")
    add_links("cudart", "cublas")
    add_cugencodes("native")

-- Define the target for the executable
target("example-cuda-xmake")
    set_targetdir("build/bin")
    set_kind("binary")
    add_files("src/main.cpp")
    add_deps("example_cuda_xmake_lib")

-- Add the tests
includes("tests")
