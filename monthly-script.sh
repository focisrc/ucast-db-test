git clone https://github.com/phanicode/ucast-db-test.git
cd ucast-db-test
git pull origin
git checkout archive
git checkout main -- .
git commit -m "copy files from main to archive"
Y=$(date -d "12 hours ago" '+%Y')
m=$(date -d "12 hours ago" '+%m')
d=$(date -d "12 hours ago" '+%d')
echo $Y $m $d
echo ALMA/$Y-$m
git rm --ignore-unmatch ALMA/$Y-$m* 
git rm --ignore-unmatch APEX/$Y-$m*
git rm --ignore-unmatch GLT/$Y-$m*
git rm --ignore-unmatch JCMT/$Y-$m*
git rm --ignore-unmatch KP/$Y-$m*
git rm --ignore-unmatch LMT/$Y-$m*
git rm --ignore-unmatch PDB/$Y-$m*
git rm --ignore-unmatch PV/$Y-$m*
git rm --ignore-unmatch SMA/$Y-$m*
git rm --ignore-unmatch SMT/$Y-$m*
git rm --ignore-unmatch SPT/$Y-$m*
git add .
git commit --allow-empty -m "removed last month"  
git push --all --force --set-upstream origin
# cd ..
# rm -rf ucast-db-tests
