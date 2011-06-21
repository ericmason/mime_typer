require File.expand_path(File.join(File.dirname(__FILE__), 'spec_helper'))

describe MimeTyper do
  describe "default types file" do
    it 'should default to /etc/mime.types' do
      MimeTyper.mime_types_file.should == "/etc/mime.types"
    end
  end
  
  describe "type mappings" do
    it 'should return text/plain for a txt file' do
      MimeTyper.type_for('asdf.txt').should == "text/plain"
    end
  end
end