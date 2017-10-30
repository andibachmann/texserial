require 'slop'
require 'yaml'

module Texserial
  class Cli
    def self.parse(*args)
      options = Slop::Options.new
      options.banner =<<-EOB
Usage: #{File.basename(__FILE__)} -t <template> data_file1 [data_file2 [...]]

Produce one letter for each data file provided based on a template.
EOB
      options.bool '-h', '--help', 'Show this help text'
      options.string '-t', '--template', 'tex template'
      parser = Slop::Parser.new(options)
        
      begin
        result = parser.parse(ARGV)
      rescue Slop::Error => e
        puts e.message
        puts options
        exit 0
      end
      # 
      if result[:help]
        puts options
        exit 0
      end
      if result.arguments.size < 1
        puts options
        exit 0
      end
      
      if result[:template].nil?
        puts "Error: Missing required option `-t', `--template'"
        puts options
        exit 0
      end
      #puts result.to_hash
      ErbStruct.template_file = result[:template]
      result.arguments.each do |file|
        if !File.exists?(file)
          puts "File #{file} does not exist!"
          next
        end
        #
        data = YAML.load_file(file)
        c = ErbStruct.render_from_hash(data)
        puts "-------------------------------------------"
        puts "examining file #{file}..."
        puts c
        puts ""

      end
    end
  end
end
