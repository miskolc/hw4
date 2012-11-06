require 'spec_helper'

describe Movie do
    describe "searching the DB for similar movies" do
        it "should call Movie with director" do
            Movie.should_receive(:where).with(hash_including :director => 'director')
            Movie.similar_directors('director')
        end    
    end      
end