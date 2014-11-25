require 'fileutils'

class BootstrapJsFilter < Nanoc3::Filter

  identifier :bootstrapJs

  def run(content, cmd, params={})
    puts "Processing Bootstrap JS..."
    FileUtils.mkdir_p './output/assets/js'
    FileUtils.touch('./tmp/bootstrap.js')

    File.open('./tmp/bootstrap.js','w') do |mergedFile|
        my_files = [
            "./content/assets/js/bootstrap/bootstrap-transition.js",
            #"./content/assets/js/bootstrap/bootstrap-alert.js",
            #"./content/assets/js/bootstrap/bootstrap-button.js",
            #"./content/assets/js/bootstrap/bootstrap-carousel.js",
            "./content/assets/js/bootstrap/bootstrap-collapse.js",
            #"./content/assets/js/bootstrap/bootstrap-dropdown.js",
            #"./content/assets/js/bootstrap/bootstrap-modal.js",
            #"./content/assets/js/bootstrap/bootstrap-tooltip.js",
            #"./content/assets/js/bootstrap/bootstrap-popover.js",
            "./content/assets/js/bootstrap/bootstrap-scrollspy.js",
            #"./content/assets/js/bootstrap/bootstrap-tab.js",
            "./content/assets/js/bootstrap/bootstrap-affix.js"
        ]

        my_files.each do |f_name|
          f_in = File.open(f_name, "r")
          f_in.each {|f_str| mergedFile.puts(f_str)}
          f_in.close
        end
    end

    system "node node_modules/uglify-js/bin/uglifyjs tmp/bootstrap.js -c > output/assets/js/bootstrap.min.js"
    File.delete('./tmp/bootstrap.js');
  end
end
