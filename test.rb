#!/usr/bin/env jruby

require 'bson'
require 'nokogiri'
html = <<-HTML
<body>
  <div>
    <div>
      <ul class='outer'>
        <li class='outer1'>
          <div>
            <ul class='inner1'><li class='inner11'></li></ul>
          </div>
        </li>
        <li class='outer2'>
          <div>
            <ul class='inner2'><li class='inner22'></li></ul>
          </div>
        </li>
      </ul>
      <div>
        Some text 
      </div>
    </div>
    Other text
  </div>
</body>
HTML

doc = Nokogiri::HTML(html)
str =  doc.to_xhtml.gsub(/\s/, '')
if str.end_with?('Othertext</div></body></html>')
    puts "does not reproduce"
elsif str.end_with?('Othertext</body></html>')
    puts "reproduced"
else
    puts "unexpected result"
end
