# Cider-Technology-Projects

Cider-Technology- is a blog website template created using HTML5, CSS3, and JavaScript. 

## Contributor Rules
Are we lacking any of your favorite features, which you believe you can add If yes, We welcome you to aid to this project and make it better. Follow the steps mentioned below:

Create Issues.

Fork this repository.

Clone your forked copy of the project:
git clone https://github.com/Dignity-Academy/Cider-Technology-Projects.git

Navigate to the project directory:
cd Cider-Technology-Projects

Create a new branch:
git checkout -b YourBranchName

Make changes in source code:

Stage your changes and commit:
git add .
git commit -m "<your_commit_message>"

Push your local commits to the remote repo:
git push origin YourBranchName

Create a PR

If someone will contribute to this repository, then those modifications will not be reflected in your local # repository. For correcting that:

Setup a reference(remote) to the original repository to obtain all the changes from the remote:
git remote add upstream https://github.com/Dignity-Academy/Cider-Technology-Projects

Check the remotes for this repository :
git remote -v

Fetching from the remote repository will bring in its branches and their relevant commits:
git fetch upstream

Make sure that you're on your master branch:
git checkout main

Now that we have downloaded the upstream repository, we want to integrate its modifications into our local branch. This will bring that branch into sync with the source, without losing our local modifications :
git merge upstream/main