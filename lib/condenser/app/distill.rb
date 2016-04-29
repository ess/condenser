module Condenser
  module App
    class Distill < Belafonte::App
      title 'distill'
      summary 'Render an image from a YAML template'
      description <<DESC
Given the path to a container template, render an AppC Image that reflects that template.
DESC

      arg :template
      arg :output_path

      def handle
        puts "Rendering '#{template}' to '#{output_path}'"
      end

      private
      def template
        arg(:template).first
      end

      def output_path
        arg(:output_path).first
      end
    end
  end
end
