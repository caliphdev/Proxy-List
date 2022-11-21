echo "Getting Proxy List..."
d=`curl https://proxy.caliph.my.id/proxy/socks5`
echo $d > socks5.txt
echo "" > README.md
echo "# Socks5 Proxy\n\n" >> README.md
echo "## Proxy List\n" >> README.md
echo "\`\`\`\n$($d)\n\`\`\`" >> README.md

echo "Commit Result to Github"
git config --global user.email "admin@caliph.my.id"
git config --global user.name "caliphdev"
git add -A
git commit -m "Update Proxy List"
git push
