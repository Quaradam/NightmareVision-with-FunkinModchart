package funkin.game.modchart.modifiers;

import flixel.FlxG;
import flixel.math.FlxMath;
import flixel.FlxSprite;
import funkin.game.modchart.NoteModifier;
import funkin.game.modchart.Modifier;
import funkin.game.modchart.ModManager;
import funkin.game.modchart.ModchartNote;

class SchmovinDrunkModifier extends NoteModifier
{
    static inline var TH_DIV:Float = 1 / 222;

    override function getName() return 'schmovinDrunk';

    override function getPos(time:Float, visualDiff:Float, timeDiff:Float, beat:Float, pos:Vector3, data:Int, player:Int, obj:FlxSprite)
    {
        final percent = getValue(player);
        if (percent == 0) return pos;

        final phaseShift = data * 0.5 + (visualDiff * TH_DIV) * Math.PI;
        pos.x += Math.sin(beat * 0.25 * Math.PI + phaseShift) * (Note.swagWidth * 0.5) * percent;
        return pos;
    }
}