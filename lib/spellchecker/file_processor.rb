require "nokogiri"

# doc = Spellchecker::FileProcessor.run("./lib/datasets/sentences.xml")
# dataset = Spellchecker::FileProcessor.compile_original_sentences(doc)
# Spellchecker::FileProcessor.generate_txt_file(dataset, "sentences")

module Spellchecker::FileProcessor
  def self.run(file)
    puts "processing #{file} ..."

    File.open(file) do |opened_file|
      Nokogiri::XML(opened_file)
    end
  end

  def self.compile_original_sentences(doc)
    puts "finding originals ..."
    doc.xpath("//original").map(&:text)
  end

  def self.generate_txt_file(dataset, filename="dataset")
    File.write("./lib/datasets/#{filename}.txt", dataset.join("\n"))
  end
end
