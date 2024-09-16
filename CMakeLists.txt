cmake_minimum_required(VERSION 3.10)
project(lab1_client C)

set(CMAKE_C_STANDARD 99)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O3")
# Enable SIMD instructions
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -march=native -mtune=native")
# Find pkg-config
find_package(PkgConfig REQUIRED)

# Find DPDK using pkg-config
pkg_check_modules(DPDK REQUIRED libdpdk)

# Add DPDK include directories
include_directories(${DPDK_INCLUDE_DIRS})

# Add DPDK library directories
link_directories(${DPDK_LIBRARY_DIRS})

# Define the executable
add_executable(${PROJECT_NAME} lab1-client.c)

# Link against DPDK libraries
target_link_libraries(${PROJECT_NAME} ${DPDK_LIBRARIES})

# Add DPDK compile options
target_compile_options(${PROJECT_NAME} PRIVATE ${DPDK_CFLAGS_OTHER})

# Allow experimental API
target_compile_definitions(${PROJECT_NAME} PRIVATE ALLOW_EXPERIMENTAL_API)

# Create both shared and static targets
add_executable(${PROJECT_NAME}_shared lab1-client.c)
add_executable(${PROJECT_NAME}_static lab1-client.c)

# Link shared target
target_link_libraries(${PROJECT_NAME}_shared ${DPDK_LIBRARIES})

# Link static target
target_link_libraries(${PROJECT_NAME}_static -Wl,--whole-archive ${DPDK_STATIC_LIBRARIES} -Wl,--no-whole-archive)

# Set output names
set_target_properties(${PROJECT_NAME}_shared PROPERTIES OUTPUT_NAME "${PROJECT_NAME}-shared")
set_target_properties(${PROJECT_NAME}_static PROPERTIES OUTPUT_NAME "${PROJECT_NAME}-static")

# Custom target to create symlink
add_custom_target(create_symlink ALL
        COMMAND ${CMAKE_COMMAND} -E create_symlink
        $<TARGET_FILE_NAME:${PROJECT_NAME}_shared>
        ${CMAKE_BINARY_DIR}/${PROJECT_NAME}
        DEPENDS ${PROJECT_NAME}_shared
)
