require "generators/paper_kit/page_generator"

module PaperKit
  module Generators
    class TemplatePageGenerator < PageGenerator
      view_name "template_page"
      source_root File.expand_path("../templates", __FILE__)

      def set_layout
        inject_into_class "app/controllers/#{name}_controller.rb", "#{name.titleize}Controller".constantize, "  layout '_base'\n"
      end

    end
  end
end
