# Customize to your needs...
[[ -s "/Users/pasc/.rvm/scripts/rvm" ]] && source "/Users/pasc/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# brews first
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# sencha
export PATH=$PATH:/Applications/SenchaSDKTools-2.0.0-beta3
export SENCHA_SDK_TOOLS_2_0_0_BETA3=/Applications/SenchaSDKTools-2.0.0-beta3

# go
export GOPATH=~/projects/go
export PATH=$PATH:$GOPATH/bin:$HOME/bin

# Lion ships with llvm-gcc-4.2 as default compiler, fix that as it breaks rubies and brews
#export CC=/usr/bin/gcc-4.2
#export CXX=/usr/bin/g++-4.2

export EDITOR="mvim -f"

export ANT_OPTS="-Xmx1024m -XX:MaxPermSize=256m"

export JAVA_HOME="$(/usr/libexec/java_home)"

# Amazon ec2
export EC2_PRIVATE_KEY="$(/bin/ls $HOME/.ec2/pk-*.pem)"
export EC2_CERT="$(/bin/ls $HOME/.ec2/cert-*.pem)"
export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.5.2.5/jars"
export EC2_AMITOOL_HOME="/usr/local/Cellar/ec2-ami-tools/1.3-45758/jars"
export AWS_RDS_HOME="/usr/local/Cellar/rds-command-line-tools/1.6.001/jars"

# curl CA bundle
export CURL_CA_BUNDLE="/usr/share/curl/curl-ca-bundle.crt"
