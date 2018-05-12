# Spellchecker [![CodeFactor](https://www.codefactor.io/repository/github/love-irish/spellchecker/badge/master)](https://www.codefactor.io/repository/github/love-irish/spellchecker/overview/master) [![Build Status](https://travis-ci.com/love-irish/spellchecker.svg?branch=master)](https://travis-ci.com/love-irish/spellchecker)
Short description and motivation.

## Current Limitations

- [ ] Accents blow up the processor when comparing the utf-8 vs. ascii encoding. I just need to refactor this [line](https://github.com/love-irish/spellchecker/blob/master/lib/spellchecker/word_processor.rb#L39).
- [ ] The system should address similar sounding letter combinations: `aoi`, `i`, etc.
- [ ] This spellchecker relies on a large dataset to compare the words to. Our current dataset is small so getting access to a larger, scrubbed dataset would help improve the accuracy.

## Usage

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

## Credits

- [Irish word corpus](http://www.lexiconista.com/datasets/sentencebank-ga/)[lib/datasets/sentences.xml](/lib/datasets/sentences.xml) - Huge thanks to Michal for his work on compiling this dataset.
- [Spellchecker in python](http://norvig.com/spell-correct.html) - The post that inspired me to try building this for Irish. 
- [Spellchecker in ruby](https://blog.lojic.com/2008/09/04/how-to-write-a-spelling-corrector-in-ruby/) - Someone converted the post into ruby and I cleaned it up and am rewriting it to work with accents.

Maintained by [@mklemme](https://github.com/mklemme).

## Contributing
Contribution directions go here.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT):

Copyright (c) 2018 Invisible Hat Ventures, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


