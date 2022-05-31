import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
 
val craftingItem = <flatcoloredblocks:coloredcraftingitem>;
 
val stackArray = [
<xtones:agon>, <xtones:azur>, <xtones:bitt>, <xtones:cray>, <xtones:fort>, <xtones:glaxx>, <xtones:iszm>, <xtones:jelt>, <xtones:zoea>, <xtones:zome>,
<xtones:korp>, <xtones:kryp>, <xtones:lair>, <xtones:lave>, <xtones:mint>, <xtones:myst>, <xtones:reds>, <xtones:reed>, <xtones:roen>, <xtones:sols>, 
<xtones:sync>, <xtones:tank>, <xtones:vect>, <xtones:vena>, <xtones:zane>, <xtones:zech>, <xtones:zest>, <xtones:zeta>, <xtones:zion>, <xtones:zkul>, 
<xtones:zone>, <xtones:zorg>, <xtones:ztyl>, <xtones:zyth>] as IItemStack[]; // 34

for stack in stackArray {
	val definition = stack.definition;
	val ingredient = asIIngredient(definition.subItems);
 
       recipes.addShapeless(stack, [ingredient]);
 
	for i in 1 to definition.subItems.length {
		var arrays as IIngredient[][] = [[null, null, null], [null, null, null], [null, null, null]];
		arrays = replace(craftingItem.reuse(), arrays, i / 9);
 
		var x = i;
		if (x > 9) x += 1;
 
              recipes.addShaped(definition.makeStack(i), replace(stack, arrays, x));
       }
}

function asIIngredient(stacks as IItemStack[]) as IIngredient {
       if (stacks.length <= 0 || isNull(stacks)) return null;
 
       var ingredient as IIngredient = stacks[0];
 
       if (stacks.length > 1) {
              for i in 1 to stacks.length {
                     ingredient |= stacks[i];
              }
       }
 
       return ingredient;
}

function replace(ingredient as IIngredient, array as IIngredient[][], index as int) as IIngredient[][] {
	if (isNull(array) || array.length <= 0) return null;
	var x = index;
 
	if (x / 3 >= 3) x %= 9;
 
	if (!isNull(array[x / 3][x % 3])) x += 1;
 
	var ret as IIngredient[][] = array;
	ret[x / 3][x % 3] = ingredient;
 
	return ret;
}