package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		// Global

		animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('face', [10, 11], 0, false, isPlayer);
		animation.add('bf-old', [14, 15], 0, false, isPlayer);
		animation.add('gf', [16], 0, false, isPlayer);

		// Week 1

		animation.add('dad', [12, 13], 0, false, isPlayer);

		// Week 2

		animation.add('monster', [19, 20], 0, false, isPlayer);
		animation.add('spooky', [2, 3], 0, false, isPlayer);

		// Week 3

		animation.add('pico', [4, 5], 0, false, isPlayer);

		// Week 4

		animation.add('bf-car', [0, 1], 0, false, isPlayer);
		animation.add('mom', [6, 7], 0, false, isPlayer);
		animation.add('mom-car', [6, 7], 0, false, isPlayer);
		
		// Week 5

		animation.add('bf-christmas', [0, 1], 0, false, isPlayer);
		animation.add('parents-christmas', [17, 18], 0, false, isPlayer);
		animation.add('gf-christmas', [16], 0, false, isPlayer);
		animation.add('monster-christmas', [19, 20], 0, false, isPlayer);

		// Week 6

		animation.add('bf-pixel', [21, 21], 0, false, isPlayer);
        animation.add('senpai', [22, 22], 0, false, isPlayer);
		animation.add('senpai-angry', [22, 22], 0, false, isPlayer);
		animation.add('spirit', [23, 23], 0, false, isPlayer);
		animation.add('gf-pixel', [16], 0, false, isPlayer);

		// Week 7

		animation.add('tankman', [8, 9], 0, false, isPlayer);

		// Tabi

		animation.add('tabi', [24, 25], 0, false, isPlayer);
		animation.add('burn-tabi', [26, 27], 0, false, isPlayer);

		// All done by my FUCKING HANDS by the way ^^^
		
		animation.play(char);

		switch(char)
		{
			case 'bf-pixel' | 'senpai' | 'senpai-angry' | 'spirit' | 'gf-pixel':
				antialiasing = false;
		}

		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
