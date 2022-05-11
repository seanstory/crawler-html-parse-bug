#!/usr/bin/env jruby

begin
  require 'bson'
rescue => e
  # no op
end  
require 'nokogiri'
html = <<-HTML
<body>
  <div data-elastic-exclude>
    <div>
      <ul class='outer'>
        <li class='outer1'> Why
          <div>
            <ul class='inner1'><li class='inner11'></li></ul>
          </div>
        </li>
        <li class='outer2'> Two?
          <div>
            <ul class='inner2'><li class='inner22'></li></ul>
          </div>
        </li>
      </ul>
      TROUBLE STARTS
      <div data-elastic-include>
        !! THIS SHOULD BE INCLUDED !!
      </div> <!-- end elastic include -->
    </div>
    !! THIS SHOULD BE EXCLUDED
  </div>
</body>
HTML

doc = Nokogiri::HTML(html)
str =  doc.to_xhtml.gsub(/\s/, '')
if str.end_with?('</div></body></html>')
    puts "does not reproduce"
elsif str.end_with?('EXCLUDED</body></html>')
    puts "reproduced"
else
    puts "unexpected result"
end
