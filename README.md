# Spellchecker [![CodeFactor](https://www.codefactor.io/repository/github/love-irish/spellchecker/badge/master)](https://www.codefactor.io/repository/github/love-irish/spellchecker/overview/master) [![Build Status](https://travis-ci.com/love-irish/spellchecker.svg?branch=master)](https://travis-ci.com/love-irish/spellchecker)
Short description and motivation.

## Getting started

```ruby
processor = Spellchecker::WordProcessor.new

processor.process "diia"
=> "dia"

processor.process "domanda"
=> "domhanda"

processor.process "thacae"
=> "thaca"
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'spellchecker', github: "love-irish/spellchecker", branch: "master"
```

And then run this in your terminal:
```bash
$ bundle install
```

## Current Limitations

- [ ] Accents blow up the processor when comparing the utf-8 vs. ascii encoding. I just need to refactor this [line](https://github.com/love-irish/spellchecker/blob/master/lib/spellchecker/word_processor.rb#L39).
- [ ] The system should address similar sounding letter combinations: `aoi`, `i`, etc.
- [ ] This spellchecker relies on a large dataset to compare the words to. Our current dataset is small so getting access to a larger, scrubbed dataset would help improve the accuracy.


## Credits

- [Irish word corpus](http://www.lexiconista.com/datasets/sentencebank-ga/)[lib/datasets/sentences.xml](/lib/datasets/sentences.xml) - Huge thanks to Michal for his work on compiling this dataset.
- [Spellchecker in python](http://norvig.com/spell-correct.html) - The post that inspired me to try building this for Irish. 
- [Spellchecker in ruby](https://blog.lojic.com/2008/09/04/how-to-write-a-spelling-corrector-in-ruby/) - Someone converted the post into ruby and I cleaned it up and am rewriting it to work with accents.

## Contributors
[Back to Top](#getting-started)
### People
- [Myk Klemme - @mklemme](https://github.com/mklemme) Creator of Love.irish | Lead developer for this project
### Partners
- [Invisible Hat Ventures - @invisiblehats](https://github.com/invisiblehats) A private startup development agency
- [Love.irish - @love-irish](https://github.com/love-irish) A lifestyle-as-a-service for the Irish language
- [League of Celts - @league-of-celts](https://github.com/league-of-celts) A non-profit focused on promoting Celtic languages

