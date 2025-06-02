# specific for videos

~~~
find . -type f | perl -ne 'if (m/\.(\w+)$/) {print "$1\n"}' | sort -n | uniq -c
~~~
