#!/usr/bin/env ruby
# Generated by the protocol buffer compiler. DO NOT EDIT!

require 'protocol_buffers'

begin; require 'tensorflow/core/framework/attr_value.pb'; rescue LoadError; end
begin; require 'tensorflow/core/framework/types.pb'; rescue LoadError; end

module Tensorflow
  # forward declarations
  class OpDef < ::ProtocolBuffers::Message; end
  class OpDeprecation < ::ProtocolBuffers::Message; end
  class OpList < ::ProtocolBuffers::Message; end

  class OpDef < ::ProtocolBuffers::Message
    # forward declarations
    class ArgDef < ::ProtocolBuffers::Message; end
    class AttrDef < ::ProtocolBuffers::Message; end

    set_fully_qualified_name "tensorflow.OpDef"

    # nested messages
    class ArgDef < ::ProtocolBuffers::Message
      set_fully_qualified_name "tensorflow.OpDef.ArgDef"

      optional :string, :name, 1
      optional :string, :description, 2
      optional ::Tensorflow::DataType, :type, 3
      optional :string, :type_attr, 4
      optional :string, :number_attr, 5
      optional :string, :type_list_attr, 6
      optional :bool, :is_ref, 16
    end

    class AttrDef < ::ProtocolBuffers::Message
      set_fully_qualified_name "tensorflow.OpDef.AttrDef"

      optional :string, :name, 1
      optional :string, :type, 2
      optional ::Tensorflow::AttrValue, :default_value, 3
      optional :string, :description, 4
      optional :bool, :has_minimum, 5
      optional :int64, :minimum, 6
      optional ::Tensorflow::AttrValue, :allowed_values, 7
    end

    optional :string, :name, 1
    repeated ::Tensorflow::OpDef::ArgDef, :input_arg, 2
    repeated ::Tensorflow::OpDef::ArgDef, :output_arg, 3
    repeated ::Tensorflow::OpDef::AttrDef, :attr, 4
    optional ::Tensorflow::OpDeprecation, :deprecation, 8
    optional :string, :summary, 5
    optional :string, :description, 6
    optional :bool, :is_commutative, 18
    optional :bool, :is_aggregate, 16
    optional :bool, :is_stateful, 17
    optional :bool, :allows_uninitialized_input, 19
  end

  class OpDeprecation < ::ProtocolBuffers::Message
    set_fully_qualified_name "tensorflow.OpDeprecation"

    optional :int32, :version, 1
    optional :string, :explanation, 2
  end

  class OpList < ::ProtocolBuffers::Message
    set_fully_qualified_name "tensorflow.OpList"

    repeated ::Tensorflow::OpDef, :op, 1
  end

end
