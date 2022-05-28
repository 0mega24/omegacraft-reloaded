#priority 1

import crafttweaker.item.IItemTransformer;

//vars
val item = <flatcoloredblocks:coloredcraftingitem>;

//Removing basic block crafts
recipes.remove(<xtones:zane>);
recipes.remove(<xtones:glaxx>);
recipes.remove(<xtones:bitt>);
recipes.remove(<xtones:lair>);
recipes.remove(<xtones:kryp>);
recipes.remove(<xtones:myst>);
recipes.remove(<xtones:reds>);
recipes.remove(<xtones:agon>);
recipes.remove(<xtones:azur>);
recipes.remove(<xtones:sync>);
recipes.remove(<xtones:sols>);
recipes.remove(<xtones:roen>);
recipes.remove(<xtones:reed>);
recipes.remove(<xtones:korp>);
recipes.remove(<xtones:jelt>);
recipes.remove(<xtones:cray>);
recipes.remove(<xtones:lave>);
recipes.remove(<xtones:fort>);
recipes.remove(<xtones:iszm>);
recipes.remove(<xtones:mint>);
recipes.remove(<xtones:tank>);
recipes.remove(<xtones:vect>);
recipes.remove(<xtones:vena>);
recipes.remove(<xtones:zech>);
recipes.remove(<xtones:zest>);
recipes.remove(<xtones:zeta>);
recipes.remove(<xtones:zion>);
recipes.remove(<xtones:zkul>);
recipes.remove(<xtones:zoea>);
recipes.remove(<xtones:zome>);
recipes.remove(<xtones:zone>);
recipes.remove(<xtones:zorg>);
recipes.remove(<xtones:ztyl>);
recipes.remove(<xtones:zyth>);
recipes.remove(<xtones:base>);

//Tweaking Xtones Tiles
recipes.addShaped("Xtones Tiles", <xtones:base> * 8, [[<ore:slabStone>, <ore:stone>, <ore:itemClay>], [<ore:stone>, item.reuse(), <ore:stone>], [<ore:itemClay>, <ore:stone>, <ore:slabStone>]]);