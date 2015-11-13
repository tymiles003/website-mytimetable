require 'fileutils'

class BootstrapJsFilter < Nanoc::Filter

  identifier :bootstrapJs

  def run(content, cmd, params={})
    puts "Processing Bootstrap JS..."
    FileUtils.mkdir_p './output/assets/js'
    FileUtils.mkdir './tmp' unless File.exists?('./tmp')
    FileUtils.touch('./tmp/bootstrap.js')

    File.open('./tmp/bootstrap.js','w') do |mergedFile|
        my_files = [
            "./content/assets/js/bootstrap/transition.js",
            #"./content/assets/js/bootstrap/alert.js",
            #"./content/assets/js/bootstrap/button.js",
            #"./content/assets/js/bootstrap/carousel.js",
            "./content/assets/js/bootstrap/collapse.js",
            #"./content/assets/js/bootstrap/dropdown.js",
            #"./content/assets/js/bootstrap/modal.js",
            #"./content/assets/js/bootstrap/tooltip.js",
            #"./content/assets/js/bootstrap/popover.js",
            "./content/assets/js/bootstrap/scrollspy.js",
            #"./content/assets/js/bootstrap/tab.js",
            "./content/assets/js/bootstrap/affix.js"
        ]

        my_files.each do |f_name|
          f_in = File.open(f_name, "r")
          f_in.each {|f_str| mergedFile.puts(f_str)}
          f_in.close
        end
    end

    system "node node_modules/uglify-js/bin/uglifyjs tmp/bootstrap.js -c -o output/assets/js/bootstrap.min.js"

    File.delete('./tmp/bootstrap.js');
  end
end
