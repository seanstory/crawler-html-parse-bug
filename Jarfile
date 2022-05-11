# This file is used to control our Jar dependencies and is used with jar-dependencies to vendor
# our java dependencies into vendor/jars (see https://github.com/mkristian/jar-dependencies for details)
#
# If you update this file, please run the following command to update the jars cache:
#    rm -rf Jars.lock vendor/jars && script/togo/development exec script/vendor_jars
#
# When adding a new dependency, please explain what it is and why we're adding it in a comment.
#---------------------------------------------------------------------------------------------------
# Jetty components we depend on
JETTY_VERSION = File.read(File.join(__dir__, '.jetty-version')).strip

# Main Jetty server dependency
jar 'org.eclipse.jetty:jetty-server', JETTY_VERSION

# Web application support (for loading web.xml)
jar 'org.eclipse.jetty:jetty-webapp', JETTY_VERSION

# We need this for org.eclipse.jetty.servlets.QoSFilter
jar 'org.eclipse.jetty:jetty-servlets', JETTY_VERSION

# JMX support for Jetty (we need this for JettyServer JMX stats)
jar 'org.eclipse.jetty:jetty-jmx', JETTY_VERSION

#---------------------------------------------------------------------------------------------------
# Crawler-Commons is a set of reusable Java components that implement functionality common to any web crawler.
# For now we're only interested in using the robots.txt parsing functionality.
jar 'com.github.crawler-commons:crawler-commons', '1.2'

# Apache HTTP client used by the crawler
jar 'org.apache.httpcomponents.client5:httpclient5', '5.1'

#---------------------------------------------------------------------------------------------------
# For Workplace Search thumbnails
jar 'co.elastic.thumbnails4j:thumbnails4j-all', '1.0.0'

#---------------------------------------------------------------------------------------------------
# Text extraction and other utilities
jar 'org.apache.tika:tika-parsers', '1.27'
jar 'org.slf4j:slf4j-nop', '1.7.26'
jar 'org.apache.commons:commons-lang3', '3.10'

#---------------------------------------------------------------------------------------------------
# Indirect dependencies that we needed to upgrade
jar 'com.google.protobuf:protobuf-java', '3.19.4'
jar 'com.github.junrar:junrar', '7.4.1'
jar 'org.jsoup:jsoup', '1.14.3'
jar 'commons-io:commons-io', '2.7'
jar 'org.apache.cxf:cxf-rt-transports-http', '3.3.5'
jar 'com.mchange:c3p0', '0.9.5.4'
jar 'com.drewnoakes:metadata-extractor', '2.13.0'
jar 'com.beust:jcommander', '1.75'
jar 'com.mchange:c3p0', '0.9.5.4'
jar 'xerces:xercesImpl', '2.12.2'

