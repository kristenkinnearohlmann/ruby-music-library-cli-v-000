require 'pry'

class MusicImporter

  attr_accessor :path

  @@files = []

  def initialize(path)
    @path = path
  end

  def files
    binding.pry
    files = Dir[@path + "/**/*.mp3"]
    binding.pry
    files.map! {|file| file.gsub(@path + "/","")}
    binding.pry
    files.each {|file| @@files << file} unless @@files.include?(file)
    binding.pry
    @@files
  end

  def import
    binding.pry
    @@files.each {|file| Song.create_from_filename(file)}
    binding.pry
  end

end
