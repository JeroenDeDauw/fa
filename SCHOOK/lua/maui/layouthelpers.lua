--
-- This GPG-file contains a set of helper functions for layouts.
--
-- It has the following public interface:

-- function SetPixelScaleFactor(newFactor)
-- function GetPixelScaleFactor()
-- function AtCenterIn(control, parent, vertOffset, horzOffset)
-- function AtHorizontalCenterIn(control, parent, offset)
-- function AtVerticalCenterIn(control, parent, offset)
-- function AtLeftIn(control, parent, offset)
-- function AtRightIn(control, parent, offset)
-- function AtBottomIn(control, parent, offset)
-- function AtTopIn(control, parent, offset)
-- function AtLeftTopIn(control, parent, leftOffset, topOffset)
-- function AtRightTopIn(control, parent, rightOffset, topOffset)
-- function FromLeftIn(control, parent, percent)
-- function FromTopIn(control, parent, percent)
-- function FromRightIn(control, parent, percent)
-- function FromBottomIn(control, parent, percent)
-- function FillParent(control, parent)
-- function FillParentRelativeBorder(control, parent, percent)
-- function FillParentFixedBorder(control, parent, offset)
-- function FillParentPreserveAspectRatio(control, parent)
-- function PercentIn(control, parent, left, top, right, bottom)
-- function OffsetIn(control, parent, left, top, right, bottom)
-- function LeftOf(control, parent, offset)
-- function RightOf(control, parent, offset)
-- function CenteredLeftOf(control, parent, offset)
-- function CenteredRightOf(control, parent, offset)
-- function Above(control, parent, offset)
-- function Below(control, parent, offset)
-- function CenteredAbove(control, parent, offset)
-- function CenteredBelow(control, parent, offset)
-- function AnchorToTop(control, parent, offset)
-- function AnchorToBottom(control, parent, offset)
-- function AnchorToRight(control, parent, offset)
-- function AnchorToLeft(control, parent, offset)
-- function Reset(control)
-- function ResetLeft(control)
-- function ResetTop(control)
-- function ResetRight(control)
-- function ResetBottom(control)
-- function ResetWidth(control)
-- function ResetHeight(control)
-- function RelativeTo(control, parent, fileName, controlName, parentName, topOffset, leftOffset)
-- function LeftRelativeTo(control, parent, fileName, controlName, parentName)
-- function TopRelativeTo(control, parent, fileName, controlName, parentName)
-- function RightRelativeTo(control, parent, fileName, controlName, parentName)
-- function BottomRelativeTo(control, parent, fileName, controlName, parentName)
-- function DimensionsRelativeTo(control, fileName, controlName)
-- function SetDimensions(control, width, height)
-- function SetWidth(control, width)
-- function SetHeight(control, height)
-- function DepthOverParent(control, parent, depth)
-- function DepthUnderParent(control, parent, depth)

function AtLeftBottomIn(control, parent, leftOffset, bottomOffset)
    leftOffset = leftOffset or 0
    bottomOffset = bottomOffset or 0
    control.Left:Set(function() return math.floor(parent.Left() + (leftOffset * pixelScaleFactor)) end)
    control.Bottom:Set(function() return math.floor(parent.Bottom() - (bottomOffset * pixelScaleFactor)) end)
 end


function AtRightBottomIn(control, parent, rightOffset, bottomOffset)
    rightOffset = rightOffset or 0
    bottomOffset = bottomOffset or 0
    control.Right:Set(function() return math.floor(parent.Right() - (rightOffset * pixelScaleFactor)) end)
    control.Bottom:Set(function() return math.floor(parent.Bottom() - (bottomOffset * pixelScaleFactor)) end)
 end

function DepthSetTopOverParent(control, parent, depth)
    depth = depth or 1
    control.Depth:Set(GetFrame(parent:GetRootFrame():GetTargetHead()):GetTopmostDepth() + depth)
end
