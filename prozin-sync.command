cd ..

echo ">> Starting to checkout all submodules"
echo ""
git -C assets/script checkout master
git -C assets/script pull

git -C assets/style checkout master
git -C assets/style pull

git -C _data/prozin checkout master
git -C _data/prozin pull

git -C _includes/prozin checkout master
git -C _includes/prozin pull

git -C _sass/libraries/prozin checkout master
git -C _sass/libraries/prozin pull

git -C _layouts/prozin checkout master
git -C _layouts/prozin pull

git -C _tools checkout master
git -C _tools pull

echo ">> Adding now any new files created within the submodules"
echo ""

cd ../assets/script && git add * --all
cd ../assets/style && git add * --all
cd ../_data/prozin && git add * --all
cd ../_includes/prozin && git add * --all
cd ../_sass/libraries/prozin && git add * --all
cd ../_layouts && git add * --all
cd ../_tools && git add * --all

echo ">> Committing whatever has changed in submodules"
echo ""

git -C assets/script commit -a -m "Scripted Prozin update" 
git -C assets/style commit -a -m "Scripted Prozin update" 
git -C _data/prozin commit -a -m "Scripted Prozin update" 
git -C _includes/prozin commit -a -m "Scripted Prozin update" 
git -C _sass/libraries/prozin commit -a -m "Scripted Prozin update" 
git -C _layouts/prozin commit -a -m "Scripted Prozin update" 
git -C _tools commit -a -m "Scripted Prozin update" 

echo ">> Pushing my changes to github"
echo ""

git -C assets/script push
git -C assets/style push
git -C _data/prozin push
git -C _includes/prozin push 
git -C _sass/libraries/prozin push
git -C _layouts/prozin push
git -C _tools push

echo ">> Update the project with the latest changes and push it"
echo ""

git -a -m "Scripted Prozin update" 
git push

