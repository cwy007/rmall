# heroku push error: “Could not detect rake tasks”

I had the same issue and it Turns out that I had installed the latest bundler version (bundler-2.2.1) You can check your bundler version by:

bundle version
Heroku seems to work well with bundler version 2.1.4. (not sure why) In my case I had to downgrade to version 2.1.4 and make it the default.

<https://stackoverflow.com/a/65333470/7166178>

<https://stackoverflow.com/questions/36394297/heroku-push-error-could-not-detect-rake-tasks>
