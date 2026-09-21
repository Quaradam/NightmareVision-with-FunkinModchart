var modManager;

function onLoad(modMgr, name, prefix, parent) {
    modManager = modMgr;
}

function getName() return 'schmovinTornado';
function getModType() return NOTE_MOD;
function getOrder() return DEFAULT;
function doesUpdate() return false;

function getPos(time, visualDiff, timeDiff, beat, pos, data, player, obj) {
    var amount = getPercent(player);
    if (amount == 0) return pos;

    var columnShift = data * Math.PI / 3;
    var strumNegator = (-Math.cos(-columnShift) + 1) / 2 * (160 * 0.7) * 3;
    pos.x += ((-Math.cos((visualDiff / 135) - columnShift) + 1) / 2 * (160 * 0.7) * 3 - strumNegator) * amount;
    return pos;
}

function getPercent(player) {
    return modManager.getPercent('schmovinTornado', player) * 0.01;
}