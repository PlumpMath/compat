set(COMPAT_FOUND true)
set(COMPAT_VERSION "0.1.0")

if(NOT TARGET compat)
  add_library(compat INTERFACE IMPORTED)
  set_target_properties(compat PROPERTIES
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")
  if("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
    set_target_properties(compat PROPERTIES INTERFACE_LINK_LIBRARIES "c++fs")
  elseif("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
    set_target_properties(compat PROPERTIES INTERFACE_LINK_LIBRARIES "stdc++fs")
  endif()
endif()
