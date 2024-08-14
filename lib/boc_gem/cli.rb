require 'thor'
require 'fileutils'

module BocGem
  class CLI < Thor
    desc "make_views CONTROLLER", "Creates index, edit, and new views under the views/CONTROLLER folder"
    
    def make_views(controller_name)
      # Create the views directory if it doesn't exist
      views_path = File.join('app/views', controller_name)
      FileUtils.mkdir_p(views_path)
      
      view_files = {
        'index' => 'index.html.haml',
        'edit' => 'edit.html.haml',
        'new' => 'new.html.haml'
      }
      
      view_files.each do |view, haml_file|
        file_path = File.join(views_path, "#{view}.html.haml")
        haml_content = File.read(File.join(views_path, haml_file))
        File.open(file_path, 'w') do |file|
          file.write(haml_content)
        end
      end
    end
  end
end
