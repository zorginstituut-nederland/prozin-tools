cd ..

git -C _data/prozin checkout master
git -C _data/prozin pull

git -C _includes/prozin checkout master
git -C _includes/prozin pull

git -C assets/style checkout master
git -C assets/style pull

git -C _sass/libraries/prozin checkout master
git -C _sass/libraries/prozin pull

git -C _layouts/prozin checkout master
git -C _layouts/prozin pull