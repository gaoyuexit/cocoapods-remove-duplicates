require 'cocoapods'
require 'fileutils'

module Pod

  class Installer

    alias old_install_pod_sources install_pod_sources
    def install_pod_sources
      old_install_pod_sources

      lib_paths = (`find '#{self.sandbox.root}' -type f -name *.a -o -name *.framework`).split("\n")
      lib_hash = Hash.new

      lib_paths.each do |path|

        lib_name = File::basename(path)

        if lib_hash.has_key?(lib_name)

          if File.exist?(path)
            File.delete(path)
            puts "移除重复库: #{lib_name}\t\t路径: #{path}"
          end

        else
          lib_hash[lib_name] = path
        end

      end

    end

  end
end