# Welcome to GitScript!
A tiny script to make the simple job of staging, commiting and pushing the code to github yet simpler.

### To use the script:
1. Download and copy the files to the root of your project
> if you're more of a 	`git clone www.github.com/whatever/whatever.git` person, make sure you **do not** do that in your project root directory.
2. Open `autoresponder.sh` and make the following changes
```
set username "USERNAME_HERE"    # Your github username here
set password "PASSWORD_HERE"    # Your github password or auth token here
```

4. Run the following and insert the commit message when prompted
```
./pushcode.sh
```

Alternatively, you can make it work in a single line, if you're in a hurry
```
./gitscript.sh "your commit message here"
```
5. Add the files to `.gitignore` so that they do not spam your awesome project repository. (optional)

And you're done! Congratulations, you can now save around 1 minute per day and use it to watch **more** cat memes.
> **Caution:** You should add atleast `gitscript.sh` to your `.gitignore` file, else github will detect presence of your auth token and revoke it immediately. Which results in the code to fail without giving proper error message (yeah, I'm that noob, couldn't code a proper error case handling) and then you'll blame me for shi\*\*y code. (TBH I know it is, but not for that reason at least).

PS: Please redirect all your verbal abuses [here](mailto:krishna.bose02@gmail.com).