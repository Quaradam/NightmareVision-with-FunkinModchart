var modManager;

function onLoad(modMgr, name, prefix, parent) {
    modManager = modMgr;
}

function getName() return 'schmovinDrunk';
function getModType() return NOTE_MOD;
function getOrder() return DEFAULT;
function doesUpdate() return false;

function getPos(time, visualDiff, timeDiff, beat, pos, data, player, obj) {
    var amount = getPercent(player);
    if (amount == 0) return pos;

    var phaseShift = data * 0.5 + (visualDiff / 222) * Math.PI;
    pos.x += Math.sin(beat * 0.25 * Math.PI + phaseShift) * (160 * 0.7 * 0.5) * amount;
    return pos;
}

function getPercent(player) {
    return modManager.getPercent('schmovinDrunk', player) * 0.01;
}