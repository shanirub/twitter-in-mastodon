# generating a list of followers of followers

rm full-list.txt
touch full-list.txt

for i in `cat ichsteigeaus-followers-short.txt`
do
    /home/srub/.local/share/virtualenvs/twint-pjpl5ezl/bin/twint -u $i --followers -o temp-list.txt
    cat temp-list.txt >> full-list.txt
done
