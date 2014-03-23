while IFS= read -r -d '' f; do echo "${f}"; done < <(find ./* -type d -print0 )
while IFS= read -r -d '' f; do echo "${f}"; done < <(find ./* -type d -print0 -not -name "@eaDir" )
while IFS= read -r -d '' f; do echo "${f}"; done < <(find ./* -type d -print0 -not -name "\@eaDir" )
while IFS= read -r -d '' f; do echo "${f}"; done < <(find ./* -type d -not -name "@eaDir" -print0 )
ll
mkdir "Grindhouse [2007]"
mv "Grindhouse -*" Grindhouse\ \[2007\]/
ll
mv Grindhouse\ -\ * Grindhouse\ \[2007\]/
sudo mv -v Grindhouse\ -\ * Grindhouse\ \[2007\]/
ll
rm A\ Dangerous\ Method\ \(\[2011\].{jpg,txt}
ll
while IFS= read -r -d '' f; do echo "${f}"; done < <(find ./* -not -perm 755 -not -name "@eaDir" -print0 )
while IFS= read -r -d '' f; do echo "${f}"; done < <(find ./* -not -perm 755 -not -name "@eaDir" -print0 -type d)
while IFS= read -r -d '' f; do echo "${f}"; done < <(find ./* -not -perm 755 -type d -not -name "@eaDir" -print0 )
while IFS= read -r -d '' f; do sudo chmod 775 "${f}"; done < <(find ./* -not -perm 755 -type d -not -name "@eaDir" -print0 )
ll
#while IFS= read -r -d '' f; do sudo chmod 775 "${f}"; done < <(find ./* -not -perm 755 -type d -not -name "@eaDir" -print0 #
ssh root@furfology
ll
chmod 775 Moonrise\ Kingdom\ \[2012\]/
ll
chmod 775 Man\ of\ Steel\ \[2013\]/
ll
while IFS= read -r -d '' f; do chmod 775 "${f}"; done < <(find ./* -not -perm 755 -type d -not -name "@eaDir" -print0 )
while IFS= read -r -d '' f; do chmod 775 "${f}/"; done < <(find ./* -not -perm 755 -type d -not -name "@eaDir" -print0 )
ll
cd War\,\ Inc\ \[2008\]/
ll
while IFS= read -r -d '' f; do chmod 775 "${f}/"; done < <(find ./* -not -perm 775 -type d -not -name "@eaDir" -print0 )
ll
cd ..
while IFS= read -r -d '' f; do chmod 775 "${f}/"; done < <(find ./* -not -perm 775 -type d -not -name "@eaDir" -print0 )
ll
while IFS= read -r -d '' f; do echo "${f}"; done < <(find ./* -not -perm 775 -type f -not -name "@eaDir" -print0 )
while IFS= read -r -d '' f; do echo "${f}"; done < <(find ./* -not -perm 664 -type f -not -name "@eaDir" -print0 )
while IFS= read -r -d '' f; do stat -c %n:%a "${f}"; done < <(find ./* -type f -not -name "@eaDir" -print0 )
while IFS= read -r -d '' f; do stat -c %a:%n "${f}"; done < <(find ./* -type f -not -name "@eaDir" -print0 )
ll
ll -R
ll -R | grep "^[drwx]{10}"
ll -R | grep "^\[drwx\]{10}"
ll -R | grep "^\[drwx\]\{10\}"
ll -R | grep "^\[drwx-\]\{10\}"
ll -R | grep "^\[-drwx\]\{10\}"
ll -R | grep "^\[-drwx\]{10}"
ll -R | grep "^[-drwx]{10}"
ll -R | grep "^[-drwx]\{10\}"
ll -R | grep "^[-drwx]\{10\}" | cut -d ' ' -f 1
ll -R | grep "^[-drwx]\{10\}" | cut -d ' ' -f 1 | sort -u
ll -R | grep "^[-drwx]\{10\}" 
~~~~~~~~~~~~~
ll -R | grep "^[-drwx]\{10\}" 
ll -R | grep "^[drwx]\{10\}"
ll -R | grep -B 10 -A 5 "^[drwx]\{10\}"
ll
mv Grindhouse\ -\ * Grindhouse\ \[2007\]/
ll
cd Grindhouse\ \[2007\]/
ll
ls -R
find . -type f 
find . -type f -exec mv {} . \;
ll
find . -type d -exec rm -rf {} +
ll
mv Grindhouse\ -\ Death\ Proof\ \[2007\].avi Grindhouse:\ Death\ Proof\ \[2007\].avi 
ll
mv Grindhouse\ -\ Planet\ Terror\ \[2007\].avi Grindhouse:\ Planet\ Terror\ \[2007\].avi 
ll
pwd
cd ..
ll
while IFS= read -r -d '' f; do echo "${f}"; done < <(find ./* -maxdepth 1 -type f -print0 )
man rename
while IFS= read -r -d '' f; do n=$(dirname ${f}); echo "${n} :    ${f}"; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do n=$(dirname "${f}"); echo "${n} :    ${f}"; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do n=$(dirname "${f#./}"); echo "${n} :    ${f}"; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do n=$(dirname "${f#./}"); echo "_${n}_ :    ${f}"; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do n=$(dirname "${f#./}"); sed 's/.*\/\(.*\)\.\(en\.\)\([a-zA-Z0-9]\)$/\1/' <<< ${f}; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do n=$(dirname "${f#./}"); sed 's/.*.\([a-zA-Z0-9]\)$/\1/' <<< ${f}; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do n=$(dirname "${f#./}"); sed 's/.*.\([a-zA-Z0-9]\)+$/\1/' <<< ${f}; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do n=$(dirname "${f#./}"); sed 's/.*.\([a-zA-Z0-9]+\)$/\1/' <<< ${f}; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do n=$(dirname "${f#./}"); sed 's/.*.\([a-zA-Z0-9]\+\)$/\1/' <<< ${f}; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do n=$(dirname "${f#./}"); sed 's/.*\..\([a-zA-Z0-9]\+\)$/\1/' <<< ${f}; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do n=$(dirname "${f#./}"); sed 's/.*\.\([a-zA-Z0-9]\+\)$/\1/' <<< ${f}; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do n=$(dirname "${f#./}"); sed 's/.*\.\(en\.\)\([a-zA-Z0-9]\+\)$/\1/' <<< ${f}; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do n=$(dirname "${f#./}"); sed 's/.*\.\(en\.\)*\([a-zA-Z0-9]\+\)$/\1/' <<< ${f}; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do n=$(dirname "${f#./}"); sed 's/.*\.\(en\.\)*\([a-zA-Z0-9]\+\)$/\1\2/' <<< ${f}; done < <(find ./* -maxdepth 1 -type f -print0 )

ll
pwd
ll
while IFS= read -r -d '' f; do n=$(dirname "${f#./}"); perl -e 's/.*\.\(en\.\)*\([a-zA-Z0-9]\+\)$/\1\2/' <<< ${f}; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do n=$(dirname "${f#./}"); perl -e 's/.*\.\(en\.\)*\([a-zA-Z0-9]\+\)$/$1/' <<< ${f}; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do n=$(dirname "${f#./}"); perl -e 's/.*$/cheese/' <<< ${f}; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do n=$(dirname "${f#./}"); perl -e 's/.*$/cheese/' <<< ${f}; echo ${f};  done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do n=$(dirname "${f#./}"); perl -e 's/.*/cheese/' <<< ${f}; echo ${f};  done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do echo "${f} ..." ; n=$(dirname "${f#./}"); perl -e 's/.*/cheese/' <<< ${f}; echo ""; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do echo "${f} ..." ; n=$(dirname "${f#./}"); echo "${f}" | perl -n -e 's/.*/cheese/' ; echo ""; done < <(find ./* -maxdepth 1 -type f -print0 )
q
while IFS= read -r -d '' f; do echo "${f} ..." ; n=$(dirname "${f#./}"); echo "${f}" | perl -e 's/.*/cheese/' ; echo ""; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do echo "${f} ..." ; n=$(dirname "${f#./}"); echo "${f}" | perl -e 's/.*/cheese/p' ; echo ""; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do echo "${f} ..." ; n=$(dirname "${f#./}"); echo "${f}" | perl -e 's/.*/cheese/p;' ; echo ""; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do echo "${f} ..." ; n=$(dirname "${f#./}"); echo "${f}" | perl -e 's/.*/cheese/p' ; echo ""; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do echo "${f} ..." ; n=$(dirname "${f#./}"); echo "${f}" | perl -e 's/.*/cheese/gi' ; echo ""; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do echo "${f} ..." ; n=$(dirname "${f#./}"); echo "${f}" | perl -e `s/.*/cheese/gi' ; echo ""; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do echo "${f} ..." ; n=$(dirname "${f#./}"); echo "${f}" | perl -e "s/.*/cheese/gi" ; echo ""; done < <(find ./* -maxdepth 1 -type f -print0 )
echo "${f}" | perl -e "s/.*/cheese/gi" 
ll
str="./The Diving Bell and the Butterfly [2007]/The Diving Bell and the Butterfly [2007].avi"
echo ${str}
echo "${str}" | perl -n -e ‘s/.*/Cheese/gi’
echo "${str}" | perl -n -e 's/.*/Cheese/gi'
echo "${str}" | perl -n -e `s/.*/Cheese/gi`
echo "${str}" | perl -n -e "s/.*/Cheese/gi"
echo "${str}" | perl -n -e 's/.*/Cheese/gi'
echo "${str}" | perl -n -e 's/Bell/Cheese/gi'
echo "${str}" | perl -n -e 's/Bell/Cheese/g'
ll
echo "${str}" | perl -n -e 's/Bell/Cheese/g'
echo "${str}" | perl -n -e 's/Bell/Cheese/g print;'
echo "${str}" | perl -n -e 's/Bell/Cheese/g; print;'
echo "${str}" | perl -n -e 's/Bell/Cheese/g;'
echo "${str}" | perl -n -e 's/Bell/Cheese/g; print'
echo "${str}" | perl -n -e 's/Bell/Cheese/g print'
echo "${str}" | perl -n -e 's/Bell/Cheese/g; print'4
while IFS= read -r -d '' f; do echo "${f} ..." ; n=$(dirname "${f#./}"); echo "${f}" | perl -e "s/.*/cheese/g; print" ; echo ""; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do echo "${f} ..." ; n=$(dirname "${f#./}"); echo "${f}" | perl -e "s/.*\/(.*)\.[^\.]+$/$1/g; print" ; echo ""; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do echo "${f} ..." ; n=$(dirname "${f#./}"); echo "${f}" | perl -e "s/.*\/(.*)/$1/g; print" ; echo ""; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do echo "${f} ..." ; n=$(dirname "${f#./}"); echo "${f}" | perl -e "s/.*(.*)/$1/g; print" ; echo ""; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do echo "${f} ..." ; n=$(dirname "${f#./}"); echo "${f}" | perl -e "s/.*(.)+$/$1/g; print" ; echo ""; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do echo "${f} ..." ; n=$(dirname "${f#./}"); echo "${f}" | perl -e s/\.\///g; print" ; echo ""; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do echo "${f} ..." ; n=$(dirname "${f#./}"); echo "${f}" | perl -e "s/\.\///g; print" ; echo ""; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do echo "${f} ..." ; n=$(dirname "${f#./}"); echo "${f}" | perl -e 's/\.\///g; print' ; echo ""; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do echo "${f} ..." ; n=$(dirname "${f#./}"); echo "${f}" | perl -e 's/[a-zA-Z0-9]$//g; print' ; echo ""; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do echo "${f} ..." ; n=$(dirname "${f#./}"); echo "${f}" | perl -e 's/[a-zA-Z0-9]*$//g; print' ; echo ""; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do echo "${f} ..." ; n=$(dirname "${f#./}"); echo "${f}" | perl -e 's/[a-zA-Z0-9]*$//gi; print' ; echo ""; done < <(find ./* -maxdepth 1 -type f -print0 )
#while IFS= read -r -d '' f; do echo "${f} ..." ; n=$(dirname "${f#./}"); echo "${f}" | perl -e 's/[a-zA-Z0-9]*$//gi; print' ; echo ""; done < <(find ./* -maxdepth 1 -type f -print0 )
find . -name "*sample*"
find . -name "*sample*" -exec stat -c %s:%n
find . -name "*sample*" -exec stat -c %s:%n +
find . -name "*sample*" -exec stat -c %s:%n {} +
find . -name "*sample*" -delete
ll
pwd
#while IFS= read -r -d '' f; do echo "${f} ..." ; n=$(dirname "${f#./}"); echo "${f}" | perl -e 's/\[a-zA-Z0-9\]*$//gi; print' ; echo ""; done < <(find ./* -maxdepth 1 -type f -print0 )
#while IFS= read -r -d '' f; do echo "${f} ..." ; n=$(dirname "${f#./}"); echo "${f}" | perl -e 's/[a-zA-Z0-9]*$//gi; print' ; echo ""; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do echo "${f} ..." ; n=$(dirname "${f#./}"); echo "${f}" | perl -e 's/[a-zA-Z0-9]*$//gi; print' ; echo ""; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do echo "${f} ..." ; n=$(dirname "${f#./}"); echo "${f}" | perl -e 's/\[a-zA-Z0-9\]*$//gi; print' ; echo ""; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do echo "${f} ..." ; n=$(dirname "${f#./}"); echo "${f}" | perl -e 's/\[a-zA-Z0-9\]*$/test/gi; print' ; echo ""; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do echo "${f} ..." ; n=$(dirname "${f#./}"); echo "${f}" | perl -e 's/[a-zA-Z0-9]*/test/gi; print' ; echo ""; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do echo "${f} ..." ; n=$(dirname "${f#./}"); echo "${f}" | perl -e 's/[a-zA-Z0-9]*/test/g; print' ; echo ""; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do echo "${f} ..." ; n=$(dirname "${f#./}"); echo "${f}" | perl -e 's/ /_/g; print' ; echo ""; done < <(find ./* -maxdepth 1 -type f -print0 )
while IFS= read -r -d '' f; do echo "${f} ..." ; n=$(dirname "${f#./}"); echo "${f}" | perl -e 's/ /_/gi; print' ; echo ""; done < <(find ./* -maxdepth 1 -type f -print0 )
cd ..
ll
cd TV/The\ Walking\ Dead/
ls
cd S04/
ll
ssh pi@rpi
cd /mnt/video/
ll
mv Ink.2009.BRRIP.720P.H264-ZEKTORM/ "Ink [2009]"
ll
chmod a-w Ink\ \[2009\]/
ll
sudo chmod a-w Ink\ \[2009\]/
ll
mv Ink\ \[2009\]/ Movies/
chmod 775 Ink\ \[2009\]/
sudo chmod 775 Ink\ \[2009\]/
ll
ls Ink\ \[2009\]/
cd Ink\ \[2009\]/
ll
vi Torrent\ downloaded\ from\ Demonoid.com.txt 
rm Torrent\ downloaded\ from\ Demonoid.com.txt 
ll
vi READ.hlp 
mv READ.hlp "Ink [2009].nfo"
ll
mv Ink.2009.BRRIP.720P.H264-ZEKTORM.mkv Ink\ \[2009\].mkv
ll
cd ..
ll
mv Ink\ \[2009\]/ Movies/
ll
cd /mnt/video/
ll
tvnamer The\ Walking\ Dead\ S04E14\ HDTV\ x264-2HD\[ettv\]/the.walking.dead.s04e14.hdtv.x264-2hd.mp4 
ll
mv The\ Walking\ Dead\ S04E14\ HDTV\ x264-2HD\[ettv\]/The\ Walking\ Dead\ -\ S04E14\ -\ The\ Grove.mp4 TV/The\ Walking\ Dead/S04/
ll
rm -rf The\ Walking\ Dead\ S04E14\ HDTV\ x264-2HD\[ettv\]/
ll
cd /media/
ls
cd stick/
ll
cd missions-morph-trials/
ll
mv missions-morph-trials/* .
ll
ls missions-morph-trials/
ll missions-morph-trials/
rm -rf missions-morph-trials
ll
cd ..
ll
rm -rf .fseventsd
ll
cd ../
ll
cd stick/
ll
cd data/
l
ll
cd morph/docs/morph-documents/
git status
git log -n 2
cd /data/morph/docs/morph-documents/
ll
git status
git stash
git pull stick 
rm -rf r2-wp6-cmre/figures/slbl-timing-bw.pdf 
git pull stick
ll
git status
pwd
ll
cd r2-wp6-cmre/
ll
./readme.sh -r evince
ll
vi r2-wp6-cmre.tex 
ll
cd /data/morph/docs/morph-documents/
ll
cd r2-wp6-cmre/
ll
./readme.sh
bc 

./readme.sh
umount /media/stick 
ll
cd /data/morph/docs/morph-documents/r2-wp6-cmre/
ll
vi r2-wp6-cmre.tex 
git status
git ad r2-wp6-cmre.tex spell-check.txt
git add r2-wp6-cmre.tex spell-check.txt
git commit -m "Beta draft for moving around."
git push stick 
git pull stick 
git push stick 
ll
git status
rm figures/travel-time-one-way-static.*
git status
git pull stick 
git push stick 
git push all --stick
git status
git remote -v
git push origin 
ll
pwd
cd /mnt/video/
ls
ll
cd ..
mount iv
mount video/
ll
ssh admin@furfology
ssh root@furfology
cd /mnt/
ll
ls -R
mount video/
ll
cd /mnt/video/
ll
cd ..
mount video/
cd video/
ll
tvnamer Community.S05E10.HDTV.x264-LOL.mp4 
ll
mv Community\ -\ S05E10\ -\ Advanced\ Advanced\ Dungeons\ \&\ Dragons.mp4  TV/Community/S05/
gsettings set org.gnome.desktop.default-applications.terminal exec 'terminator'
ll
cd Cosmos.A.Space.Time.Odyssey.S01E02.720p.HDTV.x264-SWOLLED\ \[PublicHD\]/
ll
tvnamer Cosmos.A.Space.Time.Odyssey.S01E02.720p.HDTV.x264-SWOLLED.mkv 
ll
cd ..
ll
mv Cosmos.A.Space.Time.Odyssey.S01E02.720p.HDTV.x264-SWOLLED\ \[PublicHD\]/Cosmos.A.Space.Time.Odyssey.S01E02.720p.HDTV.x264-SWOLLED.mkv TV/Cosmos\:\ A\ Space-Time\ Odyssey/S01/
ll
ls -R Cosmos.A.Space.Time.Odyssey.S01E02.720p.HDTV.x264-SWOLLED\ \[PublicHD\]/
rm -rf Cosmos.A.Space.Time.Odyssey.S01E02.720p.HDTV.x264-SWOLLED\ \[PublicHD\]/
ll
mv 47\ Ronin\ \(2013\)\ \[1080p\]/ 47\ Ronin\ \[2013\]
ll
cd 47\ Ronin\ \[2013\]/
ll
LL
ll
ls
vi WWW.YIFY-TORRENTS.COM.jpg
rm WWW.YIFY-TORRENTS.COM.jpg 
ll
mv 47.Ronin.2013.1080p.BluRay.x264.YIFY.mp4 47\ Ronin\ \[2013\].mp4
ll
cd ..
l
ll
chmod o-w 47\ Ronin\ \[2013\]
sudo chmod o-w 47\ Ronin\ \[2013\]
ll
mv 47\ Ronin\ \[2013\]/ Movies/
ll
ls -R
cd ~/Desktop/
ll
chmod 755 setup-theme.sh 
./setup-theme.sh 
ll
l
ll
gsettings --get --type list --list-type string 
gsettings get --type list --list-type string 
gsettings list-keys
gsettings list-keys | grep "terminal
gsettings list-keys | grep "terminal"
gsettings list-keys * | grep "terminal"
gsettings list-keys /apps/gnome-terminal/global/profile_list
gsettings list-keys apps.onboard.theme-settings
echo $DCONF
uuidgen 
gnome-terminal-v
ssh pi@rpi
cd /mnt/video/
ls
cd TV/Community/
ll
vi Community.nfo 
cat Community.nfo 
pwd
ll
cd ..
ll
find ./* -maxdepth 0 -name "*.nfo"
find ./* -maxdepth 1 -name "*.nfo"
find ./* -maxdepth 0 -type d
#find ./* -maxdepth 0 -type d -exec [[ -
man test
#find ./* -maxdepth 0 -type d -exec [[ -f {}/*nfo ]] && { echo {}; } \;
find ./* -maxdepth 0 -type d -exec [[ -f {}/*nfo ]] && { echo {}; } +
find ./* -maxdepth 0 -type d -exec [[ -f {}/*nfo ]] && { echo {}; } \;
for d in `find ./* -maxdepth 0 -type d`; do echo ${d}; done;
history | grep "find"
while IFS= read -r -d '' f; do echo "${f} ..." ; done < <(find ./* -maxdepth 0 -type d -print0 )
while IFS= read -r -d '' d; do [[ -f "${d}/*nfo" ]] && echo "Y: ${d}" ; done < <(find ./* -maxdepth 0 -type d -print0 )
while IFS= read -r -d '' d; do [[ -f "${d}/${d}.nfo" ]] && echo "Y: ${d}" ; done < <(find ./* -maxdepth 0 -type d -print0 )
while IFS= read -r -d '' d; do [[ -f "${d}/${d}.nfo" ]] && echo "Y: ${d}" || echo "N: ${d}" ; done < <(find ./* -maxdepth 0 -type d -print0 )
#while IFS= read -r -d '' d; do [[ -f "${d}/${d}.nfo" ]] && echo "Y: ${d}" || echo "N: ${d}" ; done < <(find ./* -maxdepth 0 -type d -print0 )
man lb
man ln
##while IFS= read -r -d '' d; do [[ -f "${d}/${d}.nfo" ]] && { echo "Y: ${d}"; ln  || echo "N: ${d}" ; done < <(find ./* -maxdepth 0 -type d -print0 )
man ln
while IFS= read -r -d '' d; do [[ -f "${d}/${d}.nfo" ]] && { echo "Y: ${d}"; ln -T "${d}/${d}.nfo" tvshow.nfo } || echo "N: ${d}" ; done < <(find ./* -maxdepth 0 -type d -print0 )
while IFS= read -r -d '' d; do [[ -f "${d}/${d}.nfo" ]] && { echo "Y: ${d}" ln -T "${d}/${d}.nfo" tvshow.nfo } || echo "N: ${d}" ; done < <(find ./* -maxdepth 0 -type d -print0 )
while IFS= read -r -d '' d; do [[ -f "${d}/${d}.nfo" ]] && { echo "Y: ${d}";  ln -T "${d}/${d}.nfo" tvshow.nfo } || echo "N: ${d}" ; done < <(find ./* -maxdepth 0 -type d -print0 )
man ln
while IFS= read -r -d '' d; do [[ -f "${d}/${d}.nfo" ]] && ln -vT "${d}/${d}.nfo" tvshow.nfo || echo "N: ${d}" ; done < <(find ./* -maxdepth 0 -type d -print0 )
ll
rm tvshow.nfo 
while IFS= read -r -d '' d; do [[ -f "${d}/${d}.nfo" ]] && ln -vT "${d}/${d}.nfo" "${d}/tvshow.nfo" || echo "N: ${d}" ; done < <(find ./* -maxdepth 0 -type d -print0 )
cd The\ Walking\ Dead/
ll
ls -la
ll
vi tvshow.nfo 
cd ..
ll
while IFS= read -r -d '' d; do [[ -f "${d}/${d}.nfo" ]] && ln -vT "${d}/${d}.nfo" "$(basename ${d})/tvshow.nfo" || echo "N: ${d}" ; done < <(find ./* -maxdepth 0 -type d -print0 )
while IFS= read -r -d '' d; do [[ -f "${d}/${d}.nfo" ]] && ln -vT "${d}/${d}.nfo" "$(basename "${d}")/tvshow.nfo" || echo "N: ${d}" ; done < <(find ./* -maxdepth 0 -type d -print0 )
find . -name "tvshow.nfo" 
find . -name "tvshow.nfo" -delete
while IFS= read -r -d '' d; do [[ -f "${d}/${d}.nfo" ]] && ln -vT "${d}/${d}.nfo" "$(basename "${d}")/tvshow.nfo" || echo "N: ${d}" ; done < <(find ./* -maxdepth 0 -type d -print0 )
ll
chgrp -R users Cosmos\:\ A\ Space-Time\ Odyssey Spartacus/
sudo chgrp -R users Cosmos\:\ A\ Space-Time\ Odyssey Spartacus/
ll
cd Spartacus/
ll
cd S01
ll
chown nobody Spartacus\ -\ S01E*
sudo chown nobody Spartacus\ -\ S01E*
ll
sudo su
ll
ssh root@furfology 
ll
chgrp users Spar*
sudo chgrp users Spar*
ssh root@furfology 
ll
ls
cd ..
ll
man find
find . -user nobody
find . -not -user nobody
cd ..
find . -not -user nobody
find . -not -user nobody -not -name "@eaDir"
find . -not -user nobody -not -iname "@eaDir"
find . -not -user nobody -not -iname "@eaDir" -print %g:%f
find . -not -user nobody -not -iname "@eaDir" -print "%g:%f"
find . -not -user nobody -not -iname 
find . -not -user nobody -not -iname "@eaDir" 
man find 
find . -not -user nobody -not -iname "@eaDir" -print "%g:%f:%n\n"
find . -not -user nobody -not -iname "@eaDir" -printf "%g:%f:%n\n"
find . -not -user nobody -not -iname "@eaDir" -printf "%u:%g:%f:%n\n"
#find . -not -user nobody -not -iname "@eaDir" -printf "%u:%g:%f:%n\n" -exec chown -R nobody 
ssh root@furfology
vi /home/furf/.Xdefaults
vi /home/furf/.config/terminator/config 
ll
ls
vi scale.sh 
vi ~/.vimrc
ls
cd ~
ll
cd .vim/
ll
vi .vimrc 
cd..
ll
vi .vimrc 
cd ..
ll
vi .viminfo 
vi /home/furf/.config/terminator/config 
ll
pwd
ll
pwd
cd /data/morph/workspaces/
ll
cd develop/
ll
git status
pwd
ll
vi /home/furf/.config/terminator/config 
man terminator
man terminator_config 
vi /home/furf/.config/terminator/config 
terminator
[wd
pwd
vi /home/furf/.config/terminator/config 
ll
vi /home/furf/.config/terminator/config 
vi .config/terminator/config 
vi
cd .vim/
ll
git status
cd ..
ll
rm -rf .vim
git clone git@bitbucket.org:furf/vim-config.git .vim
git status
cat .ssh/id_rsa.pub 
ll
chmod 755 install.sh
man test
man ln
ll
./install.sh 
ls ../
ls -la ../
./install.sh 
./install.sh 
./install.sh 
./install.sh 
ls
