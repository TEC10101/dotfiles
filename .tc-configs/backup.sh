#!1/bin/bash
ss=0
for file do
	cp -fp -- "$file" "{$file}.BAK" || ss=$?
done
exit $ss
