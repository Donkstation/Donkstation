<h1 align="center">Contributing to Donkstation</h1>

## Where to Place Changes

For any change that is very minor/would be confusing to be put in a different file and/or modifies existing code, simply put a comment noting that it is a donkstation change. If you are adding a new obj or datum or similar, place it in the appropiate folder under donkstation.

## Do I PR things to Beestation or Donkstation?

If you encounter a bug and wish to fix it, please first check if the bug exists on beestation. If it does, then please PR the fix to beestation rather then us. Once its merged there, you are free to cherry pick the commit or whatever and PR it here, or just wait for when we pull from bee.
<!--TODO: change wording here, I'm not sure if I like it-->
Similary, if the change would mess with a lot of features that beestation is still developing, considering PRing it to beestation instead.
If you are unsure if you should PR it to Bee or donk, here is a list of some examples of things to PR to bee instead of us:

- Something that BOTH servers would enjoy <!--Maybe change this to QoL?-->
- A refactor/overhaul of a non-donkstation exclusive feature
- Anything that will cause lots of merge conflicts if not PR'd to bee (for example: changing the mining suit's sprite name from "explorer_suit" to "mining_suit") <!--Unsure about this one-->

If you are still unsure, think: _does this only need to be a thing on donkstation, or should it be a thing on both?_
