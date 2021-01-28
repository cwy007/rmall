# handle an exception

```ruby
begin
    #... process, may raise an exception
rescue =>
    #... error handler
else
    #... executes when no error
ensure
    #... always executed
end

```

```ruby
2.5.3 :001 > values = []
2.5.3 :002 > begin
2.5.3 :003?>     File.readlines('input.txt').each { |line| values <> Float(line) }
2.5.3 :004?> rescue Errno::ENOENT
2.5.3 :005?>     p 'file not found'
2.5.3 :006?> rescue ArgumentError
2.5.3 :007?>     p 'file contains unparsable numbers'
2.5.3 :008?> else
2.5.3 :009?>     print values
2.5.3 :010?> end
[3.0, 4.5, 9.9, 10.0] => nil
```

<https://stackify.com/rescue-exceptions-ruby/>
