<h1 align="center">Contributing to Donkstation</h1>

## Where to Place Changes

For any change that is very minor/would be confusing to be put in a different file and/or modifies existing code, simply put a comment noting that it is a Donkstation change. If you are adding a new obj or datum or similar, place it in the appropriate folder under Donkstation.

## Do I PR things to Beestation or Donkstation?

If you encounter a bug and wish to fix it, please first check if the bug exists on beestation. If it does, then please PR the fix to beestation rather then us. Once its merged there, you are free to cherry pick the commit or whatever and PR it here, or just wait for when we pull from bee.
<!--TODO: change wording here, I'm not sure if I like it-->
Similarly, if the change would mess with a lot of features that Beestation is still developing, considering PRing it to Beestation instead.
If you are unsure if you should PR it to Bee or Donk, here is a list of some examples of things to PR to Bee instead of us:

- Something that BOTH servers would enjoy, like a QoL change
- A refactor/overhaul of a non-Donkstation exclusive feature
- Anything that will cause lots of merge conflicts if not PR'd to bee (for example: changing the mining suit's sprite name from "explorer_suit" to "mining_suit") <!--Unsure about this one-->

If you are still unsure, think: _does this only need to be a thing on donkstation, or should it be a thing on both?_

## I had a PR on Bee merged, and I can't wait for a upstream pull, I want it here now!

Well, since we are a downstream, it's very easy to pull commits from them. One way and probably the best way would be to make a remote of the beestation github, and then cherry pick the commit. If you are unsure how to do this, feel free to ask in the discord or take a look at the git docs listed below:

- Cherry picking commits: https://git-scm.com/docs/git-cherry-pick
- Adding a remote: https://git-scm.com/docs/git-remote
