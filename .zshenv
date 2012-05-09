# Customize to your needs...
[[ -s "/Users/pasc/.rvm/scripts/rvm" ]] && source "/Users/pasc/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# brews first
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Lion ships with llvm-gcc-4.2 as default compiler, fix that as it breaks rubies and brews
export CC=/usr/bin/gcc-4.2
export CXX=/usr/bin/g++-4.2
export EDITOR="mvim -f"

export ANT_OPTS="-Xmx1024m -XX:MaxPermSize=256m"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/1.7.0.jdk/Contents/Home"
