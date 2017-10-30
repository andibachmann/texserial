require 'ostruct'
require 'erb'

module Texserial
  #
  # use:
  #   ErbStruct.template_file = 
  class ErbStruct < OpenStruct
    def self.template_file=(file_path)
      @template_file = file_path
    end

    def self.template
      @template ||= ERB.new(File.read(@template_file))
    end
    
    def self.render_from_hash(h)
      ErbStruct.new(h).render
    end

    def render
      self.class.template.result(binding)
    end
  end
end
