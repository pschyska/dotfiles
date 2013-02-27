# Customize to your needs...
[[ -s "/Users/pasc/.rvm/scripts/rvm" ]] && source "/Users/pasc/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# brews first
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# sencha
#export PATH=$PATH:/Applications/SenchaSDKTools-2.0.0-beta3
#export SENCHA_SDK_TOOLS_2_0_0_BETA3=/Applications/SenchaSDKTools-2.0.0-beta3
export PATH=$PATH:/Users/pasc/bin/Sencha/Cmd/3.0.2.288

# go
export GOPATH=~/projects/go
export PATH=$PATH:$GOPATH/bin:$HOME/bin

# android
export PATH=$PATH:/Applications/adt-bundle-mac-x86_64/sdk/tools
export PATH=$PATH:/Applications/adt-bundle-mac-x86_64/sdk/platform-tools

# Lion ships with llvm-gcc-4.2 as default compiler, fix that as it breaks rubies and brews
#export CC=/usr/bin/gcc-4.2
#export CXX=/usr/bin/g++-4.2

export EDITOR="mvim -f"

export ANT_OPTS="-Xmx1024m -XX:MaxPermSize=256m"

export JAVA_HOME="$(/usr/libexec/java_home)"
#export JAVA_HOME="/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home"

export CATALINA_OPTS="-Dshutdown.port=8005 -Dhttp.port=8080\
                -Dhttp.address=127.0.0.1 -Dhttp.redirectPort=8443\
                -Dajp.port=8009 -Dajp.redirectPort=8443\
                -Dajp.address=127.0.0.1 -DjvmRoute=local\
                -Daccess.log.dir=/tmp/"

# Amazon ec2
export EC2_PRIVATE_KEY="$(/bin/ls $HOME/.ec2/pk-*.pem)"
export EC2_CERT="$(/bin/ls $HOME/.ec2/cert-*.pem)"
export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.5.2.5/jars"
export EC2_AMITOOL_HOME="/usr/local/Cellar/ec2-ami-tools/1.3-45758/jars"
export AWS_RDS_HOME="/usr/local/Cellar/rds-command-line-tools/1.6.001/jars"

# curl CA bundle
export CURL_CA_BUNDLE="/usr/share/curl/curl-ca-bundle.crt"

# Heroku toolbelt
export PATH=/usr/local/heroku/bin:$PATH

# https://gist.github.com/2600122
export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000

export MAVEN_OPTS="-client -Xmx1024m -XX:MaxPermSize=256m"
