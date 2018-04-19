class Document
  attr_accessor :title, :content, :owner

  def initialize(title, content, owner)
    @title = title
    @content = content
    @owner = owner
  end

  def import_in_doc(file_name)
    @content = TxtImport.new.import(file_name)
  end
end

class TxtImport
  def import(file_name)
    file = File.open("#{file_name}.txt")
    file.read
  end
end