# Reproducing odd Nokogiri bug

To reproduce the bug, run

```
bundle install
lock_jars

./test.rb
```


`test.rb` has the minimal ruby sample. Notice that removing the `require 'bson'` switches the behavior from 'reproduced' to 'can not reproduce'. Also note that removing the Jarfile and Jars.lock (note they only contain `de.l3s.boilerpipe:boilerpipe:1.1.0`) also results in a switch to `can not reproduce'
