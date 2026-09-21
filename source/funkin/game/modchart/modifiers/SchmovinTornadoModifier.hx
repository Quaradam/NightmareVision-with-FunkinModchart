package funkin.game.modchart.modifiers;

import flixel.FlxSprite;
import funkin.game.modchart.NoteModifier;

class SchmovinTornadoModifier extends NoteModifier
{
    override function getName() return 'schmovinTornado';

    override function getPos(time:Float, visualDiff:Float, timeDiff:Float, beat:Float, pos:Vector3, data:Int, player:Int, obj:FlxSprite)
    {
        final percent = getValue(player);
        if (percent == 0) return pos;

        final columnShift = data * Math.PI / 3;
        final arrowSize = Note.swagWidth;
        final strumNegator = (-Math.cos(-columnShift) + 1) / 2 * arrowSize * 3;

        pos.x += ((-Math.cos((visualDiff / 135) - columnShift) + 1) / 2 * arrowSize * 3 - strumNegator) * percent;
        return pos;
    }
}