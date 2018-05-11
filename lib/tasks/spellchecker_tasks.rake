desc "Generate new sentences.txt from sentences.xml"
task :generate_new_sentence_file do
  doc = Spellchecker::FileProcessor.run("./lib/sentences.xml")
  dataset = Spellchecker::FileProcessor.compile_original_sentences(doc)
  Spellchecker::FileProcessor.generate_txt_file(dataset, "sentences")
end
