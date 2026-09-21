package funkin.game.modchart.modifiers;

import flixel.FlxSprite;
import funkin.game.modchart.NoteModifier;

class SchmovinTipsyModifier extends NoteModifier
{
    override function getName() return 'schmovinTipsy';

    override function getPos(time:Float, visualDiff:Float, timeDiff:Float, beat:Float, pos:Vector3, data:Int, player:Int, obj:FlxSprite)
    {
        final percent = getValue(player);
        if (percent == 0) return pos;

        pos.y += Math.sin(beat / 4 * Math.PI + data) * (Note.swagWidth * 0.5) * percent;
        return pos;
    }
}