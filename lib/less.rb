class EveohLessFilter < Nanoc::Filter

  identifier :eveohLess
  type :text

  def run(content, cmd, params={})
    puts "Running Recess..."
    FileUtils.mkdir_p "./output/assets/style"
    system "node node_modules/less/bin/lessc content/assets/less/eveoh.less > output/assets/style/eveoh.css"
  end
end
