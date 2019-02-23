module SongsHelper
    def generate_song_lengths
        first_digits = ["2", "3", "4"]
        second_digits = ["0", "1", "2", "3", "4", "5"]
        third_digits = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
        return first_digits.sample + ":" + second_digits.sample + third_digits.sample
    end


end
