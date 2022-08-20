local _, addon = ...;

if (addon.shared.skinned == true) then return end

addon.shared.skinned = true;

local shared = addon.shared;
local constants = addon.constants;

shared.mainButton:SetBackdrop({
  bgFile = 'Interface/Tooltips/UI-Tooltip-Background',
  edgeFile = 'Interface/Tooltips/UI-Tooltip-Border',
  edgeSize = constants.EDGE_SIZE,
  insets = {
    left = constants.EDGE_INSET,
    right = constants.EDGE_INSET,
    top = constants.EDGE_INSET,
    bottom = constants.EDGE_INSET
  },
});

shared.mainButton:SetBackdropColor(addon.getUnitColor('player'));

shared.logo:SetVertexColor(0, 0, 0, 1);

shared.buttonContainer:SetBackdrop({
  bgFile = 'Interface/Tooltips/UI-Tooltip-Background',
  edgeFile = 'Interface/Tooltips/UI-Tooltip-Border',
  edgeSize = constants.EDGE_SIZE,
  insets = {
    left = constants.EDGE_INSET,
    right = constants.EDGE_INSET,
    top = constants.EDGE_INSET,
    bottom = constants.EDGE_INSET
  },
});

shared.buttonContainer:SetBackdropColor(0, 0, 0, 1);

addon.setEdgeOffset(6);