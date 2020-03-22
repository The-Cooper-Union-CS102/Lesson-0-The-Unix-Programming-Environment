set -v
trap read debug

man man
man bash
man ls
ls
ls .
ls ..
mkdir MyDir
ls
cd MyDir
ls
cd .
ls
cd ..
ls
cd MyDir
touch .
touch NewFile
ls
echo "hello"
cat ../data/sample.txt
cp NewFile CopiedFile
ls
mkdir AnotherDir
ls
cp -r AnotherDir CopiedDir
ls
mv Newfile SameFile
ls
mv AnotherDir ..
ls .
ls ..
chmod +x ../code/bash_0.sh
echo *
ls ../*.md
ls ../*.??
echo "Hello, world" > hello.txt
ls
echo "Hello, you" >> hello.txt
cat hello.txt
ls | sort
cat ../data/words.txt
cat ../data/words.txt | sort | uniq > unique.txt
cat unique.txt
sort < ../data/words.txt | tee sorted.txt | uniq
cat sorted.txt
