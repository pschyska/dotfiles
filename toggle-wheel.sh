#!/bin/sh
on()
{
  xmodmap -e 'pointer = 1 2 3 6 7 4 5 8 9 10'
}

off()
{
  xmodmap -e 'pointer = default'
}

xmodmap -pp | grep '4.*6' > /dev/null
if [ $? == 0 ]; then
  off
else
  on
fi
