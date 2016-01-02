How does tracking and adding changes make developers' lives easier?

Tracking and adding changes makes developers’ lives easier by giving them the ability to undo changes in case of a mistake and allowing for collaboration with other developers simultaneously.


What is a commit?

A commit is a save point for your work. Committed means that the data is safely stored in your local database.

What are the best practices for commit messages?

>The first line of the commit message should be a short description (50 characters is the soft limit), and should skip the full stop. The body should provide a meaningful commit message, which:
  *uses the imperative, present tense: “change” not “changed” or “changes”.
  *includes motivation for the change, and contrasts its implementation with previous behaviour.

What does the HEAD^ argument mean?

HEAD is the commit you are currently on, HEAD^ is the last commit, HEAD~3, HEAD~4, HEAD~5, are the 3rd 4th and 5th commit from HEAD respectively.

What are the 3 stages of a git change and how do you move a file from one stage to the other?

The three stages are committed, modified, and staged. Committed means that the data is safely stored in your local database. Modified means that you have changed the file but have not committed it to your database yet. Staged means that you have marked a modified file in its current version to go into your next commit snapshot.

To go from Modified to Staged you type git add, then to go from Staged to Committed you type git commit.


Write a handy cheat sheet of the commands you need to commit your changes?

-master
-git pull
-git checkout - b branch_name

Do your work......

-git add
-git commit -m "commit message"
-git push origin branch_name
-Go to GitHub & complete Pull Request
-git checkout master
-git fetch origin master
-git merge origin/master


What is a pull request and how do you create and merge one?

A pull request merges your changes into the master branch. You create a pull request by first going through the git change workflow -

> The typical git change workflow might look something like this:

*Check out the branch
*Write and commit some code
*Push the branch to GitHub
*Issue a pull request to the master branch

> From there, on your GitHub profile you should see a green button called “compare and pull request”, click that button.

>Verify that the base branch and the comparison branch names are correct.

> Fill in the title and description. Both should say what you have changed, with the description going into a bit more detail as needed.

>Then you're ready to create your pull request by clicking the “create pull request” button.

>You've made a pull request, so now you have a
linkable page that allows developers to review code together.

Why are pull requests preferred when working with teams?

It allows team members to review each other’s code before they are merged in the master branch.