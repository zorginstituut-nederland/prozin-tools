#!/bin/zsh
echo ""
echo "\e[1m--> Project Sync <--\e[0m"
echo ""

echo ""
echo "> Syncing all the submodules, committing changes and pushing it."
echo ""

cd ..

pathlist="assets/script assets/style _data/prozin _includes/prozin _sass/libraries/prozin _layouts/prozin _tools"
patharray=( ${=pathlist} )

for item in $patharray; do
    print -P ">> Syncing $item:"
    pushd .
    cd $item && git checkout master && git pull && git add * --all && git commit -a -m "Scripted Prozin update" && git push && exit_status=0 || exit_status=1
    if [ "${exit_status}" = "0" ]; then
        print -P "%F{green}$item synced%f\n"
    else
        print -P "%F{red}There was a problem with $item%f\n"
    fi
    popd
done

echo ""
echo "> Update the project with the latest changes and push it."
echo ""

git commit -a -m "Scripted Prozin update" && git push && exit_status=0 || exit_status=1
if [ "${exit_status}" = "0" ]; then
    print -P "%F{green}Project synced%f\n"
else
    print -P "%F{red}There was a problem synching the project.%f\n"
fi