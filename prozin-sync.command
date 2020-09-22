cd ..

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

git add assets/script/* --all
git add assets/style/* --all
git add _data/prozin/* --all
git add _includes/prozin/* --all
git add _sass/libraries/prozin/* --all
git add _layouts/* --all
git add _tools/* --all

git -C assets/script commit -a -m "Scripted Prozin update" 
git -C assets/style commit -a -m "Scripted Prozin update" 
git -C _data/prozin commit -a -m "Scripted Prozin update" 
git -C _includes/prozin commit -a -m "Scripted Prozin update" 
git -C _sass/libraries/prozin commit -a -m "Scripted Prozin update" 
git -C _layouts/prozin commit -a -m "Scripted Prozin update" 
git -C _tools commit -a -m "Scripted Prozin update" 

git -C assets/script push
git -C assets/style push
git -C _data/prozin push
git -C _includes/prozin push 
git -C _sass/libraries/prozin push
git -C _layouts/prozin push
git -C _tools push

