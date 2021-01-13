## Usage

To use this small lib, you first need to initiate a Parser which will parse the source file 
and a formatter used to write data in the expected format.

Once done, you can initiate a Converter object by giving your Parser and Formatter.
Then you can call the method `Converter::convertFile(sourceFilePath, destFilePath)`

Here is an example : 
```ruby
require_relative 'lib/jsonToCsv/json_parser'
require_relative 'lib/jsonToCsv/csv_formatter'
require_relative 'lib/jsonToCsv/converter'

converter = Converter.new(JsonParser.new(), CsvFormatter.new())
converter.convertFile('./users.json', './users.csv')

```