# hubot-giphy

A hubot script that searching gif

See [`src/giphy.coffee`](src/giphy.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install git://github.com/umatoma/hubot-giphy.git --save`

Then add **hubot-giphy** to your `external-scripts.json`:

```json
["hubot-giphy"]
```

## Sample Interaction

```
user> hubot gif me cat
hubot> http://media0.giphy.com/media/WJK2SABYwvEvm/giphy.gif

user> hubot gif search cat
hubot> search "cat" gifs
http://media3.giphy.com/media/NGxO35FivioMw/giphy.gif
http://media0.giphy.com/media/xThuWpnG8UOeTmFVmg/giphy.gif
http://media1.giphy.com/media/LBfxm5kmwEyRy/giphy.gif
http://media0.giphy.com/media/RBBWIAfTzuHxS/giphy.gif
http://media3.giphy.com/media/pFkbkttdEBnSo/giphy.gif
```