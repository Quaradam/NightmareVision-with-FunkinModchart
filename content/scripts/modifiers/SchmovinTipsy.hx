var modManager;

function onLoad(modMgr, name, prefix, parent) {
    modManager = modMgr;
}

function getName() return 'schmovinTipsy';
function getModType() return NOTE_MOD;
function getOrder() return DEFAULT;
function doesUpdate() return false;

function getPos(time, visualDiff, timeDiff, beat, pos, data, player, obj) {
    var amount = getPercent(player);
    if (amount == 0) return pos;

    pos.y += Math.sin(beat / 4 * Math.PI + data) * (160 * 0.7 * 0.5) * amount;
    return pos;
}

function getPercent(player) {
    return modManager.getPercent('schmovinTipsy', player) * 0.01;
}