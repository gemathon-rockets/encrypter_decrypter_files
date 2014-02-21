require 'spec_helper'

 describe EDfile do

 	after(:each) do 
 		File.delete('spec/docs/foo.txt.enc')
 	end

 	it "should encrypt a file" do 
 		EDfile.encrypt(path: 'spec/docs/foo.txt')
 		File.exist?('spec/docs/foo.txt.enc').should be_true
 	end

 end