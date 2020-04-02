cmake_minimum_required(VERSION 3.4.1)

project(wasm3)


# add_definitions(-DANDROID -Wno-format-security -O3
#                 #-fno-optimize-sibling-calls
#                 -flto -fomit-frame-pointer -fno-stack-check -fno-stack-protector)

file(GLOB M3_SRC FOLLOW_SYMLINKS "m3/*.c" "*.c")

# set(srcs
#     "m3/m3_api_libc.c"
#     "m3/m3_api_meta_wasi.c"
#     "m3/m3_api_wasi.c"
#     "m3/m3_bind.c"
#     "m3/m3_code.c"
#     "m3/m3_compile.c"
#     "m3/m3_core.c"
#     "m3/m3_emit.c"
#     "m3/m3_env.c"
#     "m3/m3_exec.c"
#     "m3/m3_info.c"
#     "m3/m3_module.c"
#     "m3/m3_parse.c"
# )

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Dd_m3HasWASI") #-Dd_m3FixedHeap=1048576
add_library(m3 STATIC ${M3_SRC})
target_include_directories(m3 PUBLIC .)

message("----")
message("Generator:  ${CMAKE_GENERATOR}")
message("Compiler:   ${CMAKE_C_COMPILER_ID}")
message("Build Type: ${CMAKE_BUILD_TYPE}")


message("Flags:         ${CMAKE_C_FLAGS}")
message("Debug flags:   ${CMAKE_C_FLAGS_DEBUG}")
message("Release flags: ${CMAKE_C_FLAGS_RELEASE}")

message("----")
