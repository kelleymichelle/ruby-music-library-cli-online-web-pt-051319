require 'pry'
class MusicLibraryController

  def initialize(path='./db/mp3s')
    new_object = MusicImporter.new(path)
    new_object.import
  end
  
  def call
    reply = nil
    while reply != "exit"  
      puts "Welcome to your music library!"
      puts "To list all of your songs, enter 'list songs'."
      puts "To list all of the artists in your library, enter 'list artists'."
      puts "To list all of the genres in your library, enter 'list genres'."
      puts "To list all of the songs by a particular artist, enter 'list artist'."
      puts "To list all of the songs of a particular genre, enter 'list genre'."
      puts "To play a song, enter 'play song'."
      puts "To quit, type 'exit'."
      puts "What would you like to do?"

      reply = gets.chomp
    end 
  end  

  def list_songs
    num = 1
    songs = []
    Song.all.each do |song|
      songs << song.name
        songs.uniq.sort.each do |eachsong|
          puts "#{num}. #{eachsong}"
        num += 1
    
      end
    end  
  end  



end  