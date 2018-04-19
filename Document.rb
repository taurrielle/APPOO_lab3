require 'pdf-reader'

class Document
  attr_accessor :title, :content, :owner

  def initialize(title, content, owner)
    @title = title
    @content = content
    @owner = owner
  end

  def import_in_doc(file_name, importer)
    @content = importer.import(file_name)
  end
end

class TxtImport
  def import(file_name)
    File.open("#{file_name}.txt").read
  end
end

class PdfImport
  def import(file_name)
    content = ""
    reader = PDF::Reader.new("#{file_name}.pdf")
    reader.pages.each do |page|
      content += page.text
    end
    content
  end
end