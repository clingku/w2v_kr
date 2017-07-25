#!/usr/bin/env ruby
# vim: set fileencoding=utf-8 :

input_paths=Dir.glob(["./sjsm_utf8/*.txt"], 0)
output_file=File.open("sjsm_converted.txt", "w:utf-8")

input_paths.each do |path|
  File.foreach(path) do |line|
    if m=line.match('BS.+\t.+\t(.+)')
      line=m[1].gsub(/[\+ ]+/,' ').chomp+" "
      output_file.write(line)
    elsif line.match('<\/p>|<\/head>')
      line="\n"
       output_file.write("\n")
    end
  end
end


