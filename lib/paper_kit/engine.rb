module PaperKit
  class Engine < ::Rails::Engine
    initializer 'paper_kit.setup' do |app|
      app.config.assets.precompile += Dir.glob(config.root + 'app/assets/**/*').select{ |f| File.file? f }.map { |m| "paper_kit/" +  File.path(m).split("paper_kit/").last }
      app.config.assets.precompile += %w( examples.css )
    end

    initializer 'paper_kit.sass' do |app|
      # Set the sass load paths
      app.config.sass.load_paths << File.join(config.root, "lib", "sass")

      # Set the add paper_kit/lib/sass to assets path
      app.config.assets.paths << File.join(config.root, "lib", "sass")
    end
  end
end
