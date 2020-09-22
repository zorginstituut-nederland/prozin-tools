cd ..

git -C assets/script checkout master
git -C assets/script pull

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


git add --all assets/script
git -C assets/script commit -a -m "Update Prozin" 
git -C assets/script push

git add --all _data/prozin
git -C _data/prozin commit -a -m "Update Prozin" 
git -C _data/prozin push

git add --all _includes/prozin
git -C _includes/prozin commit -a -m "Update Prozin" 
git -C _includes/prozin push 

git -C assets/style commit -a -m "Update Prozin" 
git -C assets/style push

git add --all _sass/libraries/prozin
git -C _sass/libraries/prozin commit -a -m "Update Prozin" 
git -C _sass/libraries/prozin push

git add --all _layouts/prozin
git -C _layouts/prozin commit -a -m "Update Prozin" 
git -C _layouts/prozin push

git add --all _tools commit
git -C _tools commit -a -m "Update Prozin" 
git -C _tools push

