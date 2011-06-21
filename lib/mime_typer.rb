require 'webrick/httputils'

class MimeTyper
  DEFAULT_MIME_TYPES_FILE = "/etc/mime.types"
  BUILTIN_MIME_TYPES_FILE = File.expand_path(File.join(File.dirname(__FILE__), "mime.types"))
  @@mime_types_file = File.exist?(DEFAULT_MIME_TYPES_FILE) ? DEFAULT_MIME_TYPES_FILE : BUILTIN_MIME_TYPES_FILE
  
  
  # Allows setting mime.types file to be used
  def self.mime_types_file=(path)
    @@mime_types_file = path
    @@mime_types ||= WEBrick::HTTPUtils.load_mime_types(@@mime_types_file)
  end
  
  # Returns the path to the mime.types file used by MimeTyper
  def self.mime_types_file
    @@mime_types_file
  end

  # Return the MIME type for the given filename
  def self.type_for(filename)
    @@mime_types ||= WEBrick::HTTPUtils.load_mime_types(@@mime_types_file)
    WEBrick::HTTPUtils.mime_type(filename, @@mime_types)
  end
end
