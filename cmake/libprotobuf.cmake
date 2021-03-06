set(libprotobuf_files
  ${protobuf_source_dir}/src/google/protobuf/stubs/strutil.cc
  ${protobuf_source_dir}/src/google/protobuf/stubs/strutil.h
  ${protobuf_source_dir}/src/google/protobuf/stubs/substitute.cc
  ${protobuf_source_dir}/src/google/protobuf/stubs/substitute.h
  ${protobuf_source_dir}/src/google/protobuf/stubs/structurally_valid.cc
  ${protobuf_source_dir}/src/google/protobuf/descriptor.cc
  ${protobuf_source_dir}/src/google/protobuf/descriptor.pb.cc
  ${protobuf_source_dir}/src/google/protobuf/descriptor_database.cc
  ${protobuf_source_dir}/src/google/protobuf/dynamic_message.cc
  ${protobuf_source_dir}/src/google/protobuf/extension_set_heavy.cc
  ${protobuf_source_dir}/src/google/protobuf/generated_message_reflection.cc
  ${protobuf_source_dir}/src/google/protobuf/message.cc
  ${protobuf_source_dir}/src/google/protobuf/reflection_ops.cc
  ${protobuf_source_dir}/src/google/protobuf/service.cc
  ${protobuf_source_dir}/src/google/protobuf/text_format.cc
  ${protobuf_source_dir}/src/google/protobuf/unknown_field_set.cc
  ${protobuf_source_dir}/src/google/protobuf/wire_format.cc
  ${protobuf_source_dir}/src/google/protobuf/io/gzip_stream.cc
  ${protobuf_source_dir}/src/google/protobuf/io/printer.cc
  ${protobuf_source_dir}/src/google/protobuf/io/tokenizer.cc
  ${protobuf_source_dir}/src/google/protobuf/io/zero_copy_stream_impl.cc
  ${protobuf_source_dir}/src/google/protobuf/compiler/importer.cc
  ${protobuf_source_dir}/src/google/protobuf/compiler/parser.cc
)

set(libprotobuf_includes
  ${protobuf_source_dir}/src/google/protobuf/any.h
  ${protobuf_source_dir}/src/google/protobuf/any.pb.h
  ${protobuf_source_dir}/src/google/protobuf/api.pb.h
  ${protobuf_source_dir}/src/google/protobuf/compiler/importer.h
  ${protobuf_source_dir}/src/google/protobuf/compiler/parser.h
  ${protobuf_source_dir}/src/google/protobuf/descriptor.h
  ${protobuf_source_dir}/src/google/protobuf/descriptor.pb.h
  ${protobuf_source_dir}/src/google/protobuf/descriptor_database.h
  ${protobuf_source_dir}/src/google/protobuf/duration.pb.h
  ${protobuf_source_dir}/src/google/protobuf/dynamic_message.h
  ${protobuf_source_dir}/src/google/protobuf/empty.pb.h
  ${protobuf_source_dir}/src/google/protobuf/field_mask.pb.h
  ${protobuf_source_dir}/src/google/protobuf/generated_message_reflection.h
  ${protobuf_source_dir}/src/google/protobuf/io/gzip_stream.h
  ${protobuf_source_dir}/src/google/protobuf/io/printer.h
  ${protobuf_source_dir}/src/google/protobuf/io/strtod.h
  ${protobuf_source_dir}/src/google/protobuf/io/tokenizer.h
  ${protobuf_source_dir}/src/google/protobuf/io/zero_copy_stream_impl.h
  ${protobuf_source_dir}/src/google/protobuf/map_field.h
  ${protobuf_source_dir}/src/google/protobuf/message.h
  ${protobuf_source_dir}/src/google/protobuf/reflection_ops.h
  ${protobuf_source_dir}/src/google/protobuf/service.h
  ${protobuf_source_dir}/src/google/protobuf/source_context.pb.h
  ${protobuf_source_dir}/src/google/protobuf/struct.pb.h
  ${protobuf_source_dir}/src/google/protobuf/stubs/mathlimits.h
  ${protobuf_source_dir}/src/google/protobuf/stubs/substitute.h
  ${protobuf_source_dir}/src/google/protobuf/text_format.h
  ${protobuf_source_dir}/src/google/protobuf/timestamp.pb.h
  ${protobuf_source_dir}/src/google/protobuf/type.pb.h
  ${protobuf_source_dir}/src/google/protobuf/unknown_field_set.h
  ${protobuf_source_dir}/src/google/protobuf/util/delimited_message_util.h
  ${protobuf_source_dir}/src/google/protobuf/util/field_comparator.h
  ${protobuf_source_dir}/src/google/protobuf/util/field_mask_util.h
  ${protobuf_source_dir}/src/google/protobuf/util/internal/datapiece.h
  ${protobuf_source_dir}/src/google/protobuf/util/internal/default_value_objectwriter.h
  ${protobuf_source_dir}/src/google/protobuf/util/internal/error_listener.h
  ${protobuf_source_dir}/src/google/protobuf/util/internal/field_mask_utility.h
  ${protobuf_source_dir}/src/google/protobuf/util/internal/json_escaping.h
  ${protobuf_source_dir}/src/google/protobuf/util/internal/json_objectwriter.h
  ${protobuf_source_dir}/src/google/protobuf/util/internal/json_stream_parser.h
  ${protobuf_source_dir}/src/google/protobuf/util/internal/object_writer.h
  ${protobuf_source_dir}/src/google/protobuf/util/internal/proto_writer.h
  ${protobuf_source_dir}/src/google/protobuf/util/internal/protostream_objectsource.h
  ${protobuf_source_dir}/src/google/protobuf/util/internal/protostream_objectwriter.h
  ${protobuf_source_dir}/src/google/protobuf/util/internal/type_info.h
  ${protobuf_source_dir}/src/google/protobuf/util/internal/type_info_test_helper.h
  ${protobuf_source_dir}/src/google/protobuf/util/internal/utility.h
  ${protobuf_source_dir}/src/google/protobuf/util/json_util.h
  ${protobuf_source_dir}/src/google/protobuf/util/message_differencer.h
  ${protobuf_source_dir}/src/google/protobuf/util/time_util.h
  ${protobuf_source_dir}/src/google/protobuf/util/type_resolver_util.h
  ${protobuf_source_dir}/src/google/protobuf/wire_format.h
  ${protobuf_source_dir}/src/google/protobuf/wrappers.pb.h
)


if (protobuf_BUILD_LIBPROTOBUF)
    add_library(libprotobuf ${protobuf_SHARED_OR_STATIC}
      ${libprotobuf_files})
    target_link_libraries(libprotobuf PUBLIC ${CMAKE_THREAD_LIBS_INIT})
    target_link_libraries(libprotobuf PUBLIC libprotobuf-lite)
    target_include_directories(libprotobuf PUBLIC ${protobuf_source_dir}/vsprojects)
    if(protobuf_WITH_ZLIB)
        target_link_libraries(libprotobuf PUBLIC ${ZLIB_LIBRARIES})
    endif()
    if(MSVC AND protobuf_BUILD_SHARED_LIBS)
      target_compile_definitions(libprotobuf
        PUBLIC  PROTOBUF_USE_DLLS
        PRIVATE LIBPROTOBUF_EXPORTS)
    endif()
    set_target_properties(libprotobuf PROPERTIES
        OUTPUT_NAME ${LIB_PREFIX}protobuf
        DEBUG_POSTFIX "${protobuf_DEBUG_POSTFIX}")
endif (protobuf_BUILD_LIBPROTOBUF)
